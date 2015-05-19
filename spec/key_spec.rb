require('spec_helper')

describe(Key) do
  it { should belong_to(:door) }
  it { should belong_to(:room) }
end
