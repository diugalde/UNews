class Article < ActiveRecord::Base
    
    #Associations
    belongs_to :user
    
    #Validations
    validates :user_id, presence: true
    validates :title, presence: true, length: {minimum:5, maximum: 100}
    validates :summary, presence: true, length: {minimum:10, maximum: 500}
    validates :body, presence:true, length: {minimum: 50, maximum: 3000}
end