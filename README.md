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

<p>Il faudrait voir comment faire pour corriger les failles trouvee</p>
<p>Pour organiser les rendus, un (Exploration)

Offensive

Faille

Mitigation</p>

<p>
	Liste des failles reussies : plus que 3 (Folder Spamming en cours)<br>
	<ol>
		<li>Hidden field recover : Recovery_mail</li>
		<li>Include redirect : Redirect</li>
		<li>Input form w validation survey : survey-form-validation</li>
		<li>htpassword w htaccess robots :  Htpasswd</li>
		<li>Cookkie Forgery : Cookie</li>
		<li>XSS Feedback : xss</li>
		<li>Include Page</li>
		<li>Upload type spoof : file-uplaod-xss</li>
		<li>SQL injection search member</li>
		<li>SQL injection image search</li>
		<li>Brute force sign in</li>
	</ol>
</p>