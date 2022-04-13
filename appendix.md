# Annexe

Vous trouvez ici divers trucs et astuces.

## Avantages

* 1 seul mot de passe à retenir

* Mots de passe tous différents
* Mots de passe complexes
* Renouvellement simple des mots de passes
* Saisie automatique sur la plupart des supports (copier-coller sur les autres)

## Bonnes pratiques

### Sauvegarder régulièrement le fichier sur une clé USB

En cas de perte/écrasement du fichier (même par l'intermédiaire des sauvegardes en ligne, cela pourrait arriver), cette sauvegarde bien que parfois pas complètement à jour pourra s'avérer précieuse!

### Choisir un mot de passe principal complexe

Une phrase est probablement ce qu'il y a de mieux : 3 ou 4 mots et expressions du dictionnaire suffisent.
Libre à vous de les combiner comme vous voulez (caractères de séparation, Majuscule, etc.).
Vous pouvez vous reporter à [la page au hasard du wiktionnaire Français](http://tools.wmflabs.org/anagrimes/hasard.php?langue=fr) pour contruire votre phrase. \
Exemple à ne pas utiliser, car il est public (généré en cliquant 3 fois de suite sur le lien) :

```
brick eider d'Europe protocolairement
```

On peut la transformer un peu (là encore faites des choix personnels et différents de transformation) :

```
br1ck_EIDER d'Europe?protocolairem#ent
```

### Choisir un mot de passe de session (Windows, Linux, Android, iOS, ...) complexe

Tout les mots de passe que vous aurez encore besoin de taper (autre que le mot de passe principal) devraient être aussi sécurisés que le mot de passe principal, car ils y donnent probablement accès.

* Mot de passe de session
* Mot de passe "cloud" où sauvegarder et synchroniser votre fichier Keepass

Si quelqu'un obtient l'accès à ces service, il pourra vous causer du tort : copier/supprimer votre fichier Keepass, espionner votre clavier et obtenir votre mot de passe principal, etc.

### Ne pas installer d'extension de remplissage automatique de navigateur (ou l'activer partiellement seulement)

Une façon de pirater ce genre d'extension est "d'imiter" un champs de votre fournisseur email préférée (par exemple). L'extension s'y laisse prendre et pré-rempli le champs, vous laissant le soin de valider (ce que vous ne ferez alors pas, ayant détecté la supercherie). Mais le champs peut déjà avoir transmis les informations fournies, et donc obtenu votre mot de passe.

Il est parfois possible en revanche d'activer le remplissage du mot de passe seulement à la demande.

## Alternatives

Il existe d'autres logiciels compatibles avec les fichier `.kdbx`.
* [Keepass2](https://keepass.info) est une très bonne alternative.
  Pour Debian/Ubuntu:
  
  Il vous faudra installer `xdotool`.

  Vérifier que l'exécutable `KeePass.exe` se situe dans le répertoire `/usr/lib/keepass2/`, et si ce n'est pas le cas, chercher avec la commande:
  ```
  find / -name KeePass.exe
  ```
  Ensuite, ajouter le raccourci de clavier personnalisé (`paramètres/clavier`) pour `ctrl + alt + A` qui lance la commande suivante (en fournissant le chemin correct vers l'exécutable):
  ```
  mono /usr/lib/keepass2/KeePass.exe --auto-type
  ```
  Astuces :
  * _Il est possible de lancer keepass2 en tant qu'administrateur pour répondre définitivement à la pop-up de vérification de mise à jour._
  * _Si la saisie est parfois problématique sous debian (caractères mal frappés) cela peut être dû à plusieurs configurations de saisie de clavier (il faut se limiter à une "langue" de clavier dans le système)_
  
* [KeeWeb](https://keeweb.info/) en est un (en plus de fournir une page web comme mentionné plus tôt)
* [KeepassX](https://www.keepassx.org/) en est un autre.

Par ailleurs [LastPass](https://www.lastpass.com/fr) rempli quasiment la même fonction, mais en ligne.
Donc votre fichier est sauvegardé sur les serveurs de lastpass, et le mot de passe transite aussi potentiellement par leur serveurs. Pour faire court, c'est plus simple à utiliser, mais un peu moins sécurisé.

### Utilisation et configuration de Keepass2

* nombre de passes de cryptage
* mot de passe par défaut (40 caractères générés au hasard)
* séquence de remplissage
* référencer un autre identifiant/mot de passe
* mettre un délai avant remplissage
