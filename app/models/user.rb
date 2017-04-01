class User < ApplicationRecord

  has_secure_password

  geocoded_by :address
  after_validation :geocode

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  has_many :drills, dependent: :destroy

  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: VALID_EMAIL_REGEX, unless: :from_oauth?

  def from_oauth?
    uid.present? && provider.present?
  end

  def sign_in_with_twitter?
    uid.present? && provider =='twitter'
  end

  def self.find_from_oauth(oauth_data)
    User.where(
      uid: oauth_data['uid'],
      provider: oauth_data['provider']
    ).first
  end

  def self.create_from_omniauth(omniauth_data)
    full_name = omniauth_data['info']['name'].split
    User.create(
      uid: omniauth_data['uid'],
      provider: omniauth_data['provider'],
      first_name: full_name[0],
      last_name: full_name[1],
      email: omniauth_data['info']['email'],
      oauth_token: omniauth_data['credentials']['token'],
      oauth_secret: omniauth_data['credentials']['secret'],
      oauth_raw_data: omniauth_data,
      password: SecureRandom.hex(16)
    )
  end

  def full_name
    "#{first_name} #{last_name}".strip.titleize
  end
end
