class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
         
  
  #Associations
  has_many :articles
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.fullname = auth.info.name   # assuming the user model has a name
      #user.image = auth.info.image # assuming the user model has an image
    end
  end

  #Validations
  #before_save {self.email = email.downcase}
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :username, presence: true, length: {minimum:5, maximum: 30}, uniqueness: true
  #validates :email, presence: true, length: {maximum: 100}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  
end
