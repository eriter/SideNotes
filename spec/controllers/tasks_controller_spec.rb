require 'spec_helper'
include Devise::TestHelpers

describe TasksController do
  let(:current_user) { User.new(:email => 'eli@elisplace.com', 
                                :password => 'candybars' ) }
  before do
    current_user.save
    sign_in current_user
  end

  let(:form_params) { {'foo' => 'bar' } }
  let(:valid_params) { {'task' => form_params } }
  describe "#create" do
    it "should pass params and the user to the TaskMaker object" do
      TaskMaker.should_receive(:task_for_user).with(:params => form_params,
                                                    :user => current_user)
      post :create, valid_params
    end

    it "should trap TaskMakerExceptions and set the flash error" do
    end
  end
end
