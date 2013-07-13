require 'spec_helper'

describe Task do
  describe "validations" do
    it { should validate_presence_of(:task_name) }
  end

  describe "associations" do
    it { should have_many(:users).through(:user_tasks) }
  end
end
