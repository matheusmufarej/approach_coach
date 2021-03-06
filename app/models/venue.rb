class Venue < ApplicationRecord
  # Direct associations

  belongs_to :style,
             :counter_cache => true

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  has_many   :openers,
             :through => :approaches,
             :source => :opener

  has_many   :users,
             :through => :approaches,
             :source => :user

  # Validations

end
