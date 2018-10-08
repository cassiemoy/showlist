class AttendancesController < ApplicationController
  
  def create
    attendance = Attendance.new
    attendance.build_production
    attendance.assign_attributes(attendance_params)
    attendance.production.build_show(title: attendance.production.title)
    attendance.save!

    redirect_to attendance.user
  end

  private

  def attendance_params
    params.require(:attendance)
          .permit(:user_id, :date, :notes, production_attributes: [:title])
  end
end
