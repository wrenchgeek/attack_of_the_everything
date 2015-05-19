require('spec_helper')
require('player')
require('room')

describe(Item) do
  it { should belong_to(:room) }
end
