feature 'Enter players' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Frank vs. Dave"
  end
end
