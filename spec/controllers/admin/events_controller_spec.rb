require 'rails_helper'

RSpec.describe Admin::EventsController, type: :controller do
  describe 'POST #create' do
    let!(:event) {create(:event)}

    context 'correct validation' do
      it 'creates a valid object' do
        expect {post :create, params: {event: attributes_for(:event)}}.to change(Event.all, :count).by(1)
      end
    end
  end
end
