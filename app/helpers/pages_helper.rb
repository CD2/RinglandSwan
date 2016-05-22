module PagesHelper

  def summary page
    page.summary || truncate(page.body, length: 200)
  end

  def page_banner page
    if page.banner_images.count > 1
      content_tag :div, id: :banner_wrapper do
        content_tag :div, id: 'page_slideshow' do
          slider(page) +
          content_tag(:h3, page.banner_caption || '', class: 'page_banner_caption')
        end
      end
    elsif page.banner_images.count == 1
      content_tag :div, id: :banner_wrapper do
        content_tag :div, content_tag(:h3, page.banner_caption || '', class: 'page_banner_caption'), class: :page_banner, style: "background-image: url(#{page.banner_images.first.image.banner})"
      end

    end
  end

  def slider page
    content_tag :div, id: 'slides' do
      page.banner_images.collect { |banner_image| content_tag(:div, '', class: :page_banner, style: "background-image: url(#{banner_image.image.banner})") }.join.html_safe
    end
  end

end
