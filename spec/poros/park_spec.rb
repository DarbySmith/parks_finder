require 'rails_helper'

RSpec.describe Park do
  it 'exists' do
    attributes = {
      fullName: "Andersonville National Historic Site",
      description: "Home to the National Prisoner of War Museum and serves as a memorial to all American prisoners of war.",
      directionsInfo: "Andersonville National Historic Site is located in southwest Georgia. The park is approximately 12 miles north of Americus and 11 miles south of Montezuma on GA-49.",
      operatingHours: [
        {"standardHours": {
          "wednesday": "8:00AM - 5:00PM",
          "monday": "8:00AM - 5:00PM",
          "thursday": "8:00AM - 5:00PM",
          "sunday": "8:00AM - 5:00PM",
          "tuesday": "8:00AM - 5:00PM",
          "friday": "8:00AM - 5:00PM",
          "saturday": "8:00AM - 5:00PM"
      }}]}

      park = Park.new(attributes)

      expect(park).to be_instance_of(Park)
      expect(park.full_name).to eq("Andersonville National Historic Site")
      expect(park.description).to eq("Home to the National Prisoner of War Museum and serves as a memorial to all American prisoners of war.")
      expect(park.directions_info).to eq("Andersonville National Historic Site is located in southwest Georgia. The park is approximately 12 miles north of Americus and 11 miles south of Montezuma on GA-49.")
      expect(park.standard_hours_operation).to eq({
        "wednesday": "8:00AM - 5:00PM",
        "monday": "8:00AM - 5:00PM",
        "thursday": "8:00AM - 5:00PM",
        "sunday": "8:00AM - 5:00PM",
        "tuesday": "8:00AM - 5:00PM",
        "friday": "8:00AM - 5:00PM",
        "saturday": "8:00AM - 5:00PM"
    })
  end
end