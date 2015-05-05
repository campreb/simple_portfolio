class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :category
      t.string :client
      t.string :url
      t.string :github
      t.text :description
      t.text :body

      t.timestamps null: false
    end
  end
end
