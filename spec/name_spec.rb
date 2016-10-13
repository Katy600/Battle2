require './app.rb'
require 'spec_helper'

feature 'Start' do
  scenario 'Get players names and display them' do
    sign_in_and_play
    expect(page).to have_content('Li vs. Katy')
  end
end

feature 'Hit point information' do
  scenario "allow player1 to see player2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Katy's hit points: 60/60")
  end
end

  feature 'There is an attack button' do
    scenario "it allows player1 to attack player2" do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content('Attack Successfull!')
    end
end
