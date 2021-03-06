"use strict"

_ = require "lodash"
path = require 'path'
logger = require 'logmimosa'

exports.defaults = ->
  bless:
    options:
      cacheBuster: true,
      cleanup: true,
      compress: false,
      force: false,
      imports: true
    files: []
    blessOnWatch: true

exports.placeholder = ->
  """
  \t
  #bless:
  #  options:
  #    cacheBuster: true,
  #    cleanup: true,
  #    compress: false,
  #    force: false,
  #    imports: true
  #  files: []
  #  blessOnWatch: true #turn this off if it goes slow for large code bases during watch mode
  """

exports.validate = (config, validators) ->
  errors = []
  {bless} = config

  objectNotArray = (obj) -> (_.isObject obj) and (!_.isArray obj)

  unless bless? and objectNotArray bless
    errors.push "bless config"
    return errors

  {options, files} = bless

  unless options? and objectNotArray options
    errors.push "bless.options"
    return errors

  unless files? and _.isArray files
    errors.push "bless.files"
    return errors

  #TODO: validate all file entries are strings
  #folder names allowed or else exact file paths to individual files

  errors
