# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  email           :string           not null
#  session_token   :string           not null
#  is_employer     :boolean          default(FALSE), not null
#  company_id      :integer          default(-1)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  attr_reader :password

  after_initialize :ensure_session_token

  validates :username, :session_token, :email, presence: true, uniqueness: true
  validates :password_digest, :session_token, presence: true
  validates :is_employer, inclusion: {in: [true, false], message: "Invalid account type"}
  validates :password, length: {minimum: 6, allow_nil: true}
  validate :no_company_if_seeker

  def no_company_if_seeker
    if (!is_employer && company_id != -1)
      errors.add(:company_id, "can't be set for job seekers")
    end
  end

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return nil if user.nil?
    return user if user.is_password?(password)
    nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    check = BCrypt::Password.new(password_digest)
    check.is_password?(password)
  end
end
