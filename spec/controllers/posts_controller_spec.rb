require 'spec_helper'

describe PostsController do
   describe "GET 'new'" do
       it "should be successful" do
           get 'new'
           response.should be_success
       end
   end
   describe "GET 'show'" do
       before(:each) do
         @post = Factory(:post)
       end
       it "should be successful" do
           get :show, :id => @post
           response.should be_success
       end
       it "should find the right user" do
           get :show, :id => @post
           assigns(:post).should == @post
       end
        
   end

end
