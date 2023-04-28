<p>sur la page survey, j'ai vu que le seul champ où l'utilisateur peut rentrer des données est le menu déroulant pour voter.
J'ai inspecté l'élément et j'ai vu que le chiffre était bêtement envoyé avec un form. J'ai donc ouvert l'inspecteur de réseau, 
j'ai repéré lequel des paquets était l'envoie de la donnée avec un post. J'ai ensuite modifié le paquet avec une très grande valeur
et j'ai vu le flag dans la réponse. <br>
Pour mitiger cette faille, il suffit d'imposer une limite dans le back sur cette valeur en particulier, et renvoyer une erreur 
quand la valeur n'est pas bonne. </p>
