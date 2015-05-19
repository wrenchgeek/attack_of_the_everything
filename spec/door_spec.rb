require('spec_helper')
require('door')

describe(Door) do
  it { should have_one(:key) }
end
