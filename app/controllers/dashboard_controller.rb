class DashboardController < ApplicationController
  def index
    @active_student = Student.status_equals(true).count
  end

end
