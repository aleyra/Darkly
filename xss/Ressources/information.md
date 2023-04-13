dans la page feedback
j'ai mis un nom random, puis dans le textfield de message j'ai tapé des caractères qui peuvent exlpoiter une faille xss, jusqu'à tomber sur le flag. 
ex: '")]}#$%;
<script>alert(1)</script>
ce qui a marché au final était <img src=''>
https://xss-game.appspot.com ce tuto fait par google m'a bien aidé à comprendre comment ça marche
