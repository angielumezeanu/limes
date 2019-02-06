class Sector < ApplicationRecord
  belongs_to :county, optional: true
  belongs_to :coordinate, optional: true
  belongs_to :component, optional: true
  belongs_to :scategory, optional: true
  has_many :photos
  has_many :coordinates
  has_and_belongs_to_many :bibliographies, :join_table => :sector_bibliographies
  has_and_belongs_to_many :preservations, :join_table => :preservation_sectors
  has_and_belongs_to_many :monuments, :join_table => :monument_sectors
  has_and_belongs_to_many :lands, :join_table => :land_sectors
  has_and_belongs_to_many :saccesses, :join_table => :acces_sectors

  DType = %w[confirmed presumed partially_destroyed destroyed]

  Soil = %w[settlement forest grassland agricultural_land]

  Preservation = %w[preserved unpreserved partially_destroyed destroyed]

  Risk = %w[1 2 3 4 5]

  Institution = %w[MNIR MNIT MNCR]

      #validation
  validates :code, :presence => {:message => 'cannot be blank, Record not saved'}
  validates :code, uniqueness: { case_sensitive: false }

end
