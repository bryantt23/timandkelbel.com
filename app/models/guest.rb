class Guest < ActiveRecord::Base

  # Validations
  validates :attending, presence: true
  validates :full_name, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, presence: true

end
