require 'rails_helper'

RSpec.describe "pages", :type => :request do
  it "render home page" do
    user = FactoryBot.create(:contact)

    #get "/"
    get pages_url


    fill_in "first_name", with: user.first_name
    fill_in "last_name", with: user.last_name
    fill_in "email", with: user.email
    fill_in "subject", with: user.subject
    fill_in "comment", with: user.comment
    click_button 'send message'
    
    #expect(current_url).to eq(dashboard_url)
    #expect(page).to have_selector('#success-message', text: 'Your message is sent successfully')
    

    #post "contact/create", 
    #assert_select ".header .username", :text => "jdoe"
    post :create, contact: attributes_for(:contact)
    expect(Contact.count).to eq(1)
  end
end