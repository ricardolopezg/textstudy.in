class Subject < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions
  

end
