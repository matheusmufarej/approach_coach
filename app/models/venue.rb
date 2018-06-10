class Venue < ApplicationRecord
  # Direct associations

  belongs_to :style,
             :counter_cache => true

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
