require 'rails_helper'

describe Contact, type: :model do

  it "has a valid factory" do
    contact = create(:contact)
    expect(contact).to be_valid
    #Factory.create(:contact).should be_valid
  end

  it "is invalid without a firstname" do
    build(:contact, first_name: nil).should_not be_valid
  end

  it "is invalid without a lastname" do
    build(:contact, last_name: nil).should_not be_valid
  end

  it "is invalid without a email" do
    build(:contact, email: nil).should_not be_valid
  end
  it "is invalid without a subject" do
    build(:contact, subject: nil).should_not be_valid
  end
  it "is invalid without a comment" do
    build(:contact, comment: nil).should_not be_valid
  end
  

    # it { should_not allow_value("blah").for(:email) }
    # it { should allow_value("a@b.com").for(:email) }

  # describe Contact do
  #   it { should validates_presence_of(:first_name) }
  #   it { should validates_presence_of(:last_name) }
  #   it { should validates_presence_of(:email) }
  #   it { should validates_presence_of(:subject) }
  #   it { should validates_presence_of(:comment) }
  # end


end