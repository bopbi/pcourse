class StudentGradeController < ApplicationController

  def index
    @grade = params[:id]
    @students = Student.grade_like(@grade).paginate :page => params[:page], :per_page => 10, :order => 'id DESC'
  end

end
