class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if DanceCalendar.find_by(user: current_user).nil?
      @dancecalendar = DanceCalendar.new
    else
      @dancecalendar = DanceCalendar.find_by(user: current_user)
    end

    @diary_date = DiaryDate.new
  end
end
