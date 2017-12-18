require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe 'GET #index' do
    let(:events) {create_list(:event, 2)}
    before {get :index}

    it 'create an array of events' do
      expect(assigns(:events)).to match_array(events)
    end

    it 'index rendering' do
      expect(response).to render_template :index
    end
  end
end
