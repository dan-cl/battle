require './app.rb'

feature 'PLayers switch turns' do
  scenario "P2 attacks P1 and P1's HP is reduced by 10" do
    sign_in_and_play
    click_button 'Attack!!'
    click_link 'OK'
    click_button 'Attack!!'
    expect(page).not_to have_text("Dan: 60HP")
    expect(page).to have_text("Dan: 50HP")
  end
end
