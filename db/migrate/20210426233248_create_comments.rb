class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :remark
      t.references :user
      t.references :post
      t.timestamps
    end
  end
end
