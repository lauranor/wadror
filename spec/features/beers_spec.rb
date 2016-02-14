require 'rails_helper'

include Helpers

describe "Beer" do
  before :each do
    sign_in(username: "Pekka", password: "Foobar1")
  end

  describe "When signed in" do
    it "creates beer when name not empty" do
    visit new_beer_path

    fill_in('beer[name]', with:'O')

    expect{
      click_button('Create Beer')
    }.to change{Beer.count}.by(1)
    end

    it "doesnt save if name empty" do
      visit new_beer_path

      fill_in('beer[name]', with:'')

      expect{
        click_button('Create Beer')
      }.not_to change{Beer.count}
      expect(page).to have_content "Name can't be blank"
    end

  end
end