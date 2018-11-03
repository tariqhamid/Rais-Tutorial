# frozen_string_literal: true

require 'rails_helper'
require 'support/utilities'

RSpec.describe 'User Pages', type: :request do
  subject { page }

  describe 'signup page' do
    before { visit signup_path }

    it { should have_title(full_title('Sign up')) }
    it { should have_content('Sign up') }
  end
end
