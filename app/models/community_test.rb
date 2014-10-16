require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
	
	test 'create community with valid name' do
		community = Community.new name:'Good'
		assert community.valid?, 'Community should be ok'

		community = Community.new name:'Good asdlf jsadlf jkalsdfj klasjdf'
		assert community.valid?, 'Community should be ok'
	end

	test 'fail when community name is too small' do
		community = Community.new name: 'Bad'
		assert community.invalid?

		community = Community.new name: ''
		assert community.invalid?

		community = Community.new name: nil
		assert community.invalid?

		community = Community.new name: 1
		assert community.invalid?
	end
end