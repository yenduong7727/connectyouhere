class Accomodation < ActiveRecord::Base

	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :roomtype, presence: true
	validates :location, presence: true, length: { maximum: 140 }
	validates :description, presence: true
	validates :price, presence: true
	validates :contact_name, presence: true
	validates :contact_phone, presence: true
	validates :user_id, presence: true
end
