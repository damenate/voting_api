require 'securerandom'
class Voter < ActiveRecord::Base
  before_create :generate_access_token
  has_one :vote
  validates :name, presence: true
  validates :party, presence: true


# private def set_auth_token
  #     return if auth_token.present?
  #     self.auth_token = generated_auth_token
  #   end
private def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(access_token: access_token)
  end
end
