class Article < ApplicationRecord
    include CreationTime
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_one_attached :image
 
    validates :title,presence: true
    validates :body,presence: true,length: {maximum: 10}
 end
