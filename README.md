# FontParty JavaScript Library

## Summary
This JavaScript jQuery library permits to replace any text block on a page with **graphic characters**.

## Disclaimer
The results are not *very serious*, is just for very concrete scenarios.

## How to Install
Download the [jQuery library](http://docs.jquery.com/Downloading_jQuery "jQuery library") (is a dependence).

Download [FontParty library](http://fernandoguillen.info/playing/fontparty#download "FontParty library").

Load the script libraries on your page:
  
    <script src="jquery.js" type="text/javascript"></script>
    <script src="font-party_v0.0.1.js" type="text/javascript"></script>
  
Load the FontParty css on your page:

    <link href='font-party.css' rel='stylesheet' type='text/css' />

## How to Use
**Normal** html element:

    <p class="myclass">This is a normal paragraph with normal text and all</p>
  
**FontParty** html element

    <p class="myclass font-party ">This is a normal paragraph with normal text and all</p>
  
## How It Works
Selecting all the '.font-party' elements on the page and **replace any characters** into them with a 'div' element with special 'class' built on the fly.

(I think is better way to do this with 'img' elements, look the TODO tasks list)

## Components
* jQuery library needed
* font-party.css
* font-party.gif
* font-party.js

## How to Customize

### Using your own font-chars-tile-image
Build a **tile-based image** with all the english characters following next template:

    ABCDEFGHIJ
    KLMNOPQRST
    UVXYZ
    abcdefghij
    klmnopqrst
    uvwxyz
    1234567890
     .,;:

(First character of the last line is **an space**)

What means a **table with 10 columns and 8 rows**.

The **height and width of the cells are customizable** but all of them have to have the same ones.

Run the Ruby script that **builds the customized .css file**:

    $ ruby font-party-css-creator.rb <image_file_name> <cell_width_on_pixels> <cell_height_on_pixels>
  
## Code
[FontParty's github repository](http://github.com/fguillen/FontParty "FontParty's github repository")

## Author
[Fernando Guillen](http://fernandoguillen.info "Fernando Guillen official site")

## License
One of those you can do **whatever you want** with the code.

## TODO
* Support for not english characters.
* Support for different size fonts.
* Effects on mouse hover.
* Not use div.style.background but img elements
* Different font-parties on same page