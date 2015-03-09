class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :likable
      t.references :author
      t.timestamps null: false
    end
  end
end
