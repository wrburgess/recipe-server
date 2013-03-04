require_relative '../../../spec_helper'

describe Api::V1::FormulasController do

  before do
    FactoryGirl.create(:formula)
  end

  it 'should get show' do
    get :show, id: Formula.first.id, format: :json
    response.should be_success
  end

  it 'should get index' do
    get :index, format: :json
    response.should be_success
  end

end