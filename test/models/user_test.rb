require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(firstname: "First", lastname: "last", email: "test@wefc.church")
  end
  
  test "user should be valid" do
    assert @user.valid?    
  end

  
  
end