class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :miss
  validates :title, :message, presence: true
  validates :terms_of_service, acceptance: true
end
