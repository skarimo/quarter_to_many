class QuartersController < ApplicationController
  def show
    @quarter = Quarter.find(params[:id])
  end

  def index
    @quarters = Quarter.all
  end

  def new
    @quarter = Quarter.new
  end

  def create
    @quarter = Quarter.new(quarter_params)
      if @quarter.valid?
        @quarter.save
        redirect_to @quarter
      else
        render :new
      end

  end


  def destroy
    @quarter = Quarter.find(params[:id]).destroy
    redirect_to quarters_path
  end



  private

  def quarter_params
    params.require(:quarter).permit(:degree_rust, :year)
  end







end
