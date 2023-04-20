<p>
On a constaté que quand on essayait de se logger sur le site, les variables usernames et password étaient écrites en clair dans la barre d'adresse
</p>
<p>Tim, nous a consaillé de faire un brute force avec hydra<br>
https://infinitelogins.com/2020/02/22/how-to-brute-force-websites-using-hydra/<br>
Et d'autres amis nous ont parlé de kali.<br>
https://www.kali.org/get-kali/#kali-virtual-machines<br>
</p>
<p>Quand on avait cherché le flag dans la barre member search by id, on avait pu recupérer pas mal d'info sur les différents membres enregistré mais pas de username.<br>
http://10.13.200.240/?page=member&id=1+or+true+union+select+first_name%2C+last_name+from+users&Submit=Submit#<br>
Je suis donc partie sur les first_name et last_name comme indice pour le username et j'ai tenté de brute force le password sans résultat<br>
La ligne de commande pour brute force avec hydra ressemble à ça : rm hydra.restore && hydra -l two -P /usr/share/wordlists/rockyou.txt 10.13.200.240 http-get-form "/:?page=signin&username=^USER^&password=^PASS^&Login=:Home"<br>
</p>
<p>On nous a conseille de refouiller la DB, et de regarder un "rang" au dessus pour voir TOUTES les bases et de faire un scrip de test pour le brute force <br>
grace au site https://dev.mysql.com/doc/refman/5.7/en/information-schema-schemata-table.html 1 or true union select schema_name, catalog_name from information_schema.schemata donne un resultat interessant (cf nameetcatalogfromschemata.png)<br>
</p>
<p>Bon je galere a aller voir cette f*****g database qui me taunt de fou du cou pj'vais preparer un petit script bash pour faire le brute force : https://medium.com/securebit/brute-forcing-using-custom-shell-scripts-abf73eaf9cda<br>
Bon ben j'ai bien galere pour faire ce script aussi...<br>
heureusement internet existe
	<ol>
		<li>https://linuxhint.com/curl_bash_examples/</li>
		<li>https://debian-facile.org/doc:programmation:shells:script-bash-variables-arguments-parametres</li>
		<li>https://stackoverflow.com/questions/25877637/while-variable-is-not-equal-to-x-or-y-bash</li>
		<li>https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/</li>
		<li>rockyou.txt https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiq8b3jp7j-AhUMif0HHVVYB5QQFnoECAgQAQ&url=https%3A%2F%2Fgithub.com%2Fbrannondorsey%2Fnaive-hashcat%2Freleases%2Fdownload%2Fdata%2Frockyou.txt&usg=AOvVaw3snAERl1mU6Ccr4WFEazBd</li>
	<ol>
	VICTOIRE !!!!!
</p>