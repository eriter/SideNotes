require 'spec_helper'

describe UserTask do

  describe "associations" do
    it { should belong_to(:users) }
    it { should belong_to(:tasks) }
  end
end
