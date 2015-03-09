require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "returns the username without email bits for display_name" do
    example_email = "someusername@example.com"
    user = User.new({ email: example_email })
    display_name = user.display_name
    expect(display_name == "someusername")
  end

end
