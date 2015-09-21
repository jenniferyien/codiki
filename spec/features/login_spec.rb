require 'rails_helper'
require 'capybara/rails'
require 'capybara/rspec'

RSpec.describe 'Login Feature', type: :feature do
    it 'works' do
      visit '/'
   # click_link 'Login'
  #  expect(page.title).to eq "PanicButton"
     click_link 'Log In'

     fill_in "email", with: test_user.email
     fill_in "password", with: test_user.password
     click_button "Login"
     binding.pry
    end



end
