require 'test_helper'

class VoterTest < ActiveSupport::TestCase

  def test_association_between_voter_and_vote
    vr = Voter.create(name: "Donatello", party: "TMNT")
    vt = Vote.create()

    vr.vote = vt
    assert vr.reload.vote == vt
  end

  def test_voter_has_name
    vr = Voter.create(name: "Donatello")
    assert "Donatello", vr
  end

  def test_voter_token
    vr = Voter.create(name:"Donald", party: "Democratic")
    assert vr.access_token
  end

end
