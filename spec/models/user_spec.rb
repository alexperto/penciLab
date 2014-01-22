require 'spec_helper'

describe User do
  let(:user){ create :user }

  describe :email do
    it 'should be unique' do
      user
      new_user = build :user, :email => user.email
      new_user.should be_invalid
      new_user.errors.messages[:email].should_not be_empty
    end

    it "can't be blank" do
      user = build :user, :email => nil
      user.should be_invalid
      user.errors.messages[:email].should include "can't be blank"
    end
  end

  describe :password do
    it "can't be blank" do
      user = build :user, :password => nil
      user.should be_invalid
      user.errors.messages[:password].should include "can't be blank"
    end

    it "should be 4 character length minimum" do
      user = build :user, :password => '1'
      user.should be_invalid
      user.errors.messages[:password].should include "is too short (minimum is 8 characters)"
    end
  end
end