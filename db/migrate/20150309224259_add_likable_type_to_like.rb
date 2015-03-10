class AddLikableTypeToLike < ActiveRecord::Migration
  def up
    add_column :likes, :likable_type, :string
    remove_column :likes, :author_id
    add_column :likes, :user_id, :integer
  end

  def down
    remove_column :likes, :likable_type
    add_column :likes, :author_id, :integer
    remove_column :likes, :user_id
  end

end
