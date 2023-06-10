<div align="center">

# vion de chasse

</div>

Ce projet est une simulation d'un jeu où un avion de chasse tire des projectiles sur des parachutistes tombant du ciel. L'objectif du jeu est de viser les parachutistes avec les projectiles.

Le projet est implémenté en utilisant le langage de programmation Processing. Voici une description des différentes classes utilisées dans le projet :

## Aeromarine :

Cette classe représente l'avion de chasse.
Elle possède les attributs `aX` et `aY` pour définir les coordonnées de l'avion, `vitesse` pour déterminer sa vitesse de déplacement et `couleur` pour spécifier sa couleur.
La méthode `arriver()` est utilisée pour dessiner l'avion à sa position actuelle.
La méthode `lutter()` permet de déplacer l'avion en fonction de la position de la souris.

## Parachutiste :

Cette classe représente les parachutistes tombant du ciel.
Elle possède les attributs `x` et `y` pour spécifier les coordonnées du parachutiste, `taille` pour déterminer sa taille, `vitesse` pour indiquer sa vitesse de chute et `couleur` pour définir sa couleur.
La méthode `dessiner()` est utilisée pour dessiner le parachutiste.
La méthode `chuter()` fait déplacer le parachutiste vers le bas.

## Projectile :

Cette classe représente les projectiles tirés par l'avion de chasse.
Elle possède les attributs `xp` et `yp` pour spécifier les coordonnées du projectile et `v` pour déterminer sa vitesse.
La méthode `dessiner()` est utilisée pour dessiner le projectile.
La méthode `deplacer()` fait déplacer le projectile vers le haut.
La méthode `bienVise()` vérifie si le projectile a touché un parachutiste en calculant la distance entre les coordonnées du projectile et du parachutiste.
Le programme principal se trouve dans la fonction `draw()`. Voici un aperçu des différentes étapes du programme :

La fonction `background()` est utilisée pour définir le fond de la fenêtre avec une couleur spécifique.
Des rectangles sont dessinés pour représenter le ciel, le champ et la terre.
La méthode `dessiner()` de la classe `Parachutiste` est appelée pour dessiner et faire chuter le parachutiste actuel.
La méthode `dessiner()` de la classe `Projectile` est appelée pour dessiner et déplacer les projectiles actifs.
Si le bouton de la souris est enfoncé, un nouveau projectile est créé et ajouté au tableau de projectiles `pr` à l'aide de la fonction `append()`.
La méthode `arriver()` de la classe `Aeromarine` est appelée pour dessiner l'avion de chasse.
La méthode `lutter()` de la classe `Aeromarine` permet de déplacer l'avion en fonction de la position de la souris.
Le projet comprend également une fonction `setup()` qui est appelée une fois au début pour initialiser les variables et créer les instances nécessaires des classes.
