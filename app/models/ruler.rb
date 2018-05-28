class Ruler < ApplicationRecord
  belongs_to :dynasty
  has_many :cities
  has_attached_file :ru_image, styles: { medium: "300x300#"},default_url: "/images/missing.png"
  validates_attachment_content_type :ru_image, content_type: /\Aimage\/.*\z/
end
