class Profile < ActiveRecord::Base
  belongs_to :user

  # validates :fname, presence: { message: "Boat Name Required" }, uniqueness: { message: "Boat Name taken, Try another name." }
  # validates :fname, presence: { message: "Enter Container Capacity" }
  # validates :mobile_phone, presence: { message: "Enter Container Capacity" }
  # validates :alt_phone, presence: { message: "Enter Container Capacity" }
  # validates :billing_phone, presence: { message: "Enter Container Capacity" }
  # validates :billing_address1, presence: { message: "Enter Container Capacity" }
  # validates :billing_address2, presence: { message: "Enter Container Capacity" }
  # validates :billing_city, presence: { message: "Enter Container Capacity" }
  # validates :billing_state, presence: { message: "Enter Container Capacity" }
  # validates :billing_zip, presence: { message: "Enter Container Capacity" }
  # validates_length_of :billing_zip, :maximum=>5
  # validates :billing_country, presence: { message: "Enter Container Capacity" }
  # validates :birthday, presence: { message: "Enter Container Capacity" }


  # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default-profile.png"
  # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  phony_normalize :mobile_phone, default_country_code: 'US'
  phony_normalize :billing_phone, default_country_code: 'US'
  # validates :phone_number, phony_plausible: true


  # def self.search(search)
  #   if search
  #     where("Question.body LIKE ? OR subjects.subsection LIKE ? OR question.explanation LIKE ? OR responses.user_response LIKE ? OR responses.response_status LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  #     # where('fname LIKE ?', "%#{search}%")
  #   else
  #     scoped
  #   end
  # end

end


