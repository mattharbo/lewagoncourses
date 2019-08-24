# Lesson #10 • Cookbook

# ______________________________________ TO-DO list exercise ______________________________________

# ------------MODELISATION

#### Les objets du modèles:

# Task
# Variables d'instance :
# • @description -> string
# • @done -> boolean
# Méthode d'instance :
# • mark_as_done

#### La "base de données" du modèle

# Repository
# Variables d'instance :
# • tasks_listing -> array
# Méthodes d'instance :
# • add
# • delete

#### Les "vues" du modèle

# View
# Variables d'instance :
# il n'y a pas de variable d'instance dans une vue car elle est là uniquement pour faire du rendu
# il aura "QUE" des méthodes d'instance afin de dialoguer avec l'utilisateur
# Méthodes d'instance :
# • display_task(task

#### Le "controller" du modèle ==> les ACTIONS utilisateur

# Controller
# Variable d'instances :
# A DEFINIR
# Méthodes d'instance :
# • create_task
# • display_all_task
# • mark_task_as_done
# • destroy_a_task