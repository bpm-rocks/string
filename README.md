BPM Library: String
===================

Standard string manipulation routines in Bash.


Installation
============

Add to your `bpm.ini` file the following dependency.

    [dependencies]
    string=*

Run `bpm install` to add the library. Finally, use it in your scripts.

    #!/usr/bin/env bash
    . bpm
    bpm::include string


API
===


[//]: # (AUTOGENERATED FROM libstring - START)

`string::indexOf()`
-------------------

Find the first index of a substring.  If not found, sets the index to -1.

* $1 - Destination variable for the index
* $2 - Needle
* $3 - Haystack

Returns nothing.


`string::prefixLines()`
-----------------------

Prepend a string before each line in a variable.  Also converts all newlines to Unix-style newlines in case they weren't that way before.

* $1 - Name of variable where the result will be stored.
* $2 - Prefix string to add to the beginning of all lines.
* $3 - The original string.

Example:

    printf -v lines "one\ntwo\n"
    # lines is three lines with nothing on the third line.

    string::prefixLines result "Look:  " "$lines"
    # Result is "Look:  one\nLook:  two\nLook:  "
    # Even the last line is (intentionally) prefixed.

Returns nothing.


`string::split()`
-----------------

Split a string into an array.

* $1 - Destination variable name.
* $2 - The string to split.
* $3 - Optional, the delimeter, defaults to a space.

Examples

    string::split DEST "a b c d"
    set | grep ^DEST=
    # DEST=([0]="a" [1]="b" [2]="c" [3]="d")

    string::split DEST "one|two||three|" "|"
    set | grep ^DEST=
    # DEST=([0]="one" [1]="two" [2]="" [3]="three" [4]="")

Returns nothing.


`string::toHex()`
-----------------

Hex encodes a string and writes it to stdout.

* $1 - Target variable name for the hex encoded string.
* $2 - The string to encode.

Returns nothing.


`string::toLower()`
-------------------

Converts a string to lowercase.

* $1 - Destination variable name.
* $2 - String to convert.

Returns nothing.


`string::toLowerFallback()`
---------------------------

Converts a string to lowercase. Not locale-aware, but does handle Unicode.

* $1 - Destination variable name.
* $2 - String to convert.

Returns nothing.


`string::toLower()`
-------------------

Use the fallback because the faster method is not available.


`string::toUpper()`
-------------------

Converts a string to uppercase. Not locale-aware.

* $1 - Destination variable name.
* $2 - String to convert.

Returns nothing.


`string::toUpperFallback()`
---------------------------

Converts a string to uppercase. Not locale-aware, but does handle Unicode.

* $1 - Destination variable name.
* $2 - String to convert.

Returns nothing.


`string::toUpper()`
-------------------

Use the fallback because the faster method is not available.


`string::trim()`
----------------

Trim leading and trailing whitespace from a string.

* $1 - Name of variable to store trimmed string.
* $2 - The string.

Returns nothing.


`string::trimStrings()`
-----------------------

Trim strings from the front or end of a string.

* $1   - Name of destination variable.
* $2   - The string.
* $3   - true/false - trim front?
* $4   - true/false - trim end?
* $5-@ - What to trim, each as separate arguments.

Returns nothing.

[//]: # (AUTOGENERATED FROM libstring - END)


License
=======

This project is placed under an [MIT License](LICENSE.md).
