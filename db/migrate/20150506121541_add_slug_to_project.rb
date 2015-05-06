class AddSlugToProject < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.string :slug
    end
  end
end
