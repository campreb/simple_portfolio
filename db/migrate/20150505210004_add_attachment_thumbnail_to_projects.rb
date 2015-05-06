class AddAttachmentThumbnailToProjects < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.attachment :thumbnail
    end
  end
end
