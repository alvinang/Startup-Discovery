module ApplicationHelper
  
  def form_token
    "<input type=\"hidden\" 
      name=\"authenticity_token\"
      value=\"#{form_authenticity_token}\">".html_safe
  end
  
end
