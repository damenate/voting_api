require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  def test_that_has_candidate_id
    v = Vote.create(candidate_id: 1)
    assert 1, v
  end

  def test_has_voter_id
    v = Vote.create(voter_id: 1)
    assert 1, v
  end
end
