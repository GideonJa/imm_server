class User < ActiveRecord::Base
  attr_accessible :person_id, :state, :severity, :status

  validates :severity, inclusion: { in: %w(low medium none),
    message: "%{value} is not a valid severity" }


  validates :status, inclusion: { in: %w(out-of-date current),
    message: "%{value} is not a valid status" }

end
