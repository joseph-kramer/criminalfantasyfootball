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

  helper_method :current_week

  def next_week
    current_week+1
  end

  helper_method :next_week

  private

  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_session_url, alert: "Please sign in first!"
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def current_user?(user)
    current_user == user
  end

  helper_method :current_user?

  def require_admin
    unless current_user_admin?
      redirect_to root_url, alert: "Unauthorized access!"
    end
  end

  def current_user_admin?
    current_user && current_user.admin?
  end

  helper_method :current_user_admin?




end
