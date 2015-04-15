require 'test_helper'

class UserTest < ActiveSupport::TestCase
    
    def setup
        @user = User.new(username: "alberticopai", email: "alberticopai@gmail.com", password: "password")
    end

  test 'user should be valid' do
    assert @user.valid?
  end

	test 'username should be valid' do
		@user.username = ""
		assert_not @user.valid?
	end

	test 'username length should not be too long' do
		@user.username = "a" * 31
		assert_not @user.valid?
	end

	test 'username length should not be too short' do
		@user.username = "aaaa"
		assert_not @user.valid?
	end
	
	test 'username should be unique' do
	    dup_user = @user.dup
	    dup_user.username = @user.username.upcase
	    @user.save
	    assert_not dup_user.valid?
	end
	
	test 'email should be valid' do
	    @user.email = ""
	    assert_not @user.valid?
	end
	
	test 'email length should be valid' do
	    @user.email = "a" * 101 + "@example.com"
	    assert_not @user.valid?
	end
	
	test 'email should be unique' do
    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    @user.save
    assert_not dup_user.valid?
	end
	
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eem.au laura+joe@monk.cm]
    valid_addresses.each do |va|
      @user.email = va
      assert @user.valid?, '#{va.inspect} should be valid'
    end
  end
    
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_eee.org user.name@example. eee@i_am_.com foo@ee+aar.com]
    invalid_addresses.each do |ia|
        @user.email = ia
        assert_not @user.valid?, '#{ia.inspect} should be invalid'
    end
  end
end