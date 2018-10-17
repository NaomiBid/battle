feature "Attacking" do
  scenario "should receive confirmation of attack" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "Dave attacked Mittens"
  end
end
