require 'spec_helper'

describe UserTask do

  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:task) }
  end
end
