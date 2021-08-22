require 'rails_helper'

RSpec.describe 'AnyLoginMultiple', type: :request do
  describe 'POST sign_in' do
    context 'User login' do
      let!(:user) { create(:user, email: 'example@example.com') }

      it 'before sign in, not contain user email' do
        get '/'
        expect(response.body).not_to include 'example@example.com'
      end

      it 'after sign in, contain user email' do
        post easy_login.sign_in_path, params: { as: 'User', id: 1 }
        get '/'
        expect(response.body).to include 'example@example.com'
      end
    end

    context 'Staff login' do
      let!(:staff) { create(:staff, email: 'example-staff@example.com') }

      it 'before sign in, not contain staff email' do
        get '/'
        expect(response.body).not_to include 'example-staff@example.com'
      end

      it 'after sign in, contain staff email' do
        post easy_login.sign_in_path, params: { as: 'Staff', id: 1 }
        get '/'
        expect(response.body).to include 'example-staff@example.com'
      end
    end
  end
end
