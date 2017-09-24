class Api::V2::RoomsController < Api::V2::ApiController

  before_action :authenticate_user!
  before_action :set_room, only: %i(show update destroy)

  def index
    @rooms = current_user.rooms
    render json: @rooms.sort{ |room| room.created_at }
  end

  def show
    render json: @room
  end

  def create
    @room = Room.new(room_params)
    @room.users << current_user
    if @room.save
      render json: @room, status: :created, location: api_v2_room_url(@room)
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  def update
    if @room.update(room_params)
      render json: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @room.destroy
  end

  private

    def set_room
      @room = current_user.rooms.where(id:params[:id]).first
    end

    def room_params
      params.require(:room).permit(:id, :title)
    end

end