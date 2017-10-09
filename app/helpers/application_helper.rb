module ApplicationHelper

  # ページごとの完全なタイトルを返す
  def full_title(page_title = '')
    base_title = "Dri-bbble Slideshow"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

end
