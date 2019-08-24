class View

	def display_task(tasks)

		if tasks.length > 0			
			puts "-------------"
			puts "Here is your task summary:"
			tasks.each_with_index do |task, index|
				
				if task.done == true
					status = "[x]"
				else
					status = "[ ]"
	 			end

				puts "#{index + 1} #{status} #{task.description}"
			end
			puts "-------------"
		end
	end

	def ask_user_for_description
		puts "What task do you want to add?"
		print "> "
		answer = gets.chomp
		return answer 
	end

	def ask_user_task_for_task_id
		puts "Which task number would you like to mark as done?"
		print "> "
		answer = gets.chomp.to_i - 1
		return answer
	end

	def ask_user_for_deletion
		puts "Which tasks number would you like to delete from the list?"
		print "> "
		answer = gets.chomp.to_i - 1
		return answer
	end
end