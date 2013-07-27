require 'spec_helper'

describe Task do
  describe "validations" do
    it { should validate_presence_of(:task_name) }
  end

  describe "associations" do
    it { should have_many(:users).through(:tags) }

    pending "removes any associated tags on destroy" do

    end
  end
end
