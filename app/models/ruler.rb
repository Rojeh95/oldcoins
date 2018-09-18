class Ruler < ApplicationRecord
  belongs_to :dynasty
  has_many :cities ,dependent: :destroy
  has_many :coins ,dependent: :destroy
  has_attached_file :ru_image, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :ru_image, content_type: /\Aimage\/.*\z/

  validates_presence_of :ru_name 

end
