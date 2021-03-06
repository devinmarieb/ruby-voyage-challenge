require 'rails_helper'
require_relative '../support/matchers/custom_cancan'

describe Canard::Abilities, '#employees' do
  let(:acting_employee) { FactoryGirl.create(:user, :employee) }

  subject(:employee_ability) { Ability.new(acting_employee) }

  describe 'on User' do
    let(:user) { FactoryGirl.create(:user) }

    it { is_expected.to be_able_to(:manage, acting_user) }
    it { is_expected.to be_able_to(:manage, user) }
    it { is_expected.to_not be_able_to(:destroy, user) }
  end
  # on User
end
