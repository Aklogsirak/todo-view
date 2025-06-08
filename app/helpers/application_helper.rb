module ApplicationHelper
  def formatted_last_visited  # <-- Add this method  
    if session[:last_visited]  
      time_ago_in_words(session[:last_visited]) + " ago"  
    else  
      "First visit!"  
    end  
  end  
end
