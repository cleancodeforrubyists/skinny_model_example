require 'rails_helper'

RSpec.describe CompanySizeStandard do
  subject { CompanySizeStandard.new(company) }

  context '#small?' do
    let(:company) { double(:company, employees: employees) }

    context 'less than 500 employees' do
      let(:employees) { double(:employees, count: 10) }

      specify 'is a small business' do
        expect(subject).to be_small
      end
    end

    context 'more than 500 employees' do
      let(:employees) { double(:employees, count: 501) }

      specify 'is a small business' do
        expect(subject).to_not be_small
      end
    end
  end
end
