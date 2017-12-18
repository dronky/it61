require 'rails_helper'

RSpec.describe Admin::EventsController, type: :controller do
  describe 'POST #create' do
    context 'correct validation' do
      let(:organizer) {create(:organizer)}
      let(:place) {create(:place)}
      let(:event_params) do
        attributes_for(:event, organizer_id: organizer.id, place_attributes: attributes_for(:place))
      end

      before do
        @admin = Admin.create(email: 'ivan@ivan.com', password: '12345')
      end
      it 'creates a valid object' do
        expect {post :create, params: {event: event_params}, session: {'user_id' => @admin.id}
        }.to change(Event.all, :count).by(1)
      end
    end
  end
end
