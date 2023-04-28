<p>
Dans la page home, les images sont toute directement incluse et mise en page sauf une qui pointe vers quelaue chose : http://10.12.200.32/?page=media&src=nsa<br>
Dans l'url on voit à la fin de la ligne "src=nsa". Je me suis dit que c'était une belle source d'xss. Quand on met "pouet" à la place de "nsa", on voit le mot pouet apparaître à l'intérieur d'une balise object, ce qui nous permet d'injecter notre code tranquillement. <br>
&lt;object data="pouet"> <br>
J'essaie donc d'insérer le code &lt;script>alert(1)&lt;/script>. Ça donne la balise que l'on attend, mais le code n'est pas interprété. <br>
On met ensuite une apostrophe ou un guillemet pour sortir de l'attribut data, mais le back échappe les charactères pour qu'on ne puisse pas faire ce qu'on. <br>
Le prochain objectif est donc de passer le code html pour que l'object l'interprète comme une donnée. Avec le <a href="https://en.wikipedia.org/wiki/Data_URI_scheme">data URI scheme</a> on peut le faire facilement. On encode les balises script en base 64, ce qui nous la chaine suivante à injecter "data:text/html;base64,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==". Avec cette string à la place de "nsa" dans la barre d'addresse, le flag s'affiche à l'écran. <br><br>
Pour la mitigation, il s'agit d'enlever le contrôle de cette variable à l'utilisateur, c'est-à-dire qu'elle ne soit plus dans la barre d'addresse, ou alors d'échapper le texte reçu par le serveur pour qu'il ne soit pas interprétable. 
</p>
