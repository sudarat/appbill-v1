module ApplicationHelper
  
  def logo
    image_tag("codeapp.jpeg",:alt => "Sample App" , :class => "round")
  end
  
  def edit
    image_tag("icon-edit.gif",:alt => "Edit",:width => "25",:height => "25")
  end
  
  def show
    image_tag("icon-show.gif",:alt => "Show",:width => "25",:height => "25")
  end
  
  def delete
    image_tag("icon-delete.gif",:alt => "Delete",:width => "25",:height => "25")
  end
  
  def ok
    image_tag("icon-ok.png",:alt => "OK",:width => "25",:height => "25")
  end
  
  def editdesc
    image_tag("icon-edit.gif",:alt => "Edit",:width => "20",:height => "20")
  end
  
  def deletedesc
    image_tag("icon-delete.gif",:alt => "Delete",:width => "20",:height => "20")
  end
  

end
