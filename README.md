# Keepass

Gestion sécurisée et simple des mots de passe.

## Principe

* Un fichier Keepass crypté contenant tout les mots de passe
* Un mot de passe principal pour accéder à ce fichier
* Une sauvegarde "cloud" de synchronisation de ce fichier

## Usage

### Installation

Il vous faudra tout d'abord obtenir le logiciel de gestion des mots de passe.
Sur PC, le choix de [Keepass2](http://keepass.info/) est présenté (avec en soutient [KeeWeb](https://app.keeweb.info/)), mais des [alternatives](https://github.com/i2855l7h9w/keepass_doc/blob/master/appendix.md#alternatives) existent.

<details><summary> Pour Windows </summary><p>

Télécharger et lancer l'installation de Keepass2 depuis le [site de keepass](http://keepass.info/download.html).
</p></details>


<details><summary> Pour Debian/Ubuntu </summary><p>

Le paquet keepass2 est disponible dans les dépôts.

La logithèque Ubuntu le propose donc : recherchez `keepass2`.

La commande suivante est également une possibilité:
```
sudo apt-get install keepass2
```
*Il est par la suite possible de maintenir Keepass2 à jour en ouvrant les archives obtenue depuis le site officiel et en écrasant les fichiers dans le répertoire de l'exécutable.*

</p></details>

<details><summary> Pour OSX </summary><p>

Pas encore de conseil à donner, si ce n'est cette [page](https://sourceforge.net/p/keepass/discussion/329220/thread/eb00d276/?limit=25&page=0).
</p></details>

<details><summary> Logiciel en ligne </summary><p>

[KeeWeb](https://app.keeweb.info/) propose une page web open-source qui permet de gérer les fichiers de mot de passe.

Sans installation requise, cette page gère tout en local sur votre ordinateur (vous pouvez sauvegarder la page sur votre appareil, il n'y a pas d'échange avec un serveur distant).

C'est aussi une bonne alternative quand on n'a pas la possibilité d'installer un logiciel spécifique.
</p></details>

<details><summary> Pour Android </summary><p>

[Keepass2Android](https://play.google.com/apps/testing/keepass2android.keepass2android) semble être une bonne option (non testée).
</p></details>

<details><summary> Pour iOS </summary><p>

Là encore, une option non-testée semble disponible gratuitement: [MiniKeePass](https://itunes.apple.com/fr/app/minikeepass-secure-password-manager/id451661808?mt=8)
</p></details>


### Création du fichier Keepass

* Pour commencer, créer un nouveau fichier de base de données de mot de passe.
* Définir son nom.
* Si possible passer le nombre d'itérations (onglet sécurité) à `500000`.
* Rentrer 1 ou 2 mots de passe: **l'adresse** de la page où vous avez besoin de les taper, le **login** et le **mot de passe** correspondant (et éventuellement la séquence de **saisie automatique**). Ces premiers mots de passe vous permettrons de tester que tout fonctionne bien à chaque étape. Choisir donc plutôt des mots de passe pas trop importants (et que vous pourrez changer si un problème survient).

> A ce stade, il est possible de copier/coller les mots de passe à chaque fois que vous en avez besoin, donc tout est déjà utilisable. Nous allons essayer de faire encore mieux.

### Remplissage automatique des mots de passe

Il est possible de demander le remplissage automatique.
Pour cela il vous faudra d'abord installer un addon à votre navigateur:
* Firefox: [Add URL to Window Title](https://addons.mozilla.org/fr/firefox/addon/add-url-to-window-title/)
* Chrome: [Url in title](https://chrome.google.com/webstore/detail/url-in-title/ignpacbgnbnkaiooknalneoeladjnfgb?utm_source=chrome-app-launcher-info-dialog)

Pour Keepass2, dans le menu `Outils/Option`, onglet `Avancé` dans la partie `Saisie automatique` cocher les 6 cases (il est possible de les décocher ensuite suivant vos besoins).

Il faut ensuite activer le remplissage automatique:
<details><summary> Pour Windows </summary><p>

Par défaut, le raccourci clavier `ctrl + alt + A` fonctionne (et il est possible de configurer un autre raccourci).
</p></details>

<details><summary> Pour Debian/Ubuntu </summary><p>

Il faut tout d'abord installer `xdotool` qui permet d'émuler une frappe au clavier:
```
sudo apt-get install xdotool
```
Si la saisie est parfois problématique (caractères mal frappés) cela peut être dû à plusieurs configurations de saisie de clavier (il faut se limiter à une "langue" de clavier dans le système)

Vérifier que l'exécutable `KeePass.exe` se situe dans le répertoire `/usr/lib/keepass2/`, et si ce n'est pas le cas, chercher avec la commande:
```
find / -name KeePass.exe
```
Ensuite, ajouter le raccourci de clavier personnalisé (`paramètres/clavier`) pour `ctrl + alt + A` qui lance la commande suivante (en fournissant le chemin correct vers l'exécutable):
```
mono /usr/lib/keepass2/KeePass.exe --auto-type
```
</p></details>

<details><summary>
Pour les autres plateformes, il vous faudra probablement copier/coller ou suivre les recommandation de l'application utilisée...</summary><p>

Plus d'informations à venir si nous en trouvons.
Proposez vos solutions!
</p></details>

> Vous avez donc maintenant la sauvegarde sécurisée des mots de passe et le remplissage automatique qui fonctionne:
> * se rendre sur la page internet désirée (avec le curseur prêt à taper le login)
> * faire `ctrl + alt + A`
> * sélectionner le mot de passe à remplir (plusieurs peuvent correspondre si vous avez plusieurs profils)
> * Appuyer sur `Entrée`... Et voila!

### Sauvegarde et synchronisation du fichier

Pour utiliser *Dropbox*, il vous suffit de placer le fichier Keepass dans le répertoire synchronisé par Dropbox (le mot de passe Dropbox doit donc être [fort également](https://github.com/i2855l7h9w/keepass_doc/blob/master/appendix.md#bonnes-pratiques)).

Il est préférable de prévoir une autre synchronisation (avec demande de confirmation manuelle à chaque mise à jour du fichier) sur les plateformes principales utilisées pour rentrer les mots de passe.

On peut donc prévoir un autre répertoire synchronisé (par exemple par *GDrive*) et un script de sauvegarde entre ces deux répertoires qui demande confirmation avant d'écraser le fichier Keepass par sa nouvelle version (si cela se produit alors qu'on n'a pas modifié de mot de passe, c'est louche et il faut sauvegarder avant toute action supplémentaire).

<details><summary> Pour Debian/Ubuntu </summary><p>

Installer [drive](https://github.com/odeke-em/drive#installation) pour linux.

Ensuite un script va vérifier régulièrement que le fichier a été mis à jour: [scriptCheckDiff.sh](https://github.com/i2855l7h9w/keepass_doc/blob/master/debian/scriptCheckDiff.sh).

Il est nécessaire de le lancer au démarrage de la session: [scriptSaveGDrive.desktop](https://github.com/i2855l7h9w/keepass_doc/blob/master/debian/gnome/scriptSaveGDrive.desktop) à copier dans `~/.config/autostart` pour le cas de *Gnome*)

Puis il lance le script de synchronisation des répertoires si besoin: [scriptSaveGDrive.sh](https://github.com/i2855l7h9w/keepass_doc/blob/master/debian/scriptSaveGDrive.sh)

> Ces scripts sont susceptibles de devoir être modifiés pour chaque usage!
</p></details>

### Usage au quotidien

Après avoir vérifié que tout fonctionne sur les mots de passe testés, ajouter les autres.

Puis au fur et à mesure, les changer pour des mots de passe générés (40 caractères aléatoires, plutôt sans accents pour être capable de les taper à la main sur tout type de clavier dans le pire des cas).

Il est plus sécurisé de vérouiller les fichiers Keepass lorsque la session se vérouille elle-même (donc redemander le mot de passe principal ensuite):
<details><summary> Pour Windows </summary><p>
Cette option est proposée dans Keepass2 directement
</p></details>

<details><summary> Pour Debian/Ubuntu </summary><p>

Le fichier [scriptLockSessionKeePass2.sh](https://github.com/i2855l7h9w/keepass_doc/blob/master/debian/gnome/scriptLockSessionKeePass2.sh) est lancé par [scriptLockSessionKeePass2.desktop](https://github.com/i2855l7h9w/keepass_doc/blob/master/debian/gnome/scriptLockSessionKeePass2.desktop) sur *Gnome*.

> Ces scripts sont susceptibles de devoir être modifiés pour chaque usage!
</p></details>

### Usage depuis un appareil nouveau

La solution temporaire la plus simple est KeeWeb (+ Dropbox) et des copier-coller.

## [Annexe](https://github.com/i2855l7h9w/keepass_doc/blob/master/appendix.md)

* [Pourquoi Keepass?](https://github.com/i2855l7h9w/keepass_doc/blob/master/appendix.md#utilisation-et-configuration-de-keepass2) 
* [Les bonnes pratiques](https://github.com/i2855l7h9w/keepass_doc/blob/master/appendix.md#bonnes-pratiques)
* [Configurer Keepass2](https://github.com/i2855l7h9w/keepass_doc/blob/master/appendix.md#utilisation-et-configuration-de-keepass2) 
* [Les alternatives](https://github.com/i2855l7h9w/keepass_doc/blob/master/appendix.md#alternatives)
