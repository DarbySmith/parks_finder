require 'rails_helper'

RSpec.describe ParkService do
  describe 'class methods' do
    describe '#park_finder' do
      it 'returns parks in the given state' do
        parks = ParkService.park_finder("GA")

        expect(parks).to be_a(Hash)
        expect(parks[:data]).to be_an(Array)
        park = parks[:data][0]

        expect(park).to have_key(:id)
        expect(park[:id]).to be_a(String)
        
        expect(park).to have_key(:url)
        expect(park[:url]).to be_a(String)
        
        expect(park).to have_key(:fullName)
        expect(park[:fullName]).to be_a(String)

        expect(park).to have_key(:parkCode)
        expect(park[:parkCode]).to be_a(String)

        expect(park).to have_key(:description)
        expect(park[:description]).to be_a(String)

        expect(park).to have_key(:latitude)
        expect(park[:latitude]).to be_a(String)

        expect(park).to have_key(:longitude)
        expect(park[:longitude]).to be_a(String)

        expect(park).to have_key(:latLong)
        expect(park[:latLong]).to be_a(String)

        expect(park).to have_key(:activities)
        expect(park[:activities]).to be_a(Array)

        expect(park).to have_key(:topics)
        expect(park[:topics]).to be_a(Array)

        expect(park).to have_key(:states)
        expect(park[:states]).to be_a(String)

        expect(park).to have_key(:contacts)
        expect(park[:contacts]).to be_a(Hash)

        expect(park).to have_key(:entranceFees)
        expect(park[:entranceFees]).to be_a(Array)

        expect(park).to have_key(:entrancePasses)
        expect(park[:entrancePasses]).to be_a(Array)

        expect(park).to have_key(:directionsInfo)
        expect(park[:directionsInfo]).to be_a(String)

        expect(park).to have_key(:directionsUrl)
        expect(park[:directionsUrl]).to be_a(String)

        expect(park).to have_key(:operatingHours)
        expect(park[:operatingHours]).to be_a(Array)

        expect(park).to have_key(:addresses)
        expect(park[:addresses]).to be_a(Array)

        expect(park).to have_key(:images)
        expect(park[:images]).to be_a(Array)

        expect(park).to have_key(:weatherInfo)
        expect(park[:weatherInfo]).to be_a(String)

        expect(park).to have_key(:name)
        expect(park[:name]).to be_a(String)

        expect(park).to have_key(:designation)
        expect(park[:designation]).to be_a(String)
      end
    end
  end
end