require 'spec_helper'

describe TaskMaker do
  let(:task_params) {{
                 :task_name => 'name',
                 :task_date => Date.today(),
                 :blockers => 'no blockers',
                 :details => 'a task'
                }}
  let(:user) { User.new(:email => 'eli@somewhere.com', :password => 'something') }
  let(:user2) { User.new(:email => 'christopher@somewhereelse.com', :password => 'somethingelse') }
  it 'creates a task with the given params' do
    Task.should_receive(:new).with(task_params)

    described_class.task_for_user(:task_params => task_params, :users => [user])
  end

  it 'links a created task to a user' do
    expect { described_class.task_for_user(:task_params => task_params, 
                                            :users => [user]) }.to change(Tag, :count).by(1)
  end

  it 'works with multiple users' do
    expect { described_class.task_for_user(:task_params => task_params, 
                                            :users => [user,user2]) }.to change(Tag, :count).by(2)

  end

  it 'raises on a bad task' do
     expect { described_class.task_for_user(:task_params => {}, 
                                            :users => [user]) }.to raise_exception(TaskMaker::BadTask)

  end

  it 'passes the exception error message up from Task' do
  end

  it 'handles bad users' do

  end
end
