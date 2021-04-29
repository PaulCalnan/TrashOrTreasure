class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :description
      t.text :image
      t.boolean :active # determine if post active or deleted
      t.references :user
      t.timestamps
    end
  end
end
