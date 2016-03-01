class Candidate < ActiveRecord::Base
  has_many :votes
  validates :name, presence: true
  validates :hometown, presence: true
  validates :district, presence: true
  validates :party, presence: true

  def as_json(options = nil)
    {
      id: id,
      name: name,
      party: party,
      district: district
      votes: votes.length
    }
  end
end
