<p>
    alors quand on cherche "robots.txt" dans google on tombe sur ce lien : https://developers.google.com/search/docs/crawling-indexing/robots/create-robots-txt?hl=fr<br>
    dans http://192.168.1.16/robots.txt on voit qu'il y a un disallow sur deux dossiers : whatever et .hidden<br>
    Dans http://192.168.1.16/.hidden il y a 17 dossiers qui ont l'air tous de contenir des dossiers et 1 README qui est tordant<br>
    c'est parti pour recuperer ce dossier .hidden et chercher le mot "flag".<br>
    on va au plus profond d'un des dossiers et on fait un wget avec pleins d'options<br>
    wget -r -l 4 -e robots=off --reject="index.html*" http://192.168.1.16/.hidden/amcbevgondgcrloowluziypjdh/acbnunauucfplzmaglkvqgswwn/ayuprpftypqspruffmkuucjccv/<br>
    <ol>
        <li>-r : de façon recurssive</li>
        <li>-l 4 : on remonte jusqu'au niveau 4 des dossiers (ici ça correspond aux dossiers dans .hidden)</li>
        <li>-e robots=off : on ignore robots.txt</li>
        <li>--reject="index.html*" : on ne dl pas les fichiers index.html*</li>
    </ol>
    dans .hidden un petit cat */*/*/README donne un resultat amusant mais pas de flag... Ah j'ai pas tous les readme mais seulement tous ceux du premier dossier dans .hidden ... -_-<br>
    ça ferait QUE 17 wget... mais devrait y avoir un moyen plus efficace...
    </p>