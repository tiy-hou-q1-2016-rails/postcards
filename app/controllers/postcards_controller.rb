class PostcardsController < ApplicationController

  before_action :authenticate_user!

  def new
    @postcard = Postcard.new
  end

  def create
    @postcard = Postcard.new params.require(:postcard).permit(:photo, :email_recipient, :message, :location)
    @postcard.user = @current_user
    if @postcard.save
      PostcardsMailer.new_card(@postcard).deliver_now
      redirect_to root_path, notice: 'NOICE'
    else
      render :new
    end
  end

  def show
    @postcard = Postcard.find_by id: params[:id]
  end
end
