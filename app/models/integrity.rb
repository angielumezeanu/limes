class Integrity < ApplicationRecord
  def full_description
    "#{degree}  #{description}"
  end
end
