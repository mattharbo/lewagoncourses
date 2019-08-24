require_relative "controller"
require_relative "view"
require_relative "repository"

my_repo = Repository.new
my_view = View.new

controller = Controller.new(my_view, my_repo)

controller.display_all_task

controller.create_task
controller.display_all_task

controller.create_task
controller.display_all_task

controller.mark_task_as_done
controller.display_all_task

controller.create_task
controller.display_all_task

controller.delete_task_from_repo
controller.display_all_task