require_relative "task"

class Controller

	def initialize(view, repository)
		@view = view
		@repository = repository
	end

	def create_task
		# Demander à l'utilisateur une description
		description = @view.ask_user_for_description
		# Créer la tâche
		task = Task.new(description)
		# Stocker la tâche dans le repository
		@repository.add(task)
	end

	def display_all_task
		# Récupération auprès du repository la liste des tâches
		all_tasks = @repository.all
		# Affichage des tâches par la view
		@view.display_task(all_tasks)
	end

	def mark_task_as_done
		#Demander au user l'id de la tache qu'il veut valider
		task_id = @view.ask_user_task_for_task_id
		#Recuperation de la tache dans le repo
		task = @repository.find(task_id)
		#Marquer la tache comme done
		task.mark_as_done
	end

	def delete_task_from_repo
		#Demander au user l'id de la task à supprimer
		task_to_delete = @view.ask_user_for_deletion
		#Recuperation du tableau contenant toutes les tasks
		all_tasks = @repository.all
		#Supprimer l'index du tableau
		all_tasks.delete_at(task_to_delete)
	end
end