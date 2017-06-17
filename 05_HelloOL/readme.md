# 05 Hello OL

Met OpenLayers kun je mooie, interactieve kaarten toevoegen aan je
webapplicatie. Er zijn heel veel opties en mogelijkheden, maar ons doel is om
onze eigen webapplicatie tegelijk met OpenLayers te bouwen met de Closure
compiler.

## lib

In de Hello OL applicatie vind je een extra directory `lib`. Dit is de locatie
waarin de scripts en code voor OpenLayers staan. Deze zijn gedownload via het
script `getOL.sh`. Let erop dat dit script ook enkele externs download en klaar
zet. Deze bestanden zijn ook nodig om een goede build te kunnen maken.

## build

Aan de buildscripts zijn enkele dingen toegevoegd. Om te beginnen is ook de code
naar OpenLayers gerefereerd. Hierdoor kan de compiler de webapplicatie tegelijk
compilen met OpenLayers. Alleen de delen van OpenLayers die je daadwerkelijk
gebruikt en aanroept worden opgenomen. Dit wordt gergegeld via de `goog.require`
statements.

In de buildscripts is ook een link opgenomen naar de `ol.ext` scripts. Hierna
zijn de definities voor de externals opgenomen, zodat de compiler weet wat voor
externe code er gebruikt wordt.

De buildscripts zelf zijn hernoemd, zodat aan de titel al duidelijk is wat het
script voor build maakt. In de html-bestanden is een wijziging opgenomen: er is
nu een appart html-bestand voor de uncompiled versie een eentje als
'productie-versie'. Let erop dat het script met alle checks en waarschuwingen
nog steeds een flinke waslijst aan fouten rapporteert.

## HTML

De HTML-bestanden hebben nog steeds een verwijzing naar een externa js library
voor het Closure gedeelte. Deze bestanden zijn ook opgenomen in de OpenLayer
source. De scripttags zouden dus veranderd kunnen worden.

## Applicatie

De applicatie is een uitbreiding op 04 HelloApp. Het bovenste gedeelte is nog
steeds hetzelde en de onderkant is uitgebreidt met een simpele OpenStreetMap
kaart.
