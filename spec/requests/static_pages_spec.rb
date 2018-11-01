require 'rails_helper'

RSpec.describe 'Static Pages', type: :request do
  describe 'Home pages' do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it 'should have the base title' do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App')
    end

    it 'should not have acustom page title' do
      visit '/static_pages/home'
      expect(page).not_to have_title('|Home')
    end
  end

  describe 'Help pages' do
    it "sholud have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe 'About Pages' do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
