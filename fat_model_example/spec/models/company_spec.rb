require 'rails_helper'

RSpec.describe Company do
  context '#small_business?' do
    before { subject.save! }

    context 'less than 500 employees' do
      before do
        10.times { subject.employees.create! }
      end

      specify 'is a small business' do
        expect(subject).to be_small_business
      end
    end

    context 'more than 500 employees' do
      before do
        501.times { subject.employees.create! }
      end

      specify 'is not a small business' do
        expect(subject).to_not be_small_business
      end
    end
  end
end
