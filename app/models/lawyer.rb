class Lawyer < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence:true
  validates :first_name, :uniqueness => { :scope => :last_name }
  has_attachment :photo
end

