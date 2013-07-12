require 'spec_helper'

describe Task do
  describe "validations" do
    it { should validate_presence_of(:task_name) }
  end
end
