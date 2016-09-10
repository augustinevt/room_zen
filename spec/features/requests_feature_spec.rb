require 'rails_helper'

describe 'the request feature should' do
  it "allow a user to create a request" do
    user = User.create(username: "Minunomuri", email: "foo", password: "foo", password_confirmation: "foo")
    house = House.create(title: "Boys Fort", user_id: user.id)
    visit house_path(house)
    click_on "Apply"
    fill_in 'Message', with: "Hello, I am the retainer of the Shogun"
    click_on "Create Request"
    expect(page).to have_content("Hello, I am the retainer of the Shogun")
  end
end
