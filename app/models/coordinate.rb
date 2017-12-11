class Coordinate < ApplicationRecord
  belongs_to :sector


  CoordinateType = %w[centre perimeter limit]

  #validations
  validates :sector_id, :presence => {:message => 'cannot be blank, Record not saved'}
  validates :xdegree, :presence => {:message => 'cannot be blank, Record not saved'}
  validates :ydegree, :presence => {:message => 'cannot be blank, Record not saved'}
  validates :ctype, :presence => {:message => 'cannot be blank, Record not saved'}

  validates :xdegree, :numericality => {:greater_than_or_equal_to => 43.00, :less_than_or_equal_to => 49.00, :message => " latitude degree can only be a number between 43 and 49."}, :allow_nil => false
  validates :ydegree, :numericality => {:greater_than_or_equal_to => 20.00, :less_than_or_equal_to => 30.00, :message => " longitude degree can only be a number between 20 and 30."}, :allow_nil => false

  def centre?
    if ctype != 'centre'
      return false # skip the validation
    else
      return true  # run the validation
    end
  end


  validates :ctype, :uniqueness => {:scope => :sector_id}, :if => :centre?

end
