dans la page feedback
j'ai mis un nom random, puis dans le textfield de message j'ai tapé des caractères qui peuvent exlpoiter une faille xss, jusqu'à tomber sur le flag. 
ex: '")]}#$%;
<script>alert(1)</script>
ce qui a marché au final était <img src=''>
