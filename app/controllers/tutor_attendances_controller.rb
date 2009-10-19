class TutorAttendancesController < ApplicationController
  # GET /tutor_attendances
  # GET /tutor_attendances.xml
  def index
    @search = TutorAttendance.clean_search params[:search]
    @tutor_attendances = @search.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tutor_attendances }
    end
  end

  # GET /tutor_attendances/1
  # GET /tutor_attendances/1.xml
  def show
    @tutor_attendance = TutorAttendance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tutor_attendance }
    end
  end

  # GET /tutor_attendances/new
  # GET /tutor_attendances/new.xml
  def new
    @tutor_attendance = TutorAttendance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tutor_attendance }
    end
  end

  # GET /tutor_attendances/1/edit
  def edit
    @tutor_attendance = TutorAttendance.find(params[:id])
  end

  # POST /tutor_attendances
  # POST /tutor_attendances.xml
  def create
    @tutor_attendance = TutorAttendance.new(params[:tutor_attendance])

    respond_to do |format|
      if @tutor_attendance.save
        flash[:notice] = 'TutorAttendance was successfully created.'
        format.html { redirect_to(@tutor_attendance) }
        format.xml  { render :xml => @tutor_attendance, :status => :created, :location => @tutor_attendance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tutor_attendance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tutor_attendances/1
  # PUT /tutor_attendances/1.xml
  def update
    @tutor_attendance = TutorAttendance.find(params[:id])

    respond_to do |format|
      if @tutor_attendance.update_attributes(params[:tutor_attendance])
        flash[:notice] = 'TutorAttendance was successfully updated.'
        format.html { redirect_to(@tutor_attendance) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tutor_attendance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tutor_attendances/1
  # DELETE /tutor_attendances/1.xml
  def destroy
    @tutor_attendance = TutorAttendance.find(params[:id])
    @tutor_attendance.destroy

    respond_to do |format|
      format.html { redirect_to(tutor_attendances_url) }
      format.xml  { head :ok }
    end
  end
end
