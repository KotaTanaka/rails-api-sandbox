class Ticket < ApplicationRecord
  before_create :set_uuid

  validates :title, presence: true, length: { minimum: 1, maximum: 50 }
  validates :description, length: { maximum: 1000 }

  def set_uuid
    self.id = SecureRandom.uuid
  end
end