class Department < ActiveRecord::Base
  has_many :departments_cities
  accepts_nested_attributes_for :departments_cities, allow_destroy: true

  def self.ransackable_attributes(_auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end

  def self.ransackable_associations(_auth_object = nil)
    ["departments_cities"]
  end
end
