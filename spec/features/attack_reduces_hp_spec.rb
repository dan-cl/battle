require './app.rb'

feature 'Attack reduces opponents Hit-Points' do
  scenario "P1 attacks P2 and P2's HP is reduced by 10" do
    sign_in_and_play
    click_button 'Attack!!'
    expect(page).not_to have_text("Yuri: 60HP")
    expect(page).to have_text("Yuri: 50HP")
  end
end
