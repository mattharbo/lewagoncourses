require_relative "router"
require_relative "controller"
require_relative "repository"
require_relative "view"

my_repository = Repository.new

my_view = View.new

my_controller = Controller.new(my_view, my_repository)

my_router = Router.new(my_controller)

my_router.start_app