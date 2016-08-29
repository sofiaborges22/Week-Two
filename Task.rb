class Task
    attr_reader :content, :id, :status, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @status = false
        @created_at = Time.now
        @updated_at = nil
    end

    def complete?
    	@status
    end

    def complete!
    	@status = true
    end

    def make_incomplete!
    	@status = false
    end

    def update_content!(update_content)
    	@updated_at = Time.now
    	@content = update_content
    end
end

class TodoList
	attr_reader :tasks
	def initialize(user)
		@user = user
		@tasks = []
		@todo_store = YAML::Store.new("./public/tasks.yml")
	end

	def add_task(task)
		@tasks.push(task)
	end

	def delete_task(id)
		@tasks.delete_if {|task| task.id == id}
	end

	def find_task_by_id(id)
		if id
			@tasks.find {|x| x.id == id}
		else
			nil
		end
		
	end

	def sort_by_created
		sorted_tasks = @tasks.sort do |task1, task2|
			task1.created_at <=> task2.created_at
		end
	end

	def save
  		@todo_store.transaction do 
     		 @todo_store[@user] = @tasks
  		end
	end
end

task = Task.new("Buy the milk")
puts task.id
puts task.content
puts task.created_at
task.complete?
task.complete!
puts task.complete?
puts task.update_content!("Walk the dog")

task2 = Task.new("Wash the car")
puts task2.id
puts task2.content
puts task2.created_at
task2.complete!
task2.make_incomplete!
puts task2.complete?

todo_list = TodoList.new("Josh")
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy the milk"))
task = todo_list.find_task_by_id(1)
task2 = todo_list.find_task_by_id(2)
puts task.content
puts task2.content
todo_list.sort_by_created

todo_list.save
