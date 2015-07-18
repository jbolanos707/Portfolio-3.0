class Portfolio < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, :presence => true
  validates :description, :presence => true
end
