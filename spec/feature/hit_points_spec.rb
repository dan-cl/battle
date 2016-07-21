feature 'HP' do
  scenario 'shows hit points' do
    sign_in_and_play
    expect(page).to have_content "Frank: 60HP"
  end
end
