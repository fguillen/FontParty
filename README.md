# FontParty JavaScript Library

## Summary
This javascript jQuery library permits to replace any text block on a page with graphic characters.

## How to Install
Download the (jQuery library)[http://docs.jquery.com/Downloading_jQuery] (is a dependence).

Download (FontParty library)[http://fernandoguillen.info/playing/fontparty#download].

Load the script libraries on your page:
  
  <script src="jquery.js" type="text/javascript"></script>
  <script src="font-party_v0.0.1.js" type="text/javascript"></script>
  
Load the FontParty css on your page:

  <link href='font-party.css' rel='stylesheet' type='text/css' />

## How to Use
Normal html element:

  <p class="myclass">This is a normal paragraph with normal text and all</p>
  
FontParty html element

  <p class="myclass font-party ">This is a normal paragraph with normal text and all</p>
  
## How It Works
Selecting all the '.font-party' elements on the page and replace any characters into them with an 'img' element build on the fly.

## Components

* jQuery library needed
* font-party.css
* font-party.gif
* font-party.js

## How to Customize

### Using your own font-characters-image-tile
Build and tile-based image with all the english characters following next template:

  abcdefghij
  klmnopqrst
  uvwxyz
  ABCDEFGHIJ
  KLMNOPQRST
  UVXYZ
  
What means a table with 10 columns and 6 rows.

The height and width of the cells are customizable but all they have to have the same ones.

Run the Ruby script that builds the customized .css file:

  $ ruby font-party-css-creator.rb <file_path> <cell_width_on_pixels> <cell_height_on_pixels>
  
## Code

()

## TODO
* Support for different size fonts.
* Effects on mouse hover.
* Support for spaces, comas and more.
* Support for not english characters.
* Not use div.style.background but img elements