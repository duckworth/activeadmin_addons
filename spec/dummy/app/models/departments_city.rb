class DepartmentsCity < ActiveRecord::Base
  belongs_to :department
  belongs_to :city

  def display_name
    "#{department.name} - #{city.name}"
  end
  def self.ransackable_attributes(_auth_object = nil)
      ["department_id", "city_id", "id"]
  end

  def self.ransackable_associations(_auth_object = nil)
    ["department", "city"]
  end
end
