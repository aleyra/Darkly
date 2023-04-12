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
</p>