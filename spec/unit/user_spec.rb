
describe User do
  before do
    User.delete_all
    @user = User.create(:username => 'erick', :password => 'erickrox')
  end
  it "should display the password" do
    expect(@user.display_password).to eq("erickrox")
  end
end
