class Rambling < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://uk.virginmoneygiving.com/fundraiser-web/img/branding/no-profile-image.png"
end
