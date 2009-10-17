class ClassSessionsController < ApplicationController
  # GET /class_sessions
  # GET /class_sessions.xml
  def index
    @class_sessions = ClassSession.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @class_sessions }
    end
  end

  # GET /class_sessions/1
  # GET /class_sessions/1.xml
  def show
    @class_session = ClassSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @class_session }
    end
  end

  # GET /class_sessions/new
  # GET /class_sessions/new.xml
  def new
    @class_session = ClassSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @class_session }
    end
  end

  # GET /class_sessions/1/edit
  def edit
    @class_session = ClassSession.find(params[:id])
  end

  # POST /class_sessions
  # POST /class_sessions.xml
  def create
    @class_session = ClassSession.new(params[:class_session])

    respond_to do |format|
      if @class_session.save
        flash[:notice] = 'ClassSession was successfully created.'
        format.html { redirect_to(@class_session) }
        format.xml  { render :xml => @class_session, :status => :created, :location => @class_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @class_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_sessions/1
  # PUT /class_sessions/1.xml
  def update
    @class_session = ClassSession.find(params[:id])

    respond_to do |format|
      if @class_session.update_attributes(params[:class_session])
        flash[:notice] = 'ClassSession was successfully updated.'
        format.html { redirect_to(@class_session) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @class_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_sessions/1
  # DELETE /class_sessions/1.xml
  def destroy
    @class_session = ClassSession.find(params[:id])
    @class_session.destroy

    respond_to do |format|
      format.html { redirect_to(class_sessions_url) }
      format.xml  { head :ok }
    end
  end
end
