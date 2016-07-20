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
  after_create :subscribe_user_to_mailing_list
  after_create :send_welcome_email_to_user


private
  def build_default_profile
    Profile.create!(
      user_id: User.last.id, 
      fname: "Click to edit First Name", 
      lname: "Click to edit Last Name", 
      mobile_phone: "Click to edit Mobile Phone", 
      alt_phone: "Click to edit Alternate Phone", 
      billing_phone: "Click to edit Billing Phone", 
      billing_address1: "Click to edit Billing Address 1", 
      billing_address2: "Click to edit Billing Address 2", 
      billing_city: "Click to edit Billing City", 
      billing_state: "Click to edit Billing State", 
      billing_zip: "Click to edit Billing Zip", 
      billing_country: "Click to edit Billing Country", 
      birthday: "Click to edit Birthday"
      )
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

  def subscribe_user_to_mailing_list
    # SubscribeUserToMailingListJob.perform_later(self)
    require 'gibbon'
    gibbon = Gibbon::Request.new
    gibbon.api_key = ENV["MAILCHIMP_API_KEY"]
    gibbon.timeout = 15
    # gibbon.throws_exceptions = true

    gibbon.lists(ENV["MAILCHIMP_MASTER_LIST"]).members.create(
      body: {
        email_address: self.email, 
        status: "subscribed" 

        # Not doing fname and lname here because profile has generic names at time username is created
        # This can be remedied by FORCING the user to input those fields 
        # Possible put fname fields and lname fields in user table?
        # merge_fields: {
        #   FNAME: self.profile.fname, 
        #   LNAME: self.profile.lname
        # }

      }
    )
  end

  def send_welcome_email_to_user
    # UserMailer.welcome_email(self).deliver_later
    require 'mandrill'
    mandrill = Mandrill::API.new(ENV["MANDRILL_API_KEY"])
    template_name = "new-user-welcome"
    template_content = nil
    message = {
      :to => [{:email  => self.email}],
      :from_email =>"support@textprep.co"  
    }  
    sending = mandrill.messages.send_template template_name, template_content, message  
    puts sending
  end

end
