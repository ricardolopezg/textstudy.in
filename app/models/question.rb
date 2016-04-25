class Question < ActiveRecord::Base
  belongs_to :subject
  # has_many :responses, dependent: :destroy 
  # with deleting responses, how do you safeguard a user's previously responded questions from not being shown in charting dashboard?????


end
