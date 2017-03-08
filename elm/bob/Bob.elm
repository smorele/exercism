module Bob exposing (..)

import List
import Char
import Regex

hey : String -> String
hey what =
    if isSilent what then
      "Fine. Be that way!"
    else if isShouting what then
        "Whoa, chill out!"
    else if isInterrogative what then
        "Sure."
    else
      "Whatever."


isInterrogative : String -> Bool
isInterrogative s =
  String.endsWith "?" s

isShouting : String -> Bool
isShouting s =
    String.toUpper s == s && String.toLower s /= s

isSilent : String -> Bool
isSilent s =
  List.all String.isEmpty (String.words s)