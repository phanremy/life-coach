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


  #   def update
  #   @dance_date = DanceDate.find(params[:id])
  #   @dance_date.dance ? @dance_date.update(dance: false) : @dance_date.update(dance: true)
  #   if params[:dance_date]
  #     @notes = params[:dance_date][:notes]
  #     @dance_date.update(notes: @notes)
  #   end
  #   redirect_to root_path
  #   authorize @dance_date
  #   end
end
