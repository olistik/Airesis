# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  #ricarica i messaggi flash
  def reload_flash
    page.replace "flash_messages", :partial => 'layouts/flash', :locals => {:flash => flash}
  end
  
  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def facebook_like
    "<div class=\"fb-like\" data-href=\"#{CGI::escape(request.url)}\" data-send=\"false\" data-layout=\"button_count\" data-width=\"100\" data-show-faces=\"false\"></div>"
  end
  
  def calendar(*args)
    "<div id='calendar'></div>"
  end


 def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
end
