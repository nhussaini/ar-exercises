class Store < ActiveRecord::Base
  Store.has_many :employees

  validates :name, length: { minimum: 3}

  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :at_least_one_apparel

  def at_least_one_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:apparel, "can't be both false")
    end
  end

end
