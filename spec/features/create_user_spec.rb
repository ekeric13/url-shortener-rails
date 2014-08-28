
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



# feature "user signs up" do
#   scenario 'user sees username on landing page' do
#     visit root_path
#     click_link 'Sign Up'

#     # User.create(:username => 'God', :password => 'Jesus')
#     fill_in 'Username', with: 'hey'
#     fill_in 'Password', with: 'there'
#     click_button 'Create User'

#     click_link "edit your page"

#     fill_in 'Password', with: 'this'
#     click_button 'Update User'
#     expect(page).to have_css ".test2", "this"
#   end
# end
