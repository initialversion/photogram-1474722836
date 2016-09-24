class Photo < ApplicationRecord
  # Direct associations

  # Indirect associations

  has_many   :fans,
             :through => :photo,
             :source => :user

  # Validations

  validates :image, :presence => true

  validates :owner_id, :presence => true

end
