class Dynasty < ApplicationRecord
  has_many :rulers
  #has_many :cities
  has_attached_file :dy_image, styles: { medium: "300x300#"},default_url: "/images/missing.png"
  validates_attachment_content_type :dy_image, content_type: /\Aimage\/.*\z/
end

