class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  has_many   :followers,
             :through => :recipient,
             :source => :sender

  has_many   :follows,
             :through => :sent_friend_requests,
             :source => :received_friend_requests

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

end
