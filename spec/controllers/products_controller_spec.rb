require 'spec_helper'

describe ProductsController do

  before (:each) do
    @product = FactoryGirl.create(:product)
  end

  describe "GET 'show'" do
    it "should be successful" do
      get :show, :id => @product.id
      response.should be_success
    end

    it "should find the right product" do
      get :show, :id => @product.id
      assigns(:product).should == @product
    end
  end
end
