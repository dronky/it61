require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe 'GET #show' do
    let(:event) {create(:event)}

    it 'show rendering' do
      get :show, params: {id: event.id}
      expect(response).to render_template :show
    end
  end
end
