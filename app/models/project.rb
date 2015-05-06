class Project < ActiveRecord::Base
  validates :name, :url, :category, presence: true

  acts_as_taggable

  has_attached_file :thumbnail, styles: {
    small: '186x100#',
    small_2x:'372x200#',
    header: '1440x'}
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/
end
