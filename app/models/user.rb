class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subscriptions, dependent: :destroy
  has_many :subjects, through: :subscriptions, dependent: :destroy

  has_many :responses, dependent: :destroy
  has_one :profile, dependent: :destroy


end
