require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  def test_associaton_candidate_with_vote
    c = Candidate.create(name: "Da-Me")
    v = Vote.create()

    c.votes << v
    assert c.votes.include?(v)
  end

  def test_candidate_has_name
    c = Candidate.create(name: "Da-Me")
    assert "Da-Me", c
  end
end
