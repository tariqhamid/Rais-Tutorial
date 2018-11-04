# frozen_string_literal: true

require 'rails_helper'
require 'support/utilities'

RSpec.describe 'Static Pages', type: :request do
  subject { page }

  shared_examples_for 'all static pages' do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe 'Home pages' do
    before { visit root_path }
    let(:heading) { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like 'all static pages'
    it { should_not have_title('| Home') }
  end

  describe 'Help pages' do
    before { visit help_path }

    let(:heading) { 'Help' }
  end

  describe 'About Pages' do
    before { visit about_path }

    let(:heading) { 'About Us' }
  end

  describe 'Contact Pages' do
    before { visit contact_path }

    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
  end

  it 'should have the right links on the layout' do
    visit root_path
    click_link 'Sign up now!'
    expect(page).to have_title(full_title('Sign up'))
    click_link 'sample app'
    expect(page).to have_title(full_title(''))
    within('header') do
      click_link 'About'
      expect(page).to have_title(full_title('About Us'))
      click_link 'Help'
      expect(page).to have_title(full_title('Help'))
      click_link 'Home'
      expect(page).to have_title(full_title(''))
    end
    within('footer') do
      click_link 'About'
      expect(page).to have_title(full_title('About Us'))
      click_link 'Contact'
      expect(page).to have_title(full_title('Contact'))
    end
  end
end
