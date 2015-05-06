class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.attachment :image
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
