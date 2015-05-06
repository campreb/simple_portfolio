class Project < ActiveRecord::Base
  has_many :screenshots

  acts_as_taggable

  has_attached_file :thumbnail, styles: {
    small: '186x100#',
    small_2x:'372x200#',
    header: '1440x'}
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

  validates :name, :url, :category, presence: true

  accepts_nested_attributes_for :screenshots, allow_destroy: true
end
