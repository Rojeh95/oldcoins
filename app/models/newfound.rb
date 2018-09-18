class Newfound < ApplicationRecord
   
  has_attached_file :nf_image_vs, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :nf_image_vs, content_type: /\Aimage\/.*\z/

  has_attached_file :nf_image_rs, styles: { medium: "200x200#"},default_url: "/images/missing.png"
  validates_attachment_content_type :nf_image_rs,content_type: /\Aimage\/.*\z/



  validates :nf_image_vs, presence: true
  validates :nf_image_rs, presence: true
end

