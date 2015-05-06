class ProjectDecorator < Draper::Decorator
  delegate_all

  def url_button
    return '' unless url.present?
    h.content_tag :li do
      h.link_to url, target: '_blank' do
        h.icon('external-link', url, class: 'fa-lg fa-fw')
      end
    end
  end

  def github_button
    return '' unless github.present?
    h.content_tag :li do
      h.link_to github, target: '_blank' do
        h.icon('github', 'GitHub project', class: 'fa-lg fa-fw')
      end
    end
  end

  def formatted_body
    if body.blank?
      h.simple_format description
    else
      Kramdown::Document.new(body).to_html
    end
  end

  def thumbnail_srcset
    return unless thumbnail.present?
    image_1x = h.image_path(thumbnail.url(:small))
    image_2x = h.image_path(thumbnail.url(:small_2x))
    "#{image_1x} 1x, #{image_2x} 2x"
  end
end
