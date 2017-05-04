class ToursGrid
  include Datagrid

  scope do
    Tour.all
  end

  filter(:by_country)
  filter(:by_city)
  filter(:by_number_of_day)
  filter(:by_number_of_night)
  filter(:by_hotel_rate)
  # new fields
  filter(:by_tour_type)
  filter(:by_budget)
end
