class Rambling < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :large => "800x800", :medium => "450x450>", :thumb => "150x150>" }, :default_url => "http://uk.virginmoneygiving.com/fundraiser-web/img/branding/no-profile-image.png"
end
