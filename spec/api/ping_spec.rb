require 'rails_helper'

RSpec.describe 'ping', type: :request do
  before do
    get api_messages_ping_path
  end

  it 'responds with pong' do
    document = response.parsed_body
    expect(document['data']).to have_attribute(:response).with_value('PONG')
  end

  it 'responds with OK status' do
    expect(response).to have_http_status(:ok)
  end
end
