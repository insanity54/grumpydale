/**
 * build.js
 *
 * Goes through the ./dist folder and renders any handlebars expressions into html.
 * Renders IN-PLACE. Useful for workflows where you have a mostly static site with a few partials
 * such as navbars.
 *
 * WARNING: Only tested on OSX!
 *
 * Author: Chris Grimmett <chris@grimtech.net>
 * Thanks to: http://stackoverflow.com/a/12700409/1004931
 * License: Public Domain
 */

 var hbs = require('handlebars');
 var fs = require('fs');
 var path = require('path');

 var partialsDir = path.join(__dirname, 'partials');
 var filenames = fs.readdirSync(partialsDir);

 filenames.forEach(function (filename) {
   var matches = /^([^.]+).hbs$/.exec(filename);
   if (!matches) return;
   var name = matches[1];
   var template = fs.readFileSync(path.join(partialsDir, filename), 'utf8');
   hbs.registerPartial(name, template);
   console.log('  - registered ' + name + ' template.');
 });

hbs.compile('{{foo}}');
