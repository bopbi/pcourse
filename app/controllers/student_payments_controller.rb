class StudentPaymentsController < ApplicationController
  load_and_authorize_resource
  # GET /student_payments
  # GET /student_payments.xml
  def index
    @search = StudentPayment.clean_search params[:search]
    @student_payments = @search.all.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_payments }
    end
  end

  # GET /student_payments/1
  # GET /student_payments/1.xml
  def show
    @student_payment = StudentPayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_payment }
    end
  end

  # GET /student_payments/new
  # GET /student_payments/new.xml
  def new
    @student_payment = StudentPayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_payment }
    end
  end

  # GET /student_payments/1/edit
  def edit
    @student_payment = StudentPayment.find(params[:id])
  end

  # POST /student_payments
  # POST /student_payments.xml
  def create
    @student_payment = StudentPayment.new(params[:student_payment])

    respond_to do |format|
      if @student_payment.save
        flash[:notice] = 'StudentPayment was successfully created.'
        format.html { redirect_to(@student_payment) }
        format.xml  { render :xml => @student_payment, :status => :created, :location => @student_payment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_payment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_payments/1
  # PUT /student_payments/1.xml
  def update
    @student_payment = StudentPayment.find(params[:id])

    respond_to do |format|
      if @student_payment.update_attributes(params[:student_payment])
        flash[:notice] = 'StudentPayment was successfully updated.'
        format.html { redirect_to(@student_payment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_payment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_payments/1
  # DELETE /student_payments/1.xml
  def destroy
    @student_payment = StudentPayment.find(params[:id])
    @student_payment.destroy

    respond_to do |format|
      format.html { redirect_to(student_payments_url) }
      format.xml  { head :ok }
    end
  end
end
