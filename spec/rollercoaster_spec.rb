require 'spec_helper'

# Describe our class
describe Rollercoaster do
	# Make variable available in every test and
	# reset it every time; it basically does
	# rollercoaster = Rollercoaster.new
	# but resets it to its initial state at
	# the beginning of each test
	let(:rollercoaster) { Rollercoaster.new }

	# Describe start instance method
	describe '#start' do
		# Prepare for test
		before { rollercoaster.start }

		# Once a rollercoaster is started, it should have an attribute called riding set to true
		it 'can start' do
			expect(rollercoaster.riding?).to be_truthy
		end
	end

	# Describe initialize method
	describe '#initialize' do
		it 'is not riding when just instantiated' do
			expect(rollercoaster.riding?).to be_falsey
		end
	end

	# Describe finish method
	describe '#finish' do
		# Prepare test
		before do
			rollercoaster.start
			rollercoaster.finish
		end

		it 'can finish' do
			expect(rollercoaster.riding?).to be_falsey
		end
	end
end
