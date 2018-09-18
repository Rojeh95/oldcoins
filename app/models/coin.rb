class Coin < ApplicationRecord
  belongs_to :ruler
  belongs_to :dynasty
  belongs_to :city
  belongs_to :year

  
  has_attached_file :co_image_vs, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :co_image_vs, content_type: /\Aimage\/.*\z/

  has_attached_file :co_image_rs, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :co_image_rs, content_type: /\Aimage\/.*\z/

  validates :co_image_vs, presence: true
  validates :co_image_rs, presence: true

end
