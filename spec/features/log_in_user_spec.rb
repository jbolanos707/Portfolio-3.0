require 'rails_helper'

describe "the log in process" do
  it "validats user and password" do
    user = FactoryGirl.create(:user)
    visit 'users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_content "Signed in successfully."
  end

  it "will flash an alert if the form is not filled out" do
    visit 'users/sign_in'
    click_button 'Log in'

    expect(page).to have_content "Invalid email or password."
  end

end
