require 'spec_helper'

describe Tag do
  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:task) }
  end
end
