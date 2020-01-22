class DanceCalendarsController < ApplicationController
  def create
    @dance_calendar = DanceCalendar.new
    @dance_calendar.user = current_user
    if @dance_calendar.save
      flash[:alert] = "Your dance calendar has been created."
      redirect_to dance_calendar_path(@dance_calendar)
    else
      render :new
    end
  end

  def show
    @dance_calendar = DanceCalendar.find(params[:id])
  end
end
