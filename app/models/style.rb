class Style < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :dependent => :destroy

  has_many   :openers,
             :foreign_key => "styles_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
