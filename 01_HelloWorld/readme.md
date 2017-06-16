# 01 HelloWorld

Dit simpele voorbeeld laat zien wat hoe de Closure Compiler een javascript kan minimaliseren. De code

```javascript
function hello(name) {
  console.log('Hello, ' + name);
}

hello('Rob');
```

wordt versimpeld naar:

```javascript
console.log('Hello, Rob');
```

## hello.html

Dit html-bestand is een simpele placeholder voor de javascript code. Verander de script-tag in de header om of de source code
of de gecompileerde code te laden.

## build/

Deze directory bevat de gecompileerde javascript code.

## src/

Deze directory bevat de originele broncode om de 'applicatie' te bouwen.

## buildscripts

Er zijn twee buildscripts: build_simple.sh en build_advanced.sh. Beide zouden goed moeten werken op een linux-omgeving of op
een Mac. Het simple buildscript gebruikt de 'simple' optimalisatie van de compiler en advanced gebruikt de 'advanced' methode.
Beide scripts overschijven het bestand in `build/app.js`.
