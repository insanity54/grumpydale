# Grumpydale.com

[![devDependency Status](https://david-dm.org/insanity54/grumpydale/dev-status.svg)](https://david-dm.org/insanity54/grumpydale#info=devDependencies) [![Dependency Status](https://gemnasium.com/insanity54/grumpydale.svg)](https://gemnasium.com/insanity54/grumpydale) [![Codacy Badge](https://api.codacy.com/project/badge/grade/33fca1245a074a45a091e6105bddd030)](https://www.codacy.com/app/chris_17/grumpydale) [![Greenkeeper badge](https://badges.greenkeeper.io/insanity54/grumpydale.svg)](https://greenkeeper.io/)

This page is intended for developers, webmasters, or site maintainers. This page is a repository of the code that generates grumpydale.com. If you would like to see the website meant for everyone, check out http://grumpydale.com


## Build process

### Initial setup

After cloning this repository to your workstation, you will need to download all the npm and bower dependencies.

```
$ npm install
$ bower install
```

### Build step

The Metalsmith templates are be compliled into a website using the metalsmith command line tool, `./node_modules/metalsmith/bin/metalsmith`. An easy shortcut to run this tool is to run `npm run build` (build script defined in package.json)

### Upload step

The website is compiled HTML files under `./dist`. The contents of `dist` are then uploaded (ex: ftp) and served by your web services provider (ex: Godaddy.)

You can use FileZilla to upload the files, or a quick and easy method is to use `npm run deploy`. (sftp dependency)


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

  * Add new code to `./src/partials/gallery.hbs`
  * Place the pictures inside `./src/assets_img`
  * `npm run build`



## TODO

* [x] Create pages
  * [x] About the Artist
  * [x] Contact
  * [x] Art
    * [x] Colored Pencil
    * [x] Crayons
* [x] Create templates and partials from index.html
* [x] Create build script
  * [x] Navbar creation
  * [x] Partial injecting
* [x] Fix hamburger menu
* [x] Hide the <a> underline when hovering on images
* [x] Add purple theme


## LICENSE

Images are copyright Dale DuRee

Vendor libraries have their own license

All remaining HTML/CSS/JS is MIT license Chris Grimmett
