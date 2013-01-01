require 'spec_helper'

describe Department do
  it { should validate_presence_of(:name) }

  it { should belong_to(:hospital) }
end
