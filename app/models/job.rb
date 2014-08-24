class Job < ActiveRecord::Base
	extend FriendlyId
	friendly_id :role, use: :slugged

	belongs_to :user
	belongs_to :classification
	validates :employer, presence: true, length: { maximum: 140 }
	validates :role, presence: true, length: { maximum: 140 }
	validates :description, presence: true
	validates :criteria, presence: true
	validates :salary_type, presence: true
	validates :closed_date, presence: true
	validates :category, presence: true
	validates :apply, presence: true
	validates :classification_id, presence: true
	validates :user_id, presence: true
end
