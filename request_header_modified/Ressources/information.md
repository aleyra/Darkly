<p>
    petite page "cachee" sur le credential : http://10.12.200.32/?page=b7e44c7a40c5f80139f0a50f3650fb2bd8d00b0d24667c4c2ca32c88e13b758f.<br>
    On voit un superbe albatros avec une musique qu'on n'entend pas sur les pc de l'ecole parce qu'on met pas le son<br>
    quand on inspecte, on voir un commentaire tres instructif (cf Ze_comm.png) et une ligne qui donne un indice : "You must come from : "https://www.nsa.gov/"."<br>
    La question est comment faire croire au site qu'on vient de "https://www.nsa.gov/"...<br>
    Il y a un deuxieme indice "Let's use this browser : "ft_bornToSec". It will help you a lot."<br>
    avec curl
    <ul>
        <li>-e : permet de set le referer</li>
        <li>-A : permet de set le user agent</li>
    </ul>
</p>
<p>
    <ul>
        <li>https://www.cyberciti.biz/faq/curl-set-user-agent-command-linux-unix/</li>
        <li>https://catonmat.net/cookbooks/curl/add-referrer</li>
    </ul>
</p>