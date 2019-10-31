class MessagesController < ApplicationController
before_action :require_user


  def create
    message = current_user.messages.build(messages_params)
    if message.save
      # redirect_to root_path
      ActionCable.server.broadcast "chatroom_channel",
                                    messagedata: displaymessage(message)
    end
  end


private

def messages_params
  params.require(:message).permit(:content)
end

def displaymessage(message)
    render(partial: 'message', locals: {message: message})
end
end
