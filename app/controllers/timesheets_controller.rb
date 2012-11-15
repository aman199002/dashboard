class TimesheetsController < ApplicationController
  before_filter :authenticate_user!
  
  def index  
    @search = Timesheet.search(params[:search])    
    @timesheets = @search.order('date DESC').page(params[:page]).per(4)
    respond_to do |format|
      format.html
      format.json { render json: @timesheets }
    end
  end
  
  def show
    @timesheet = Timesheet.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @timesheet }
    end
  end

  def new
    @timesheet = current_user.timesheets.find_or_initialize_by_date(Date.today)
    respond_to do |format|
      format.html
      format.json { render json: @timesheet }
    end
  end
  
  def edit
    @timesheet = Timesheet.find(params[:id])
  end
  
  def create    
    @timesheet = Timesheet.new(params[:timesheet])
    respond_to do |format|
      if @timesheet.save
        format.html { redirect_to timesheets_path, notice: 'Timesheet was successfully created.' }
        format.json { render json: @timesheet, status: :created, location: @timesheet }
      else
        format.html { render action: "new" }
        format.json { render json: @timesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @timesheet = Timesheet.find(params[:id])
    respond_to do |format|
      if @timesheet.update_attributes(params[:timesheet])
        format.html { redirect_to timesheets_path, notice: 'Timesheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timesheet.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @timesheet = Timesheet.find(params[:id])
    @timesheet.destroy
    respond_to do |format|
      format.html { redirect_to timesheets_url }
      format.json { head :no_content }
    end
  end
end
