class DashboardController < ApplicationController
  def index
    @active_student = Student.status_equals(true).count
    
    @today_students = StudentAttendance.student_attendance_date_equals(Date.today).paginate :page => params[:page], :per_page => 10, :order => 'id DESC'
    @today_tutors = TutorAttendance.attendance_day_equals(Date.today).paginate :page => params[:page], :per_page => 10, :order => 'id DESC'
  end

end
