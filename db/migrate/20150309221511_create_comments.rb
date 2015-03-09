class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      t.text :body
      t.references :user
      t.timestamps null: false
    end
  end
end
