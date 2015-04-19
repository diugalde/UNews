require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
    
    def setup
    	@user = User.create(username: "alberticopai", email: "alberticopai@gmail.com", encrypted_password: "password")
        @article = @user.articles.build(title: "Loro Loco en Palmares", summary: "Mata a ochenta feligreses en frente de dos pejelagartos", body: "I dont know what to put in here, so i just wrote shit")	
    end
    
    test 'user_id should be present' do
    	@article.user_id = nil
    	assert_not @article.valid?
    end

    test 'article should be valid' do
		assert @article.valid?
	end

	test 'title should be valid' do
		@article.title = ""
		assert_not @article.valid?
	end

	test 'title length should not be too long' do
		@article.title = "a" * 101
		assert_not @article.valid?
	end

	test 'title length should not be too short' do
		@article.title = "aaaa"
		assert_not @article.valid?
	end

	test 'summary must be present' do
		@article.summary = ""
		assert_not @article.valid?
	end

	test 'summary length should not be too long' do
		@article.summary = "a" * 501
		assert_not @article.valid?
	end

	test 'summary length should not be too short' do
		@article.summary = "a" * 9
		assert_not @article.valid?
	end

	test 'body must be present' do
		@article.body = ""
		assert_not @article.valid?
	end

	test 'body length should not be too long' do
		@article.body = "a" * 3001
		assert_not @article.valid?
	end

	test 'body length should not be too short' do
		@article.body = "a" * 49
		assert_not @article.valid?
	end
    
end