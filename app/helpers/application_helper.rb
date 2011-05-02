module ApplicationHelper
  
  def logo
    image_tag("codeapp.jpeg",:alt => "Sample App" , :class => "round")
  end
end
