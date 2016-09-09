require 'rails_helper'

describe 'The house feature' do
  it 'should allow a user to make a house' do
    user = User.create(email: "foo")
    visit houses_path
    click_on 'Add New House'
    fill_in 'Title', with: 'Fort Disapointment'
    click_on 'Create House'
    expect(page).to have_content('Fort Disapointment')
  end
end
