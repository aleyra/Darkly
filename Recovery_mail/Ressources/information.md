<p>Un ami (Mickaël) m'a proposé d'utiliser Burp Suite quand il a vu la tête du site BornToSec et la page login en particulier<br>
j'ai lancé Burp Suite sur la VM Kali qui me propose dans un premier temps de suivre un tuto et j'arrive sur cette page en particulier :  https://portswigger.net/burp/documentation/desktop/getting-started/modifying-http-requests que je suis en ayant cette page en target : http://10.14.200.234/?page=recover<br>
Je repéré la requête qui m'interessait (cf requete_target.png) et je l'ai send to repeater pour pouvoir modifer le body param mail (cf flag_get.png) et quand j'ai envoyé la requête avec le param modifié j'ai obtenu le flag
</p>
<p>Autre methode avec Firefox : <br>
On a inspecte la page http://192.168.1.16/?page=recover#, on inspect le bouton submit et on voit qu'il y a un input cache avec le mail ecrit en dur. Apres le submit, on va dans l'onglet reseau on regarde la requete POST et on la modifie pour la renvoyer. on change le corps du message et on obtient le flag</p>

NB : renommer le dossier en Hidden_field_exploit