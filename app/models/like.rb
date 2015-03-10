class Like < ActiveRecord::Base
  belongs_to :likable, polymorphic: true
  belongs_to :user

  # validates_uniqueness :user_id
end
