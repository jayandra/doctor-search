require 'spec_helper'

describe Department do
  it { should validate_presence_of(:name) }

  it { should have_many(:doctors)}
  it { should have_many(:services).dependent(:destroy)}
  it { should have_many(:hospitals).through(:services)}
end
