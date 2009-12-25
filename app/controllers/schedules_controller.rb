class SchedulesController < ApplicationController
  def index
    @sunday = ClassSession.day_like('0')
    @monday = ClassSession.day_like('1')
    @tuesday = ClassSession.day_like('2')
    @wednesday = ClassSession.day_like('3')
    @thursday = ClassSession.day_like('4')
    @friday = ClassSession.day_like('5')
    @saturday = ClassSession.day_like('6')
  end
  
  def details
    util = Utility.new
    @day = util.day_hash
    @time = util.time_hash.invert
    
    id = params[:id]
    @class_session = ClassSession.find(id)
    @student_class = StudentSchedule.class_session_id_equals(id.to_s)
    @tutor_class = TutorSchedule.class_session_id_equals(id.to_s)
    respond_to do |format|
      format.js
      format.html # details.html.erb
    end
  end

end
