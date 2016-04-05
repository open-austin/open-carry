# require rspec?

describe "Businesses API" do
  it 'sends a list of messages' do

    get '/api/businesses'

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of businesses are returned
    expect(json['businesses'].length).to eq(2)
  end
end

describe "Businesses API" do
  it 'sends a specific business' do
    get 'api/business/1'

    json = JSON.parse(response.body)

    expect(json['business/1']).length.to_eq(1)
  end
end
