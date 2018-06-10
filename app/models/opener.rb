class Opener < ApplicationRecord
  # Direct associations

  belongs_to :styles,
             :class_name => "Style",
             :counter_cache => true

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :approaches,
             :source => :user

  # Validations

end
