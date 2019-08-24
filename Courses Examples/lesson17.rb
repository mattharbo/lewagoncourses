# Lesson #16 • Components

# L'objectif est de créer une librairie de composants graphiques

# ______________________________________ Structure ______________________________________

# Structuration du dossier CSS d'un projet 

#|--- CSS
#| 		|--- Components
#|		|		|--- filepercomponent.css (ex: avatar.css)
#|		|--- mainstyle.css (Il comportent tous les autres fichiers et c'est celui-ci qui est appelé dans le fichier HTML)
#|--- index.html


# Comment importer un fichier CSS dans un autre ?
# => @import url("./path/file.css")

# ______________________________________ Basic components ______________________________________

# Thumbnail
# Avatar
# Bouton
# Nav bar
# Banner
# Vertical form
# Horizontal form
# Tabs
# Card
# Message
# Dropdown list

# ______________________________________ Flexbox ______________________________________

# 95% des composents qui sont designés

# On a un élément parent qui est la flexbox
# Elle est déclarée avec un 
display: flex;

# Tous les éléments à l'intérieur vont naturellement se mettre les uns à côté des autres
# et prendre la largeur de leur contenu

# Agencement sur l'axe horizontal 
# --- 1ere possibilité => distribution du contenu autour des éléments enfants
justify-content:space-around;
# --- 2eme possibilité => distribution du contenu entre les éléments enfants
# du le premier et le dernier élément sont aux bords de la div parente
justify-content:space-between;

# Agencement sur l'axe vertical
align-items:center; 

# exemple:
.divflexbox{
	display:flex;
	justify-content:space-around;
	align-items:center;
}

# Gestion des items à l'intérieure d'une flexbox
# > le flex-grow = est-ce que l'item peut grandir ou pas ?
# > le flex-shrink (très peu utilisé) = est-ce que l'item peut donner de la place ?
# > la largeur de base de l'item

# exemple:
.flexitem{
	flex:1 0 200px;
}

# ______________________________________ Relative > Absolute positioning ______________________________________

# Flaxbox n'est pas forcément la réponse à tout
# Il est parfois plus complexe de gérer le positionnement en flexbox

# Le positionnement relatif est plus adaptée

# Il faut épingler le positionnement de l'élement parent par un positionnement relatif
# et ensuite positionner tous les éléments enfants en fonction du parent par 
# l'attribut de positionnement "absolue"

