require 'rails_helper'
describe 'deletes one pet', :type=>:request do
  before {
    @pet = FactoryGirl.create(:pet)
    delete '/pets/'+@pet.id.to_s
  }

  it 'returns delete confirmation' do
    expect(JSON.parse(response.body)['message']).to eq('Pet has been deleted.')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
