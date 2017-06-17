# 02 HelloPage

Dit voorbeeld gaat een stap verder dan dat is uitgewerkt in 01 HelloWorld. De
pagina laat een formulier zien waar je een naam kunt invullen. Nadat je op de
'Laat maar zien' knop klikt, dan verschijnt er onder het formulier dezelfde naam
als je zojuist hebt ingevuld.


De javascript code voegt een actie toe aan de knop. Deze actie is het uitlezen
van het formulierveld en het invoegen van deze tekst op de pagina. Deze acties
kunnen met vanilla-javascript uitgevoerd worden door `document` aan te spreken.

## Directories en bestanden

Deze zijn vrijwel gelijk als de opzet in 01 Hello World. Er zijn nu twee extra
buildscripts beschikbaar: advanced1 en advanced2. In het buildscript
`build_advanced1.sh` wordt de uiteindelijke javascript nog verpakt in een IIFE.
Dat gebeurt ook bij het tweede buildsciprt `build_advanced2.sh`, maar nu wordt
er ook een sourcemap aangemaakt. Door deze versie te gebruiken, heb je als
ontwikkelaar nog steeds volledige toegang tot de originele namen en functies van
de code.


Het voordeel om een IIFF te gebruiken is dat de code één keer geladen en
uitgevoerd wordt. Alle functies en variabelen gooien daarmee de global variabele
(en andere libraries) niet in de war.
