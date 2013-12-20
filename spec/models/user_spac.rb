require "spec_helper"
require "factories/users"
describe User do
  it "orders by last name" do
    lindeman = User.create!(email: "arun.j@cisinlabs.com", password: "arun123456") 
  end

  it "has a valid factory" do
  	FactoryGirl.create(:user).should be_valid 
  end

  it "is invalid without a email" do
  	FactoryGirl.build(:user, email: nil).should_not be_valid 
  end 

  it "is invalid without a password" do
  	FactoryGirl.build(:user, password: nil).should_not be_valid 
  end 

  it "is valid without a addredss" do
  	FactoryGirl.build(:user, address: nil).should be_valid 
  end


end