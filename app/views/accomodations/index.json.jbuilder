json.array!(@accomodations) do |accomodation|
  json.extract! accomodation, :title, :type, :location, :price, :bond, :available, :bedroom, :bathroom, :description, :smoking, :contact_phone, :contact_name
  json.url accomodation_url(accomodation, format: :json)
end