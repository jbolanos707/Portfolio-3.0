require 'rails_helper'

describe "sign up process" do
  it "validates user and password" do
    visit 'users/sign_up'
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => 'test1234'
    fill_in 'Password confirmation', :with => 'test1234'
    click_button 'Sign up'
    expect(page).to have_content "Welcome! You have signed up successfully."
  end

  it "shows flashes and alert when the form is not filled out" do
    visit new_user_registration_path
    click_button 'Sign up'
    expect(page).to have_content "errors prohibited this user from being saved:"
  end
end
