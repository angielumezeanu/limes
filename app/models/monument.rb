class Monument < ApplicationRecord
  #validation
  validates :name, :presence => {:message => 'cannot be blank, Record not saved'}
end
