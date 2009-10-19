class FinancialReportsController < ApplicationController
  # GET /financial_reports
  # GET /financial_reports.xml
  def index
    @search = FinancialReport.clean_search params[:search]
    @financial_reports = @search.all.paginate :page => params[:page], :per_page => 10, :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @financial_reports }
    end
  end

  # GET /financial_reports/1
  # GET /financial_reports/1.xml
  def show
    @financial_report = FinancialReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @financial_report }
    end
  end

  # GET /financial_reports/new
  # GET /financial_reports/new.xml
  def new
    @financial_report = FinancialReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @financial_report }
    end
  end

  # GET /financial_reports/1/edit
  def edit
    @financial_report = FinancialReport.find(params[:id])
  end

  # POST /financial_reports
  # POST /financial_reports.xml
  def create
    @financial_report = FinancialReport.new(params[:financial_report])
    @financial_report.user_id = current_user.id
    @financial_report.debit = @financial_report.transaction_type.debit

    respond_to do |format|
      if @financial_report.save
        flash[:notice] = 'FinancialReport was successfully created.'
        format.html { redirect_to(@financial_report) }
        format.xml  { render :xml => @financial_report, :status => :created, :location => @financial_report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @financial_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /financial_reports/1
  # PUT /financial_reports/1.xml
  def update
    @financial_report = FinancialReport.find(params[:id])

    respond_to do |format|
      if @financial_report.update_attributes(params[:financial_report])
        flash[:notice] = 'FinancialReport was successfully updated.'
        format.html { redirect_to(@financial_report) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @financial_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_reports/1
  # DELETE /financial_reports/1.xml
  def destroy
    @financial_report = FinancialReport.find(params[:id])
    @financial_report.destroy

    respond_to do |format|
      format.html { redirect_to(financial_reports_url) }
      format.xml  { head :ok }
    end
  end
end
