class Battle < ApplicationRecord
  has_many :restaurants
  enum status: [ :running, :ended ]

  def ends_at
    self.created_at + 5*60
  end
end
