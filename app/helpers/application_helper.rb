module ApplicationHelper
  # DEVISE PARTIAL
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  # END DEVISE PARTIAL


  def logo_nav_link
    content_tag :a do
      link_to "TEXT PREP", root_path, class: "logo_nav_link"      
    end    
  end

  
  def register_nav_link
    content_tag :a do
      link_to "REGISTER", new_user_registration_path, class: "register_nav_link"
    end    
  end  

  def log_in_nav_link
    content_tag :a do
      link_to "LOGIN", new_user_session_path, class: "log_in_nav_link"     
    end    
  end

  def log_out_nav_link
    content_tag :a do
      link_to "SIGN OUT", destroy_user_session_path, class: "log_out_nav_link", :method => :delete, :id => "signOut"
    end    
  end
 
  def faq_nav_link
    content_tag :a do
      link_to "FAQ", "", class: "faq_nav_link"
    end    
  end
  
  def faq_nav_link_else
    content_tag :a do
      link_to "FAQ", root_path, class: "faq_nav_link_else"
    end    
  end

  def process_nav_link
    content_tag :a do
      link_to "PROCESS", "", class: "process_nav_link"      
    end    
  end

  def process_nav_link_else
    content_tag :a do
      link_to "PROCESS", root_path, class: "process_nav_link_else"      
    end    
  end

  def pricing_nav_link
    content_tag :a do
      link_to "PRICING", "", class: "pricing_nav_link"      
    end    
  end
  
  def pricing_nav_link_else
    content_tag :a do
      link_to "PRICING", root_path, class: "pricing_nav_link_else"      
    end    
  end

  def subjects_nav_link
    content_tag :a do
      link_to "SUBJECTS", "", class: "subjects_nav_link"
    end    
  end 
  
  def subjects_nav_link_else
    content_tag :a do
      link_to "SUBJECTS", root_path, class: "subjects_nav_link_else"
    end    
  end 

  def contact_nav_link
    content_tag :a do
      link_to "CONTACT", "" , class: "contact_nav_link"      
    end    
  end

  def contact_nav_link_else
    content_tag :a do
      link_to "CONTACT", root_path, class: "contact_nav_link_else"      
    end    
  end

  
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
  def boldhelper(body)
    content_tag :strong, body 
  end
end
