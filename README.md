Copier le dossier nom_faille avec le nom de la faille travaillee

A la fin du projet, supprimer le dossier nom_faille

<ul>
	<li>OWASP : https://owasp.org/www-project-web-security-testing-guide/stable/</li>
	<li>un top 10 de failles de secu : https://www.futura-sciences.com/tech/actualites/tech-top-10-failles-web-plus-courantes-1625/</li>
	<li>petit cours sur le hacking (Merci Tim) : https://tryhackme.com/module/web-hacking-1</li>
	<li>le site qui m'a montré comment récup des infos sur la bdd : https://portswigger.net/web-security/sql-injection/examining-the-database<li>
</ul>
<p>
XSS scripting c'est mettre un truc genre <script>alert(1)</script> dans un field ce qui permet d'insert un script JS
</p>

Il y a 14 failles :
<ol>
	<li>Hidden field recover</li>
	<li>Include redirect</li>
	<li>Header modify</li>
	<li>Input form w validation survey</li>
	<li>htpassword w htaccess robots</li>
	<li>XSS object html</li>
	<li>Cokkie forgery</li>
	<li>XSS feedback (c'est du XSS scripting)</li>
	<li>Folder spamming</li>
	<li><strike>Include page</strike></li>
	<li>Upload type spoof (dans upload image)</li>
	<li><strike>SQL injection image search</strike></li>
	<li><strike>SQL injection search member</strike></li>
	<li>Brute force sign in</li>
</ol>
