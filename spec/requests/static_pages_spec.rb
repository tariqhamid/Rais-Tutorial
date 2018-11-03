# frozen_string_literal: true

require 'rails_helper'
require 'support/utilities'

RSpec.describe 'Static Pages', type: :request do
  subject { page }

  describe 'Home pages' do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe 'Help pages' do
    before { visit help_path }

    it { should have_content('Help') }
  end

  describe 'About Pages' do
    before { visit about_path }

    it { should have_content('About Us') }
  end

  describe 'Contact Pages' do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
