class City < ApplicationRecord
  belongs_to :ruler
  belongs_to :dynasty
  has_attached_file :c_image, styles: { medium: "300x300#"},default_url: "/images/missing.png"
  validates_attachment_content_type :c_image, content_type: /\Aimage\/.*\z/
end
