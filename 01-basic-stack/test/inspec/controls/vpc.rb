# encoding: utf-8

title 'vpc'

instance_identifier = attribute('instance_identifier', description: 'Which stack to test')

describe aws_vpc_list do
  its('name') { should include "vpc-#{instance_identifier}" }
end

describe attribute('region', description: 'aws region') do
  it 'region attribute should be available' do
    expect(subject).not_to eq('')
  end
end
