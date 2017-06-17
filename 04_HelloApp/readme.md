# 04 HelloApp

In 03 Hello NameSpace hebben we een eerste stap gemaakt om namespaces in te
voeren. In 04 Hello App gaan we nog een stap verder. Het aanmaken van de
namespaces laten we nu aan Closure over. De werking en het idee achter de
applicatie is nog steeds hetzelfde als in 02 HelloPage.

## NameSpaces

De namespaces worden nu aangemaakt en doorgegeven voor de closure compiler.
Hiervoor maken we gebruik van `goog.provide` en `goog.require`. Dit is een stuk
makkeijker dan dat we zelf de nameaspaces moeten aanmaken. We hebben hier
drie verschillende namespaces: `App.Main` (uit `hello.js`), `App.Control` (uit
`control.js`) en `App.Settings` (uit `settings.js`). In dit laatste bestand
worden enkele settings geïnitialiseerd (denk aan het id van de html-elementen
voor het formulier en de knop). Nu staan al deze settings op een overzichtelijke
plek allemaal bij elkaar.


De werking van de applicatie wordt nu beschreven in de `App.Control` namespace
en hiervoor maakt hij gebruik van de settings die ingelezen worden. Vanuit de
`App.Main` wordt vervolgens de `App.Control` aangroepen en via de `init` functie
wordt de applicatie opgestart.

## Buildscripts

De buildscripts hebben een kleine aanpassing gekregen. Omdat we nu met
verschillende namespaces werken, moeten we bij de Closure compiler aangeven wat
het startpunt is van de applicatie. Daarvoor zetten we de variabele
`entry_point`. Ook vertellen we de compiler nu dat hij moet kijken naar alle
`*.js` in de source directory, niet enkel hello.js.


Er is nu ook een derde buildscript `build_advanced3.sh` toegevoegd aan de serie.
Dit is een uitbreiding op het `build_advanced2.sh` en voegt een hele lap aan
controles toe aan de build. Het is natuurlijk ook mogelijk om slechts een
gedeelte van deze lijst te gebruiken. Let erop dat er nu een heleboel errors en
waarschuwingen tevoorschrijn komen.
