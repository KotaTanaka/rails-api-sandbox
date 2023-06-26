class Label < ApplicationRecord
  before_create :set_uuid

  validates :name, presence: true, length: { minimum: 1, maximum: 20 }

  def set_uuid
    self.id = SecureRandom.uuid
  end
end