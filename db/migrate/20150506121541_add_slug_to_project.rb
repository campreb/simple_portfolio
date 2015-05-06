class AddSlugToProject < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.string :slug
    end

    add_index :projects, :slug, unique: true
  end
end
