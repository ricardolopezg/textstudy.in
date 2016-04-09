module ApplicationHelper

  # def my_profile_nav_link
  #   content_tag :a do
  #     link_to "MY PROFILE", profile_path(current_user.id)      
  #   end    
  # end

  # def edit_profile_nav_link
  #   content_tag :a do
  #     link_to "EDIT PROFILE", edit_profile_path(current_user.id)      
  #   end    
  # end

  # def log_out_nav_link
  #   content_tag :a do
  #     link_to "LOG OUT", destroy_user_session_path, method: :delete     
  #   end    
  # end

  
  def h1helper(title)
    content_tag :h1, title 
  end
  def h2helper(title)
    content_tag :h2, title 
  end
  def h3helper(title)
    content_tag :h3, title 
  end
  def h4helper(title)
    content_tag :h4, title 
  end 
  def h5helper(title)
    content_tag :h5, title 
  end 
  def h6helper(title)
    content_tag :h6, title 
  end
  def phelper(body)
    content_tag :p, body 
  end
 

end


