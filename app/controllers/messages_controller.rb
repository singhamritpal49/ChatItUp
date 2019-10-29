class MessagesController < ApplicationController
before_action :require_user


  def create
    message = current_user.messages.build(messages_params)
    if message.save
      redirect_to root_path
    end
  end


private
def messages_params
  params.require(:message).permit(:content)
end


end
