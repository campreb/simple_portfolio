class Screenshot < ActiveRecord::Base
  belongs_to :project

  has_attached_file :image, styles: {
    small: '186x100#',
    small_2x:'372x200#',
    big: '1440x'}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
