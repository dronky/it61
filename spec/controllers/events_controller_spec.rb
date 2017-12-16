require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe 'GET #show' do
    let(:event) {create(:event)}
    before {get :show}

    it 'show rendering' do
      expect(response).to render_template :show
    end
  end
end
