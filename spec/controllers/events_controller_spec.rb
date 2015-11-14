require 'rails_helper'

describe EventsController do
  let(:user) { create(:user) }

  before { sign_in user }

  describe '#index' do
    def do_request
      get :index
    end

    before { do_request }

    xit { expect(response).to be_success }
  end

  describe '#new' do
    def do_request
      get :new
    end

    before { do_request }

    xit { expect(assigns(:event)).to be_instance_of(Event) }
    xit { expect(response).to be_success }
  end

  describe '#create' do
    def do_request
      post :create, event: params
    end

    context 'success' do
      let(:params) { attributes_for(:event) }

      xit 'creates new event' do
        expect { do_request }.to change(Event, :count).by(1)
      end

      xit 'redirects' do
        do_request
        expect(response).to redirect_to event_path(assigns(:event))
      end
    end

    context 'failure' do
      let(:params) { Hash(name: nil) }

      xit 'does not create event' do
        expect { do_request }.not_to change(Event, :count)
      end

      xit 'renders new' do
        do_request
        expect(response).to render_template(:new)
      end
    end
  end

  describe '#show' do
    let(:event) { create(:event, user: user) }

    def do_request
      get :show, id: event.id
    end

    before { do_request }

    xit { expect(assigns(:event)).to eq event }
    xit { expect(response).to be_success }
  end

  describe '#edit' do
    let(:event) { create(:event, user: user) }

    def do_request
      get :edit, id: event.id
    end

    before { do_request }

    xit { expect(assigns(:event)).to eq event }
    xit { expect(response).to be_success }
  end

  describe '#update' do
    let(:event) { create(:event, user: user) }

    def do_request
      patch :update, id: event.id, event: params
    end

    before { do_request }

    context 'success' do
      let(:params) { Hash(id: event.id, name: event.name + '-modified') }

      before { do_request }

      xit { expect(assigns(:event).name).to match '-modified' }
      xit { expect(response).to redirect_to event_path(assigns(:event)) }
    end

    context 'failure' do
      let(:params) { Hash(name: '') }

      xit { expect(response).to render_template :edit }
    end
  end

  describe '#destroy' do
    let!(:event) { create(:event, user: user) }

    def do_request
      delete :destroy, id: event.id
    end

    xit 'deletes a event' do
      expect { do_request }.to change(Event, :count).by(-1)
    end

    xit 'redirects' do
      do_request
      expect(response).to redirect_to events_url
    end
  end
end
