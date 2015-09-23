require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  def test_associaton_candidate_with_vote
    c = Candidate.create(name: "Leonardo", hometown: "NYC", district: "One", party:"TMNT" )
    v = Vote.create()

    c.votes << v
    assert c.votes.include?(v)
  end

  def test_candidate_has_name
    c = Candidate.create(name: "Leonardo", hometown: "NYC", district: "One", party:"TMNT" )
    assert "Da-Me", c
  end
end
