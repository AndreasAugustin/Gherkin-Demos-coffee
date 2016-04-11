###*
# @copyright Copyright (c) 2016 andy
#               All rights reserved.
# @name SoundexGherkinTest
# @company none
# @licence MIT licence.
# @author andy andy.augustin@t-online.de
###

Soundex = require('./../../../Soundex.js')
assert = require('assert')

if !module?
  module = {}

module.exports = () ->
  "use strict"
  @.Given(/^A soundex instance$/,(callback) ->
    module.soundex = new Soundex()
    callback())

  @.When(/^I enter a word as "([^"]*)"$/, (arg1, callback) ->
    module.encoded = module.soundex.encode(arg1)
    callback())

  @.Then(/^it is encoded to "([^"]*)"$/, (arg1, callback) ->
    assert.equal(module.encoded, arg1)
    callback())


  @.When(/^I enter the word "([^"]*)"$/, (arg1, callback) ->
    module.encoded = module.soundex.encode(arg1)
    callback())

  @.Then(/^the encoded length is equal to "([^"]*)"$/, (arg1, callback) ->
    assert.equal(module.encoded.length, parseInt(arg1))
    callback())


  @.When(/^I enter the lower case word "([^"]*)"$/, (arg1, callback) ->
    module.encoded = module.soundex.encode(arg1)
    callback())

  @.Then(/^the encoded first letter is equal to "([^"]*)"$/, (arg1, callback) ->
    assert.equal(module.encoded.charAt(0), arg1)
    callback())


  @.When(/^I enter the character "([^"]*)"$/, (arg1, callback) ->
    module.encoded = module.soundex.encodedDigit(arg1)
    callback())

  @.Then(/^it is equal to other encoded character "([^"]*)"$/, (arg1, callback) ->
    otherEncoded = module.soundex.encodedDigit(arg1)
    assert.equal(module.encoded, otherEncoded)
    callback())

  @.When(/^I enter the string "([^"]*)"$/,  (arg1, callback) ->
    module.encoded = module.soundex.encode(arg1)
    callback())

  @.Then(/^it is equal to other encoded string "([^"]*)"$/, (arg1, callback) ->
    otherEncoded = module.soundex.encode(arg1)
    assert.equal(module.encoded, otherEncoded)
    callback())

