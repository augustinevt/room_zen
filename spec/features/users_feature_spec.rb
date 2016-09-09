require 'rails_helper'

describe 'The users feature' do

  it "should allow users to create a user" do
    visit users_path
    click_on 'Add New User'
    fill_in 'Username', with: 'Musashi'
    fill_in 'Email', with: 'miyamotomusashi@edo.com'
    fill_in 'Bio', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    click_on 'Create User'
    expect(page).to have_content('Musashi')
  end

  it 'should list all users on index' do
    user = User.create(username: 'Sasaki Kojiro')
    visit users_path
    expect(page).to have_content('Sasaki Kojiro')
  end

  it "should allow users to create a user" do
    user = User.create(username: 'Sasuke Kojiro')
    visit user_path(user)
    click_on 'Edit'
    fill_in 'Username', with: 'Sasaki Kojiro'
    click_on 'Update User'
    expect(page).to have_content('Sasaki Kojiro')
  end



end
