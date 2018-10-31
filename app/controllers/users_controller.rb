class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @attendance = Attendance.new
    @attendance.user = @user
    @attendance.build_production
  end
end