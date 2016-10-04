class User < ApplicationRecord
  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}
  #Note that we're only checking for presence and uniqueness of the email. See gitbooks

  validates :password,
  length: { in: 8..72 },
  on: :create

  has_secure_password #provides :authenticate method

  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end
end
