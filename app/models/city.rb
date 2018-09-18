class City < ApplicationRecord
  belongs_to :ruler
  belongs_to :dynasty
  has_many :years ,dependent: :destroy
  has_attached_file :c_image, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :c_image, content_type: /\Aimage\/.*\z/

  validates :c_name, presence: true
end
