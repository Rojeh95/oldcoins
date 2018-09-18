class Dynasty < ApplicationRecord
  has_many :rulers ,dependent: :destroy
  has_many :cities ,dependent: :destroy
  has_many :years  ,dependent: :destroy
  has_many :coins  ,dependent: :destroy
  has_attached_file :dy_image, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :dy_image, content_type: /\Aimage\/.*\z/

  validates :dy_name, presence: true
end



