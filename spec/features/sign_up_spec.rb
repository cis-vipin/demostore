require 'spec_helper'

feature 'Visitor signs up' do
  scenario 'with valid email and password' do
    sign_up_with 'arun.j@cisinlabs.com', 'arun123456','arun123456'
    expect(page).to have_content('Logout')
  end

  scenario 'with invalid email' do
    sign_in_with 'invalid_email', 'password'
    expect(page).to have_content('Sign in')
  end

  scenario 'with blank password' do
    sign_in_with 'valid@example.com', ''
    expect(page).to have_content('Sign in')
  end

  def sign_in_with(email, password)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_on 'Sign in'
  end

  def sign_up_with(email, password,password_confirmation)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password_confirmation
    click_on 'Sign up'
  end
end