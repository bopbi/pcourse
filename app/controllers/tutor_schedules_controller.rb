class TutorSchedulesController < ApplicationController
  load_and_authorize_resource
  # GET /tutor_schedules
  # GET /tutor_schedules.xml
  def index
    @search = TutorSchedule.search params[:search]
    @tutor_schedules = @search.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tutor_schedules }
    end
  end

  # GET /tutor_schedules/1
  # GET /tutor_schedules/1.xml
  def show
    @tutor_schedule = TutorSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tutor_schedule }
    end
  end

  # GET /tutor_schedules/new
  # GET /tutor_schedules/new.xml
  def new
    @tutor_schedule = TutorSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tutor_schedule }
    end
  end

  # GET /tutor_schedules/1/edit
  def edit
    @tutor_schedule = TutorSchedule.find(params[:id])
  end

  # POST /tutor_schedules
  # POST /tutor_schedules.xml
  def create
    @tutor_schedule = TutorSchedule.new(params[:tutor_schedule])

    respond_to do |format|
      if @tutor_schedule.save
        flash[:notice] = 'TutorSchedule was successfully created.'
        format.html { redirect_to(@tutor_schedule) }
        format.xml  { render :xml => @tutor_schedule, :status => :created, :location => @tutor_schedule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tutor_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tutor_schedules/1
  # PUT /tutor_schedules/1.xml
  def update
    @tutor_schedule = TutorSchedule.find(params[:id])

    respond_to do |format|
      if @tutor_schedule.update_attributes(params[:tutor_schedule])
        flash[:notice] = 'TutorSchedule was successfully updated.'
        format.html { redirect_to(@tutor_schedule) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tutor_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tutor_schedules/1
  # DELETE /tutor_schedules/1.xml
  def destroy
    @tutor_schedule = TutorSchedule.find(params[:id])
    @tutor_schedule.destroy

    respond_to do |format|
      format.html { redirect_to(tutor_schedules_url) }
      format.xml  { head :ok }
    end
  end
  
  def today
    
  end
end
