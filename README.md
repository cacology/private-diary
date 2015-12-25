# private-diary [![MELPA](http://melpa.org/packages/private-diary-badge.svg)](http://melpa.org/#/private-diary) [![Build Status](https://travis-ci.org/cacology/private-diary.svg?branch=master)](https://travis-ci.org/cacology/private-diary)


A simple package for maintaining an encrypted private
diary along with a non-encrypted one in Emacs

## Installation

For this to work, you need GNU Emacs with the builtin EasyPG, along
with the GNU Privacy Guard package. Installing GPG is out of the scope of this
package, but it's very easy: <https://gnupg.org> .

Once you have GNU Privacy Guard installed, you merely need to move the
private-diary.el into a directory that Emacs parses when loading the
configuration files. For many people, this is ~/.emacs.d/ or if you
use [Prelude](http://batsov.com/prelude/) ~/.emacs.d/personal/ . Then
you need to create a private diary file, encrypt it, and point the
variable private-diary-file to it.

## Creating a Private Key with GPG

If you don't already have a personal secret key/public key pair, I
suggest creating one with gpg for whatever email you typically use. If
you're on a Unix or Unix-like system, this command should work in the
terminal:

    gpg --gen-key

It will walk you through generating your key. In general the defaults
will work, as long as you have a key that can encrypt as well as
sign. You can upload it to a public key-server, if you like.

## Creating the Private Diary File

Setting up the private-diary file is a matter of preference, but I
create a text file with this header:

     -*- mode: diary; epa-file-encrypt-to: ("youremail@replaceme.com"); -*-

This line tells Emacs to activate the diary-mode when opening the file
and to encrypt the file with the private key at
"youremail@replaceme.com", which should&mdash;of course&mdash;be the actual
email associated with your private key above.

## Setting the private-diary-file Variable

If you know about customize, you should already know how to do this,
if not hit M-x and type "customize." You should be able to search for
the variable and set it to wherever you put the file.

## Using the private-diary

Simple call the function "swap-diary-and-private-diary" and you can
use it like you would the diary function associated with the calendar
on Emacs. If you're unfamiliar with this, hit M-x, type
"swap-diary-and-private-diary", you should see a message in the
minibuffer telling you the two files, then hit M-x, type "calendar",
pick a day, hit 'i', and it should insert that day into the file. Once
it has encrypted the file, after the first usage, it should also
prompt you for your password.

When you're done with your private diary, hit M-x, type
"swap-diary-and-private-diary" and it will switch them back.

# Questions? Suggestions?

Please contact [James P. Ascher](mailto:jpa4q@virginia) who currently
maintains this package. I'd welcome any additions, suggestions,
changes, or anything else.

# Credits

This project was coded as part of James P. Ascher's experience in
2015-16 Praxis Fellowship at the
[Scholars' Lab](http://scholarslab.org/) at the University of Virginia
and is gratefully advised, assisted, and inspired by his
collaborators: Scott Bailey, Jeremy Boggs, Chris Gist, Wayne Graham,
Ronda Grizzle, Purdom Lindblad, Laura Miller, Eric Rochester, Ammon
Shepherd, Shane Lin, Lydia Warren, Gillet Rosenblith, Bremen Donovan,
Ethan Reed, Rachel Trapp, and Brandon Walsh.

Eric Rochester deserves particular thanks for nourishing an unhealthy
interest in Emacs and org-mode, as well as literate programming, that
helped provide my motivation to do this work.
