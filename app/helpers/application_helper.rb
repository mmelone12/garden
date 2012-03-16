module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Gardenzie: Build & Grow"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end  
  
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end 
    content_tag("div", attributes, &block)
  end
end