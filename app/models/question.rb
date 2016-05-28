class Question < ActiveRecord::Base
  belongs_to :subject
  has_many :responses, dependent: :destroy 


end
