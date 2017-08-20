# Annexe

Vous trouvez ici divers trucs et astuces.

## Utilisation et configuration de Keepass2

* nombre de passes de cryptage
* mot de passe par défaut (40 caractères générés au hasard)
* séquence de remplissage
* référencer un autre identifiant/mot de passe
* mettre un délai avant remplissage

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
Vous pouvez vous reporter à [la page au hasard du wiktionnaire Français](http://tools.wmflabs.org/anagrimes/hasard.php?langue=fr) pour contruire votre phrase.

### Choisir un mot de passe de session (Windows, Linux, Android, iOS, ...) complexe

Tout les mots de passe que vous aurez encore besoin de taper (autre que le mot de passe principal) devraient être aussi sécurisés que le mot de passe principal, car ils y donnent probablement accès.

* Mot de passe de session
* Mot de passe "cloud" où sauvegarder et synchroniser votre fichier Keepass

Si quelqu'un obtient l'accès à ces service, il pourra vous causer du tort : copier/supprimer votre fichier Keepass, espionner votre clavier et obtenir votre mot de passe principal, etc.

### Ne pas installer d'extension de remplissage automatique de navigateur (ou l'activer partiellement seulement)

Une façon de tirer parti de ce genre d'extension est "d'imiter" un champs de votre fournisseur email préférée (par exemple). L'extension s'y laisse alors prendre et pré-rempli le champs, vous laissant le soin de valider (ce que vous ne ferez alors pas, ayant détecté la supercherie). Mais le champs peut déjà avoir transmis les informations fournies, et donc obtenu votre mot de passe.

Il est parfois possible en revanche d'activer le remplissage du mot de passe seulement à la demande.

## Alternatives

Il existe d'autres logiciels compatibles avec les fichier `.kdbx`.
* [KeeWeb](https://keeweb.info/) en est un (en plus de fournir une page web comme mentionné plus tôt)
* [KeepassX](https://www.keepassx.org/) en est un autre.

Par ailleurs [LastPass](https://www.lastpass.com/fr) rempli quasiment la même fonction, mais en ligne.
Donc votre fichier est sauvegardé sur les serveurs de lastpass, et le mot de passe transite aussi potentiellement par leur serveurs. Pour faire court, c'est plus simple à utiliser, mais un peu moins sécurisé.
