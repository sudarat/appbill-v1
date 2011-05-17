module ApplicationHelper
  
  def logo
    image_tag("codeapp.jpeg",:alt => "Sample App" , :class => "round",:width => "160",:height => "60")
  end
  
  def edit
    image_tag("icon-edit.gif",:alt => "Edit",:title => "edit",:width => "25",:height => "25")
  end
  
  def show
    image_tag("icon-show.gif",:alt => "Show",:title => "show",:width => "25",:height => "25")
  end
  
  def delete
    image_tag("icon-delete.gif",:title => "delete",:alt => "Delete",:width => "25",:height => "25")
  end
  
  def ok
    image_tag("icon-ok.png",:alt => "OK",:title => "select",:width => "25",:height => "25")
  end
  
  def editdesc
    image_tag("icon-edit.gif",:alt => "Edit",:title => "edit",:width => "20",:height => "20")
  end
  
  def deletedesc
    image_tag("icon-delete.gif",:title => "delete",:alt => "Delete",:width => "20",:height => "20")
  end
  

end
