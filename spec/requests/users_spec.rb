require 'spec_helper'
describe "home page" do
  it "displays the user's username after successful login" do
    user = User.create!(:email => "jdoe@gmail.com", :password => "secret1234")
    get "/users/sign_in"
    assert_select "form" do
      assert_select "input[name=?]", "user[email]"
      assert_select "input[name=?]", "user[password]"
      assert_select "input[type=?]", "submit"
    end

    post "/users/sign_in", :email => "jdoe@gmail.com", :password => "secret1234"
    #assert_select ".header .username", :text => "jdoe"
  end
end