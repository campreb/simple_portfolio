class ScreenshotDecorator < Draper::Decorator
  delegate_all

  def thumbnail_srcset
    return unless image.present?
    image_1x = h.image_path(image.url(:small))
    image_2x = h.image_path(image.url(:small_2x))
    "#{image_1x} 1x, #{image_2x} 2x"
  end

end
