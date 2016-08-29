require_relative 'Task'

RSpec.describe "completion"  do
	it 'decides if a task is completed or not' do
		task = Task.new("Clean House")
		task.complete!
		expect(task.status).to be(true)
	end

	it 'updates the content and time of a task' do
		task = Task.new("Buy the milk")
		task.update_content!("Walk the dog")
		expect(task.content).to eq("Walk the dog")
	end

	it 'adds a task to the list' do
		tasks = []
		tasks.add_task("Do Laundry")
		expect([]). to eq("Do Laundry")
	end
end