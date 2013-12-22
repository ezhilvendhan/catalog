require 'spec_helper'

describe Product do

  before(:each) do
    @attr = {
      :name => "My New Product",
      :price => 100,
      :description => "Lorem ipsum dolor...."
    }
  end

  it "should create a new instance given a valid attribute" do
    Product.create!(@attr)
  end

  it "should require a name" do
    no_name_product = Product.new(@attr.merge(:name => ""))
    no_name_product.should_not be_valid
  end

  it "should require a price" do
    no_price_product = Product.new(@attr.merge(:price => ""))
    no_price_product.should_not be_valid
  end
end
