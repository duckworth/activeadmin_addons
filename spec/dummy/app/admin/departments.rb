ActiveAdmin.register Department do
  permit_params :name, departments_cities_attributes: [:id, :city_id, :_destroy]

  form do |f|
    f.inputs do
      f.input :name
    end
    f.inputs do
      f.has_many :departments_cities, allow_destroy: true do |city|
        city.input :city, as: :nested_select, required: true,
                             level_1: { attribute: :country },
                             level_2: { attribute: :region },
                             level_3: { attribute: :city }
      end
    end
    f.actions
  end
end
