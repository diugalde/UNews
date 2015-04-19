class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  
  #Associations
  has_many :articles

  #Validations
  #before_save {self.email = email.downcase}
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :username, presence: true, length: {minimum:5, maximum: 30}, uniqueness: true
  #validates :email, presence: true, length: {maximum: 100}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  
end
