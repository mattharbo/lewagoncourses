class Router

	def initialize(controller)
		@controller = controller
	end

	def start_app
		loop do
			display_menu
			choice = gets.chomp.to_i
			case choice
				when 1 then @controller.create_task
				when 2 then @controller.display_all_task
				when 3 then @controller.mark_task_as_done
				when 4 then @controller.delete_task_from_repo
			end
		end
	end

	private

	def display_menu
		puts "_______________________"
		puts "1. Create a task"
		puts "2. Display all task(s)"
		puts "3. Mark tasks as done"
		puts "4. Delete a task"
		puts "_______________________"
	end
end

