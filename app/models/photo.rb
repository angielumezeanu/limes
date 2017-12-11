class Photo < ApplicationRecord
  belongs_to :sector

  #validation
  validates :sector_id, :presence => {:message => 'cannot be blank, Record not saved'}

  #paperclip
  #Photo
  has_attached_file :image , :default_url => '/images/pixel.png', :url => "/:class/:attachment/:id/:style_:basename.:extension" ,
                    :styles => {
                        :thumbnail=> "200x200#",
                        :original => "2500x2000>"}
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'application/pdf']

  #paperclip destroy_image
  before_save :destroy_image?

  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end


  private
  def destroy_image?
    self.image.clear if @image_delete == "1"

  end

end
