class DirectMessagesController < ApplicationController

  def new
    @user = current_user

    @direct_message = @user.direct_messages.new
    respond_to do |format|
      format.html
    end



  end
  def create
    new_direct_message = current_user.direct_messages.new(direct_message_params)
    new_direct_message.save
    redirect_to current_user
  end

  def index
    @direct_messages = DirectMessage.all
  end

  def show
    @direct_message = DirectMessage.find(params[:id])
  end




  private

  def direct_message_params
    params.require(:direct_message).permit(:title, :body)
  end

end
