class AddRoleTitleToProjects < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.string :role_title
    end
  end
end
