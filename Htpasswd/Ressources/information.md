<p>
    alors quand on cherche "robots.txt" dans google on tombe sur ce lien : https://developers.google.com/search/docs/crawling-indexing/robots/create-robots-txt?hl=fr<br>
    dans http://192.168.1.16/robots.txt on voit qu'il y a un disallow sur deux dossiers : whatever et .hidden<br>
    Dans http://192.168.1.16/whatever il y a fichier htpasswd et http://192.168.1.16/admin/ donne acces via username et mdp a une zone securisee<br>
    le user name est tres certainement root, le mot de passe doit etre la partie cryptee apres les ":"<br>
    d'apres https://md5.gromweb.com/?string=qwerty123@ le mot de passe serait "qwerty123@"<br>
</p>