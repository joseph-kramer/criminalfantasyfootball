class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_season
    2019
  end

  def current_week
    @schedule = Schedule.all
    x = @schedule.find {|s| Time.now > s.start_date.to_time && Time.now < s.end_date.to_time}
    if x !=nil
      x.week
    else
      20
    end

  end

  def next_week
    current_week+1
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def current_user?(user)
    current_user == user
  end

  helper_method :current_user?

end
