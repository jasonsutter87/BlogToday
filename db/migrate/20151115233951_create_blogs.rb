class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :title
      t.string :url
      t.text :post

      t.timestamps null: false
    end
    add_index :blogs, :user_id
  end
end
