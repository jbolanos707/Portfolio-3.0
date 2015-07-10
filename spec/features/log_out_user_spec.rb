require 'rails_helper'

describe 'log out path' do
  it "will log out a user" do
    user = FactoryGirl.create(:user)
    visit 'users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    click_button 'Log Out'

    expect(page).to have_content "Signed out successfully."
  end
end
