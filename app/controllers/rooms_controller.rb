class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @room = Room.new
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)
    render 'index'
  end

  def show
    @single_room = Room.find(params[:id])
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)

    @message = Message.new 
    @messages = @single_room.messages.order(created_at: :asc)
    @users = User.all_except(current_user)
    render 'index'
  end

  def create
    @room = Room.create(room_params)
  end
end

private

def room_params
  params.require(:room).permit(:name)
end