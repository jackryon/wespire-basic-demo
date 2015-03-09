class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes, as: :likable

  validates_presence_of :user

end
