module ApplicationHelper

  def image_for(nflteam)
     if (nflteam.image_file_name == nil) || (nflteam == nil)
       image_tag("placeholder.png", height: '80', width: '80')
     else
       image_tag(nflteam.image_file_name, height: '80', width: '80')
     end
   end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
