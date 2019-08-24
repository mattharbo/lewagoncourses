# Lesson #14 • Actrive Record Basics

# ______________________________________ Overview ______________________________________

# Active record est une library de Rails mais qu'on peut utiliser en dehors de Rails

# C'est un design pattern
# Dans lequel il y a des OBJETS en mémoire qui sont mappés directement sur une table en BDD
# => autrement dit : une INSTANCE = une ligne dans une table en BDD
# => une VARIABLE D'INSTANCE = une colonne dans une table

# ______________________________________ What's Rake? ______________________________________

# C'est un gestionnaire de tâches

# Il permet d'exectuer une série de tâches comme des tests auto défini dans un fichier

# Dans le live coding, ils ont préparer un Rake file qui permet de faire toutes les opérations
# basiques sur les BDD (qu'on a directement lorsqu'on installe Rails)

# ______________________________________ Creation & modification du schéma ______________________________________

# 1. Création de la BDD
# ===> Se fait avec une commande Rake (je ne sais pas encore si c'est automatiquement fait avec Rails)

# 2. Création d'une table (définition un schéma)
# ==> Execution d'un fichier de migration avec une commande Rake

# 3. Modification de la structure d'une table
# ==> Execution d'un fichier de migration avec une commande Rake

# 4. Suppression d'une table
# ==> Execution d'un fichier de migration avec une commande Rake

# /!\ ATTENTION les migrations ActiveRecord ne servent qu'à définir ou remodeler les schémas !
# Elles ne manupilent pas de données ! Elles gèrents leur structure 

# ------------ Convention de nommage d'un fichier de migration

# c'est un fichier Ruby qui déclare une class

# Il commence toujours par un timestamp yyyymmddhhmmss_explictenamesnakelowercase.rb

# ------------ Structure d'un fichier de migration • CREATION D'UNE TABLE

class CreateRetaurants < ActiveRecord::Migration 
# c'est une classe qui hérite d'une classe parente d'AR!

	def change
		create_table :restaurants do |t|
			t.string :name
			t.string :address
			t.timestamps null: false #qui créer 2 colonnes "created_at" et "updated_at"
		end
	end

end

# Voici les exemples de méthode disponibles dans les fichiers de Migration AR

# - create_table
# - change_table
# - drop_table
# - add_column
# - change_column
# - rename_column
# - remove_column
# - add_index
# - remove_index

# ------------ Fichier de migration • AJOUT D'UN ATTRIBUT A UNE TABLE

# Qui correspond à l'ajout d'une variable d'instance d'une Class de modèle

class AddRatingToRestaurants < ActiveRecord::Migration

	def change

		add_column :restaurants, :rating, :integer
		
	end

end

# ______________________________________ Insertion des données dans le schéma ______________________________________

# Convention : si la table comporte un "S", le modèle est toujours au singulier

# Example : table ==> games /// class ==> Game

# Il n'y a pas besoin d'ATTR_READER et de variable d'instance dans initialize pour la class
# AR nous donne tout à disposition


# ----- Création de la class

class Game < ActiveRecord::Base # L'héritage donne accès aux readers et setters de toutes 
	# les colonnes de la BDD juste en ayant fait les migrations
end

# ----- Génération d'une instance & sauvegarde d'un record en BDD

monmatch = Game.new(home: 'Monaco', away: 'PSG')
monmatch.save(home: 'Monaco', away: 'PSG')

# ______________________________________ Récupération de tous les records du schéma ______________________________________

# C'est une méthode de class qui renvoie un tableau qui contient tous les "games"

Game.all # Retourne un array d'instance(s)

# ______________________________________ Récupération d'un seul record du schéma ______________________________________

# C'est également une méthode de class à laquelle on va passer un argument

Game.find(1) # match d'id = 1

Game.find(id) # Retourne un array OU une exeception

# ______________________________________ Récupération des plusieurs records du schéma ______________________________________

Game.where(home: 'PSG')
Game.where('home LIKE ?', '%psg%')

Game.where({}) # Retourne un array d'instance(s)


# ______________________________________ Récupération du nomnbre de records du schéma ______________________________________

Game.count # Retourne un fixnum




###### ON peut combiner toutes ces méthodes

Game.where(name: 'PSG').count
Game.where(name: 'PSG', year: '2018', status: 'won').count

# ______________________________________ Others ______________________________________

Game.first # Retourne le 1er record enregistré dans la base
Game.last # Retourne le dernier record enregistré dans la base

Game.all.order(id: :desc)


# ______________________________________ Seed ______________________________________

# Permet d'injecter des données initiales de test dans la BDD






