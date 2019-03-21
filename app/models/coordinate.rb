class Coordinate < ApplicationRecord
  belongs_to :sector


  CoordinateType = %w[centre perimeter limit]

  #validations
  validates :sector_id, :presence => {:message => 'cannot be blank, Record not saved'}
  validates :xdegree, :presence => {:message => 'cannot be blank, Record not saved'}
  validates :ydegree, :presence => {:message => 'cannot be blank, Record not saved'}
  validates :ctype, :presence => {:message => 'cannot be blank, Record not saved'}

  validates :xdegree, :numericality => {:greater_than_or_equal_to => 43, :less_than_or_equal_to => 49, :message => " latitude degree can only be a number between 43 and 49."}, :allow_nil => false
  validates :ydegree, :numericality => {:greater_than_or_equal_to => 20, :less_than_or_equal_to => 30, :message => " longitude degree can only be a number between 20 and 30."}, :allow_nil => false
  validates :xmin, :numericality => {:greater_than_or_equal_to => 0, :less_than => 60, :message => " lat min can only be a number between 0 and 59."}, :allow_nil => false
  validates :ymin, :numericality => {:greater_than_or_equal_to => 0, :less_than => 60, :message => " longitude min can only be a number between 0 and 59."}, :allow_nil => false
  validates :xsec, :numericality => {:greater_than_or_equal_to => 0, :less_than => 60, :message => " latitude sec can only be a number between 0 and 59.99."}, :allow_nil => false
  validates :ysec, :numericality => {:greater_than_or_equal_to => 0, :less_than => 60, :message => " longitude sec can only be a number between 0 and 59.99."}, :allow_nil => false

  def centre?
    if ctype != 'centre'
      return false # skip the validation
    else
      return true  # run the validation
    end
  end


  validates :ctype, :uniqueness => {:scope => :sector_id}, :if => :centre?

end
