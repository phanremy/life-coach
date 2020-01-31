class DiaryDatesController < ApplicationController
  skip_before_action :authenticate_user!, except: []

  def index
    @diary_dates = DiaryDate.all
  end

  def show
    @diary_date = DiaryDate.find(params[:id])
  end

  def new
    @diary_date = DiaryDate.new
  end

  def create
    @diary_date = DiaryDate.new(params_diary_date)
    if @diary_date.save
      redirect_to diary_dates_path
    else
      render :new
    end
  end

  def edit
    @diary_date = DiaryDate.find(params[:id])
  end

  def update
    @diary_date = DiaryDate.find(params[:id])
    if @diary_date.update(params_diary_date)
      redirect_to diary_dates_path
    else
      render :edit
    end
  end

  def destroy
    @diary_date = DiaryDate.find(params[:id])
    @diary_date.destroy
    redirect_to diary_dates_path
  end

  private

  def params_diary_date
    params.require(:diary_date).permit(:date, :dance, :dance_notes, :code, :code_notes, taggings: [])
  end
end
