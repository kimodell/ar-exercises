class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :carry_mens_or_womens_apparel

  def carry_mens_or_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry mens or womens apparel")
    end
  end
end
