class StudentSchedulesController < ApplicationController
  load_and_authorize_resource
  # GET /student_schedules
  # GET /student_schedules.xml
  def index
    @search = StudentSchedule.search params[:search]
    @student_schedules = @search.all.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_schedules }
    end
  end

  # GET /student_schedules/1
  # GET /student_schedules/1.xml
  def show
    @student_schedule = StudentSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_schedule }
    end
  end

  # GET /student_schedules/new
  # GET /student_schedules/new.xml
  def new
    @student_schedule = StudentSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_schedule }
    end
  end

  # GET /student_schedules/1/edit
  def edit
    @student_schedule = StudentSchedule.find(params[:id])
  end

  # POST /student_schedules
  # POST /student_schedules.xml
  def create
    @student_schedule = StudentSchedule.new(params[:student_schedule])

    respond_to do |format|
      if @student_schedule.save
        flash[:notice] = 'StudentSchedule was successfully created.'
        format.html { redirect_to(@student_schedule) }
        format.xml  { render :xml => @student_schedule, :status => :created, :location => @student_schedule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_schedules/1
  # PUT /student_schedules/1.xml
  def update
    @student_schedule = StudentSchedule.find(params[:id])

    respond_to do |format|
      if @student_schedule.update_attributes(params[:student_schedule])
        flash[:notice] = 'StudentSchedule was successfully updated.'
        format.html { redirect_to(@student_schedule) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_schedules/1
  # DELETE /student_schedules/1.xml
  def destroy
    @student_schedule = StudentSchedule.find(params[:id])
    @student_schedule.destroy

    respond_to do |format|
      format.html { redirect_to(student_schedules_url) }
      format.xml  { head :ok }
    end
  end
end
