# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def current_year
    Time.now.strftime('%Y')
  end
  
  def show_current_date
    Time.now.strftime('%A, %d %B, %Y')
  end
  
  def show_current_date_sql
    Time.now.strftime('%Y-%m-%d')
  end
  
end
