require 'spec_helper'
require "factories/products"

describe Product do

  before do
    @product = Product.new(name: "Example User", price: 123 ,stock: 10,description: "This is test")
  end

  subject { @product }

  it { should respond_to(:name) }

  it { should be_valid }

  describe "when name is not present" do
    before { @product.name = " " }
    it { should_not be_valid }
  end

  describe "when name is present" do
    before { @product.name = "Arun " }
    it { should be_valid }
  end

  describe "when price is present" do
    before { @product.price = "123" }
    it { should be_valid }
  end

  describe "when price is not present" do
    before { @product.price = " "}
    it { should_not be_valid }
  end


  it "has a valid factory" do
    FactoryGirl.create(:product).should_not be_valid 
  end

end