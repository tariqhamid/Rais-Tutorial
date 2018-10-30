require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "Home pages" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help pages" do
    it "sholud have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
end

describe "AboutPages" do
  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
  end
end
