class Screenshot < ActiveRecord::Base
  belongs_to :project, touch: true

  has_attached_file :image, styles: {
    small: '246x132#',
    small_2x:'492x264#',
    big: '1440x'}, processors: [:thumbnail, :paperclip_optimizer]
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
