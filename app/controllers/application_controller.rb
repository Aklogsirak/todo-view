class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
   before_action :track_visit
  
  private  

  def track_visit  # <-- Add this method  
    session[:visit_count] ||= 0  
    session[:visit_count] += 1  
    session[:last_visited] = Time.current  
  end  
end
