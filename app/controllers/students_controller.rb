class StudentsController < ApplicationController
  load_and_authorize_resource
  # GET /students
  # GET /students.xml
  def index
    @active_student = Student.status_equals(true).count
    
    @student_6_count = Student.status_equals(true).grade_equals("6").count
    @student_5_count = Student.status_equals(true).grade_equals("5").count
    @student_4_count = Student.status_equals(true).grade_equals("4").count
    @student_3_count = Student.status_equals(true).grade_equals("3").count
    @student_2_count = Student.status_equals(true).grade_equals("2").count
    @student_1_count = Student.status_equals(true).grade_equals("1").count
    
    @search = Student.clean_search params[:search]
    @students = @search.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @students }
    end
  end

  # GET /students/1
  # GET /students/1.xml
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/new
  # GET /students/new.xml
  def new
    @student = Student.new
    @grade = { '6' => '6', '5' => '5', '4' => '4', '3' => '3', '2' => '2', '1' => '1' }

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
    @grade = { '6' => '6', '5' => '5', '4' => '4', '3' => '3', '2' => '2', '1' => '1' }
  end

  # POST /students
  # POST /students.xml
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        flash[:notice] = 'Student was successfully created.'
        format.html { redirect_to(@student) }
        format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.xml
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        flash[:notice] = 'Student was successfully updated.'
        format.html { redirect_to(@student) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.xml
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to(students_url) }
      format.xml  { head :ok }
    end
  end

end
