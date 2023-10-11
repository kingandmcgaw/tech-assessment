require 'rails_helper'

RSpec.describe "User Adds Answer", type: :feature do
  before do
    @kirk = User.create! name: 'Kirk'
    @spock = User.create! name: 'Spock'
    @mccoy = User.create! name: 'McCoy'
    @sulu = User.create! name: 'Sulu'

    @q1 = Question.create! text: 'What colour is the sky?', user: @spock
    @q2 = Question.create! text: 'Why is the sky blue?', user: @kirk
  end

  describe "GET /home" do
    it "returns http success" do
      visit "/"
      expect(page).to have_title("Questions App")
      click_button('Spock')
      expect(page).to have_text("Questions")
      visit "/questions/#{@q2.id}"
      fill_in "answer_text", with: "Blue"
      click_button('Post answer')
      expect(page).to have_text("Answer by #{@spock.name}")
    end
  end
end
