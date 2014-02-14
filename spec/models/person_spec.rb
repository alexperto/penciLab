require 'spec_helper'

describe Person do
  describe :name do
    it "can't be blank" do
      person = build :person, :name => nil
      person.should be_invalid
      person.errors.messages[:name].should include "can't be blank"
    end
  end

  describe :first_last_name do
    it "can't be blank" do
      person = build :person, :first_last_name => nil
      person.should be_invalid
      person.errors.messages[:first_last_name].should include "can't be blank"
    end
  end

  describe :gender do
    it "can't be blank" do
      person = build :person, :gender => nil
      person.should be_invalid
      person.errors.messages[:gender].should include "can't be blank"
    end

    it "should be male or female" do
      Person::GENDERS.each do |g|
        build( :person, :gender => g ).should be_valid
      end
    end

    it "should be invalid with other value" do
      person = build :person, :gender => :foo
      person.should be_invalid
      person.errors.messages[:gender].inspect
    end
  end

  describe :date_of_birth do
    it "can't be blank" do
      person = build :person, :date_of_birth => nil
      person.should be_invalid
      person.errors.messages[:date_of_birth].should include "can't be blank"
    end

    it 'must be in the past' do
      person = build :person, :date_of_birth => 1.year.from_now
      person.should be_invalid
    end

    it 'must be a date' do
      person = build :person, :date_of_birth => 'Not a date'
      person.date_of_birth.should be_nil
    end
  end

  describe :full_name do
    it "should join name and lastnames" do
      person = create :person, :name => "John", :first_last_name => "Doe", :second_last_name => "Perez"
      person.full_name.should eql "John Doe Perez"
    end

    it "should return only name and first_last_name" do
      person = create :person, :name => "John", :first_last_name => "Doe", :second_last_name => nil
      person.full_name.should eql "John Doe"
    end
  end

  describe :age do
    it 'is 8 years old' do
      person = build :person, :date_of_birth => (Date.today - 8.years)
      person.age.should eql(8)
    end
  end
end
