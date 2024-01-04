# swiftui-navigation

Comment gérer la navigation avec NavigationStack?

Ce projet a pour but de vulgariser l'utilisation de la NavigationStack.

Pour ce faire, nous avons 3 vues:
- HomeView
- MapView
- SettingsView

Notre HomeView est notre page d'accueil.
Elle contient un bouton redirigeant vers la page MapView.

La page MapView contient un bouton appelant la page SettingsView.
Le but ici est de montrer comment passer un paramètre (structure Location), à la page SettingsView.

La page SettingsView affiche la valeur reçue depuis la page MapView.
Elle contient également deux boutons:
- Le premier permet de revenir en arrière (MapView)
- Le second permet de retourner à l'acceuil (HomeView)
