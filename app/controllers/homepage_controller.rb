class HomepageController < ApplicationController

  before_action :authenticate_user!

  def show
    @postcards = Postcard.where(user_id: @current_user.id).all
    #@postcards = @current_user.postcards

  end
end
