class Opener < ApplicationRecord
  # Direct associations

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
