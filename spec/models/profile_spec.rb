require 'spec_helper'

describe Profile do
  context :associations do
    it { should belong_to :user }
    it { should belong_to :person }
  end

  describe :user do
    it "can't be blank" do
      profile = build :profile, :user_id => nil
      profile.should be_invalid
      profile.errors.messages[:user_id].should include "can't be blank"
    end
  end

  describe :person do
    it "can't be blank" do
      profile = build :profile, :person_id => nil
      profile.should be_invalid
      profile.errors.messages[:person_id].should include "can't be blank"
    end
  end

  describe :type do
    it "can't be blank" do
      profile = build :profile, :type => nil
      profile.should be_invalid
      profile.errors.messages[:type].should include "can't be blank"
    end
  end
end
