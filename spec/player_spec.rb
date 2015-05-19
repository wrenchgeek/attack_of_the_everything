require('spec_helper')
	describe(Player) do
	it { should have_one(:room)}
	it { should have_one(:inventory)}
	end
