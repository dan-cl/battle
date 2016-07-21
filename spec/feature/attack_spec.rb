feature 'attack' do
  scenario 'shows player has been attacked' do
    sign_in_and_play
    click_button "Attack"
    click_link "Back to BATTLE!!"
    expect(page).not_to have_content 'Dave: 60HP'
    expect(page).to have_content 'Dave: 50HP'
  end
end
