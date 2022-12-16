require 'rails_helper'

RSpec.describe 'Parks index page' do
  it 'displays the full name, description, directions, and standard hours for a park' do
    visit root_path

    select "Georgia"
    click_on "Find Parks"

    expect(current_path).to eq(parks_path)
    expect(page).to have_content("Andersonville National Historic Site")
    expect(page).to_not have_content("Rocky Mountain National Park")
  end
end