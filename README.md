mimosa-bless [![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Coveralls Status][coveralls-image]][coveralls-url] ![Dependencies][dependencies-image]
===========
## Overview

Runs Bless on your css

## Usage

Add `mimosa-bless` to your list of modules.  That's all!  Mimosa will install the module for you when you start up.

## Default Config

  bless: {
    options: {
      cacheBuster: true,
      cleanup: true,
      compress: false,
      force: false,
      imports: true
    },
    files: []
  }

`files` is an array of strings with each entry being either the name of a folder or an exact file name
if its a folder, it will recursively find any files ending in a .css extension within that folder

[npm-url]: https://npmjs.org/package/mimosa-bless
[npm-image]: http://img.shields.io/npm/v/mimosa-bless.svg

[travis-url]: https://travis-ci.org/DarthFubuMVC/mimosa-bless
[travis-image]: https://travis-ci.org/DarthFubuMVC/mimosa-bless.svg?branch=master

[coveralls-url]: https://coveralls.io/r/DarthFubuMVC/mimosa-bless
[coveralls-image]: https://img.shields.io/coveralls/DarthFubuMVC/mimosa-bless.svg?branch=master

[dependencies-image]: https://david-dm.org/DarthFubuMVC/mimosa-bless.png
