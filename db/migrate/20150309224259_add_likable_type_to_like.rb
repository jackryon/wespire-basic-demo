class AddLikableTypeToLike < ActiveRecord::Migration
  def change
    change_table :likes do |t|
      t.string :likable_type
    end
  end
end
