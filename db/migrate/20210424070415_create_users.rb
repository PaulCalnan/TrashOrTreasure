class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t| # id key is given for free
      t.text :email

      t.timestamps
    end
  end
end
