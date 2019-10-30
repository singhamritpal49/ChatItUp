class ChatroomController < ApplicationController
  before_action :require_user


def index
@messages = Message.all
@message = Message.new
@users = User.all
end



end
