lien de mon site : https://resaweb.tourneroche.butmmi.o2switch.site/

Lien Opquast : https://docs.google.com/spreadsheets/d/1Jd6Ek2cvOLUeuE00C2aDQrV422PtI7OClH8x6LivW74/edit?usp=sharing

Procédure  à faire pour réinstaller le site et la
base de données sur un serveur local XAMPP : 

On commence par lancer notre serveur Wamp

Ensuite sur notre ordinateur, on ouvre le dossier wamp et dans le sous dossier wwww on va y glisser notre dossier avec tous les fichiers de notre site. Dossier qui était avant en local sur notre ordi.

Une fois cela fait, on va importer notre base de données. Pour cela il faut se rendre sur le phpmyadmin de wamp en tapant l'url localhost, et en choisissant ensuite phpmyadmin sur la page qui s'affiche. L'url complète est donc http://localhost/phpmyadmin/. Il faudra se connecter avec root.

On arrive ensuite sur Wamp, on va alors créer une nouvelle base de données dans la bande à gauche. On va cliquer sur l'onglet importer et on va y importer notre fichier sql déjà présent dans le dossier de notre site que nous avons mis dans wamp>www. On clique sur importer, on ne touche pas aux parmèrtes et tout va s'importer tout seul.

Et voilà votre site est installé sur wamp avec sa bdd ! Vous pouvez le consulter à partir de wamp avec votre url qui suis le chemin suivant http://localhost/"nomdevotredossier". Par exemple pour moi, mon dossier de site s'appelant resaweb, mon url est http://localhost/resaweb. 





