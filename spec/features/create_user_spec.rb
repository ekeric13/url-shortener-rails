
feature "user goes somewhere" do
  scenario 'user sees their info on their user page' do
    visit new_user_path
    User.create(:username => 'erick', :password => 'erickrox')

    fill_in 'Username', with: 'erick'
    fill_in 'Password', with: 'erickrox'
    click_button 'Create User'

    expect(page).to have_css ".test", "Hello erick"
  end
end
