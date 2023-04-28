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
<p>
    En attendant : cat 10.12.200.32/.hidden/README > readme.txt && cat 10.12.200.32/.hidden/*/README >> readme.txt && cat 10.12.200.32/.hidden/*/*/README >>readme.txt && cat 10.12.200.32/.hidden/*/*/*/README >> readme.txt
    pour mettre le contenu de tous les README dans readme.txt
</p>
<p>
    J'ai commence a ecrire un script pour recuperer la liste des dossiers dispo directement dans un fichier nomme list_folder.txt<br>
    Et un autre script pour recuperer tout en navigant dans les dossiers pour pouvoir wget TOUS les README<br>
    Entre temps un ami a trouve pourquoi mon wget ne marchait pas comme je le souhaitais : il faut pas oublier le "/" apres ".hidden" -_- : donc la solution complete pour telecharger tout le dossier .hidden est : wget -r -np -l 4 -e robots=off --reject="index.html*" http://10.12.200.32/.hidden/ (-np = --no-parent : )
</p>
<p>
    NB : retrouver les liens utiles sur nanao-42<br>
    <ol>
        <li>https://unix.stackexchange.com/questions/55755/print-file-content-without-the-first-and-last-lines</li>
        <li>https://stackoverflow.com/questions/19437199/cut-from-column-to-end-of-line</li>
        <li>https://www.unix.com/shell-programming-and-scripting/147558-sed-removing-until-end-line.html</li>
        <li>https://www.hostinger.fr/tutoriels/guide-bash-boucle-for-avec-exemples</li>
    </ol>
</p>