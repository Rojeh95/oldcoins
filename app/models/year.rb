class Year < ApplicationRecord
  belongs_to :ruler
  belongs_to :dynasty
  belongs_to :city
  has_many :coins , dependent: :destroy
  has_attached_file :ye_image, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :ye_image, content_type: /\Aimage\/.*\z/

  validates :period, presence: true
end
