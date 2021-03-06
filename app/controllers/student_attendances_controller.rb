class StudentAttendancesController < ApplicationController
  load_and_authorize_resource
  # GET /student_attendances
  # GET /student_attendances.xml
  def index
    @search = StudentAttendance.clean_search params[:search]
    @student_attendances = @search.all.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_attendances }
    end
  end

  # GET /student_attendances/1
  # GET /student_attendances/1.xml
  def show
    @student_attendance = StudentAttendance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_attendance }
    end
  end

  # GET /student_attendances/new
  # GET /student_attendances/new.xml
  def new
    @student_attendance = StudentAttendance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_attendance }
    end
  end

  # GET /student_attendances/1/edit
  def edit
    @student_attendance = StudentAttendance.find(params[:id])
  end

  # POST /student_attendances
  # POST /student_attendances.xml
  def create
    @student_attendance = StudentAttendance.new(params[:student_attendance])

    respond_to do |format|
      if @student_attendance.save
        flash[:notice] = 'StudentAttendance was successfully created.'
        format.html { redirect_to(@student_attendance) }
        format.xml  { render :xml => @student_attendance, :status => :created, :location => @student_attendance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_attendance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_attendances/1
  # PUT /student_attendances/1.xml
  def update
    @student_attendance = StudentAttendance.find(params[:id])

    respond_to do |format|
      if @student_attendance.update_attributes(params[:student_attendance])
        flash[:notice] = 'StudentAttendance was successfully updated.'
        format.html { redirect_to(@student_attendance) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_attendance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_attendances/1
  # DELETE /student_attendances/1.xml
  def destroy
    @student_attendance = StudentAttendance.find(params[:id])
    @student_attendance.destroy

    respond_to do |format|
      format.html { redirect_to(student_attendances_url) }
      format.xml  { head :ok }
    end
  end
end
