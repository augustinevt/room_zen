require 'rails_helper'

describe 'The house feature' do
  it 'should allow a user to make a house' do
    user = User.create(email: "foo", password: "foo", password_confirmation: "foo")
    visit houses_path
    click_on 'Add New House'
    fill_in 'Title', with: 'Fort Disapointment'
    click_on 'Create House'
    expect(page).to have_content('Fort Disapointment')
  end
  it "should allow a user to update a house" do
    user = User.create(email: "foo", password: "foo", password_confirmation: "foo")
    house = House.create(title: 'Tatimi Time', user_id: user.id)
    visit house_path(house)
    click_on 'Edit'
    fill_in 'Title', with: 'Tatami Time'
    click_on 'Update House'
    expect(page).to have_content('Tatami Time')
  end
  it "should list all houses on index" do
      user = User.create(email: "foo", password: "foo", password_confirmation: "foo")
      house = House.create(title: 'Tatami Time', user_id: user.id)
      visit houses_path
      expect(page).to have_content('Tatami Time')
  end
  it "allow user to delete a house" do
    user = User.create(email: "foo", password: "foo", password_confirmation: "foo")
    house = House.create(title: 'Tatami Time', user_id: user.id)
    visit house_path(house)
    click_on "Delete"
    expect(page).not_to have_content('Tatami Time')
  end
end
