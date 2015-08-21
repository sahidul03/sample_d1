class UsersController < ApplicationController
  before_action :authenticate_user!


  def index
     # raise DateTime.now.new_offset(0).inspect
  end


end
