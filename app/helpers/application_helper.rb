module ApplicationHelper

  def page_title title
    if title.blank?
      'Ringland Swan'
    else
      title
    end
  end

end
