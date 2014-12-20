require 'rails_helper'

RSpec.describe Post, type: :model do

  subject { FactoryGirl.build :post }

  it 'respond to :title' do |variable|
    is_expected.to respond_to(:title)
  end

  it 'respond to :summary' do |variable|
    is_expected.to respond_to(:summary)
  end

  it 'respond to :text' do |variable|
    is_expected.to respond_to(:text)
  end

  context 'when :title is empty' do
    before { subject.title = ' ' }
    it { is_expected.to be_invalid }
  end

end
