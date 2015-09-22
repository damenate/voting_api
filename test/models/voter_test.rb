require 'test_helper'

class VoterTest < ActiveSupport::TestCase

  def test_association_between_voter_and_vote
    vr = Voter.create(name: "Sam")
    vt = Vote.create()

    vr.vote = vt
    assert vr.vote == vt
  end

  def test_voter_has_name
    vr = Voter.create(name: "Sam")
    assert "Sam", vr
  end
end
