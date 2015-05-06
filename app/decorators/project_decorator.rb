class ProjectDecorator < Draper::Decorator
  delegate_all

  def url_button
    return '' unless url.present?
    h.content_tag :li do
      h.link_to url do
        h.icon('external-link', url, class: 'fa-lg fa-fw')
      end
    end
  end

  def github_button
    return '' unless github.present?
    h.content_tag :li do
      h.link_to github do
        h.icon('github', 'GitHub project', class: 'fa-lg fa-fw')
      end
    end
  end

  def formatted_body
    Kramdown::Document.new(body).to_html
  end

  # def thumbnail_srcset
  #   return unless thumbnail.present?
  #   filename = File.basename(thumbnail, ".*")
  #   extname = File.extname(thumbnail)
  #   image_1x = image_path("thumbnails/#{filename}_1x#{extname}")
  #   image_2x = image_path("thumbnails/#{filename}_2x#{extname}")
  #   "#{image_1x} 1x, #{image_2x} 2x"
  # end
end
