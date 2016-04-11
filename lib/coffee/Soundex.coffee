
if !module?
  module = {}

###*
# @class Soundex
#          Implementation of the soundex algorithm to
#          demonstrate gherkin with cucumber
###
class Soundex
  "use strict"
  _max_code_length = 4
  _not_a_digit = "*"
  _empty_string = ""
  _encodingsMap = {
    'b': '1', 'f': '1', 'p': '1', 'v': '1',
    'c': '2', 'g': '2', 'j': '2', 'k': '2', 'q': '2', 's': '2', 'x': '2', 'z': '2',
    'd': '3', 't': '3',
    'l': '4',
    'm': '5', 'n': '5',
    'r': '6'
  }

  ###
  # @function encode
  #           encodes the word with the soundex algorithm
  #
  # @param {string} word the word to encode
  #
  # @return {string} the encoded word
  ###
  encode: (word) =>
    _zeroPad(_removeNotADigit(_upperFront(_head(word)) + _tail(_encodedDigits(word))))

  ###
  # @function encodedDigit
  #           encodes a letter (hashmap)
  #
  # @param {char} letter
  #
  # @return {string} the encoded letter
  ###
  encodedDigit: (letter) =>
    _encodedDigit(letter)

  # --------------- private functions --------------------
  _removeNotADigit = (word) ->
    ret = ""
    for char in word
      if char isnt _not_a_digit
        ret += char
    ret


  _encodedDigit = (letter) ->
    lowerLetter = _lower(letter)
    if _encodingsMap.hasOwnProperty(lowerLetter) is true
      return _encodingsMap[lowerLetter]

    _not_a_digit


  _encodedDigits = (word) =>
    encoding = _encodeHead(word)
    encoding += _encodeTail(encoding, word)

    encoding

  _encodeHead = (word) =>
    if word.length is 0
      return _not_a_digit

    _encodedDigit(word.charAt(0))

  _encodeTail = (encoding, word) =>
    wordLength = word.length
    for num in [1, wordLength]
      if _isComplete(encoding) is false
        encoding = _encodeLetter(encoding, word.charAt(num), word.charAt(num - 1))

    encoding

  _encodeLetter = (encoding, letter, lastLetter) ->
    digit = _encodedDigit(letter)
    if digit isnt _not_a_digit and (digit isnt _lastDigit(encoding) or _isVowel(lastLetter))
      encoding += digit

    encoding

  _lastDigit = (encoding) ->
    encodingLen = encoding.length
    if encodingLen is 0
      return _not_a_digit

    encoding.substr(encodingLen - 1)

  _isComplete = (encoding) ->
    encoding.length is _max_code_length

  _lower = (character) ->
    character.toLowerCase()

  _upperFront = (string) ->
    string.charAt(0).toUpperCase()

  _head = (string) ->
    string.charAt(0)

  _tail = (word) ->
    wordLength = word.length
    if wordLength < 1
      return _empty_string

    word.substr(1, wordLength - 1)

  _zeroPad = (word) ->
    zerosNeeded = _max_code_length - word.length

    for x in [1 .. zerosNeeded]
      word += "0"

    word

  _isVowel = (letter) ->
    "aeiouy".match(letter)


module.exports = Soundex
