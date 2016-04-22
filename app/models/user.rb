class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subscriptions, dependent: :destroy
  has_many :subjects, through: :subscriptions

  has_many :responses, dependent: :destroy
  has_one :profile, dependent: :destroy

  after_create :build_default_profile, :build_user_subscriptions




private
  def build_default_profile
    Profile.create(user_id: User.last.id, fname: "Your", lname: "Name")
  end

  def build_user_subscriptions
    Subject.all.each do |s| 
      s.id
      s.name 
      s.subsection 
      s.language 
      Subscription.create(user_id: User.last.id, subject_id: s.id, active: false)
    end
  end 

end
