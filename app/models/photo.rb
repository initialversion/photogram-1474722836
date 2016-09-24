class Photo < ApplicationRecord
  # Direct associations

  # Indirect associations

  has_many   :commenters,
             :through => :photo,
             :source => :commenter

  has_many   :followers,
             :through => :owner,
             :source => :followers

  has_many   :fans,
             :through => :photo,
             :source => :user

  # Validations

  validates :image, :presence => true

  validates :owner_id, :presence => true

end
