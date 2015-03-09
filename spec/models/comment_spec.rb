require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  it "has one like as polymorphic likable model" do
    comment = Comment.new
    like_1 = Like.new
    like_1.likable = comment
    expect like_1.likable.class == "Comment"
  end

end
