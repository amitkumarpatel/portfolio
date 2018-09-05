class Contact < ApplicationRecord

  #validates_presence_of :first_name, :last_name, :email, :subject, :comment
  validates :first_name, :last_name, :email, :subject, :comment, presence: true

end
