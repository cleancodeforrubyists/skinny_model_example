require 'rails_helper'

RSpec.describe Company do
  context 'less than 500 employees' do
    before do
      subject.save!

      10.times do
        subject.employees.create!
      end
    end

    specify 'is a small business' do
      expect(subject).to be_small_business
    end
  end

  context 'more than 500 employees' do
    before do
      subject.save!

      501.times do
        subject.employees.create!
      end
    end

    specify 'is a small business' do
      expect(subject).to_not be_small_business
    end
  end
end
