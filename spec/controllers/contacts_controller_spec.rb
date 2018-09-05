require 'rails_helper'

#RSpec.describe ContactsController, type: :controller do

  # describe "GET #new" do
  #   context "renders contacts form" do
  #     it "render form" do
  #     	get :new
  # 	    expect(response).to render_template('contacts/new')
  #       #post :create, contact: attributes_for(:contact)
  #       #expect(Contact.count).to eq(1)
  #     end
  #   end
  # end

  describe "POST #create" do
    context "with valid attributes" do
      it "create new contact" do
        post :create, contact: attributes_for(:contact)
        expect(Contact.count).to eq(1)
      end
    end
  end
#end
