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

end


