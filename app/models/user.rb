class User < ActiveRecord::Base
    
    #Associations
    has_many :articles
    
    #For authentication
    has_secure_password
    
    #Validations
    before_save {self.email = email.downcase}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :username, presence: true, length: {minimum:5, maximum: 30}, uniqueness: true
    validates :email, presence: true, length: {maximum: 100}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
end