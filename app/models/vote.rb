class Vote < ActiveRecord::Base
  belongs_to :candidates
  belongs_to :voters
end
