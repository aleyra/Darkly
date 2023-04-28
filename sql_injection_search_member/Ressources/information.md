<p>
Je connaissais déjà le principe de l'injection SQL, donc quand j'ai vu que la page rendait directement ce qui semblait être le résultat brut d'une requête, je me suis dit que j'étais sur la bonne voie. <br>
J'ai donc tapé "1 or true", et j'ai vu que le serveur me rendait toutes les lignes correspondant à la requête. Il s'agissait maintenant de trouver plus d'information sur la base de données, mais aussi comment les récupérer. Le <a href="https://sql.sh/cours/union">union</a> paraissait plutôt adapté pour récupérer des données, même si dans ces conditions, on ne pouvait récupérer que deux colonnes à la fois. Je n'ai pas trouvé de méthode plus adaptée donnant plus de colonnes d'un coup. <br>
Il fallait ensuite trouver des informations sur les tables de la bdd. Cette <a href="https://mariadb.com/kb/en/information-schema-schemata-table/">page</a> indique le nom de la table à interroger, et le nom de ses colonnes, ce qui permet de récupérer les informations qui nous intéresse. <br>
1 or true union select table_name, table_type from information_schema.tables<br>
1 or true union select table_name, column_name from information_schema.columns<br><br>
On va ensuite fouiller dans la table users qui contient certainement des données intéressantes. <br>
1 or true union select user_id, first_name from users<br>
1 or true union select user_id, commentaire from users<br>
1 or true union select commentaire, countersign  from users<br>
La colonne countersign contient les mots de passe des utilisateurs, hashé en md5. Il ne reste plus qu'à sélectionner le bon et à le décoder pour obtenir le flag. 
</p>
