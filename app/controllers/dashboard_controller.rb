class DashboardController < ApplicationController
  def index
    @today_students = StudentAttendance.student_attendance_date_equals(Date.today).paginate :page => params[:page], :per_page => 10, :order => 'id DESC'
    @today_tutors = TutorAttendance.tutor_attendance_date_equals(Date.today).paginate :page => params[:page], :per_page => 10, :order => 'id DESC'
  end

end
