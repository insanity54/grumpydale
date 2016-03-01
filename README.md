# Grumpydale.com

[![devDependency Status](https://david-dm.org/insanity54/grumpydale/dev-status.svg)](https://david-dm.org/insanity54/grumpydale#info=devDependencies) [![Dependency Status](https://gemnasium.com/insanity54/grumpydale.svg)](https://gemnasium.com/insanity54/grumpydale) [![Codacy Badge](https://api.codacy.com/project/badge/grade/33fca1245a074a45a091e6105bddd030)](https://www.codacy.com/app/chris_17/grumpydale)

This page is intended for developers, webmasters, or site maintainers. This page is a repository of the code that generates grumpydale.com. If you would like to see the website meant for everyone, check out http://grumpydale.com


## Build process


### Favicon generation

Dependencies: Node.js

The master image for the favicon should be 260x260px and have a transparent background. Name it `./src/assets/favicon-lg.png`.

Create the cross-platform favicons, outputting them to the ./dist folder:

```
node ./node_modules/cli-real-favicon/real-favicon.js generate faviconDescription.json faviconData.json ./dist`
```

Inject the HTML code into the pages

```
node ./node_modules/cli-real-favicon/real-favicon.js inject faviconData.json ./dist ./dist/*.html
```

For more info on this process, check out https://realfavicongenerator.net/favicon_result?file_id=p1acmt43uc10hhulg1p5d1l4314cj6


### Adding pictures

add a snippet like this inside .gallery inside index.html:

```html
<a href="https://FULL-SIZE-PICTURE-HERE.jpg" data-size="1600x1067"
   data-med="https://MEDIUM-SIZE-PICTURE-HERE.jpg" data-med-size="1024x683"
   data-author="Dale DuRee">
  <img src="https://THUMBNAIL-PICTURE-HERE.jpg" alt="" />
  <figure>This is dummy caption. Add your own caption here.</figure>
</a>
```

place the pictures inside ./dist/img/


## TODO

* [ ] Create pages
  * [ ] About the Artist
  * [ ] Contact
  * [ ] Art
    * [ ] Colored Pencil
    * [ ] Crayons
    * [ ] Oil
* [ ] Create templates and partials from index.html
* [x] Create build script
  * [x] Navbar creation
  * [x] Partial injecting
* [ ] Fix hamburger menu


## LICENSE

Images are copyright Dale DuRee

non-library HTML/CSS/JS is MIT license Chris Grimmett
