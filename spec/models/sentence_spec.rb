require 'rails_helper'

RSpec.describe Sentence, type: :model do
  describe 'associations' do
    it { should have_many(:entities) }
  end
end