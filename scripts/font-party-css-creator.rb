##!ruby

# ======================
# Creates a css file that fix with a custom font-chars-tile-image.
# 
# Use:
#  ruby font-party-css-creator.rb <image_file_name> <cell_width_on_pixels> <cell_height_on_pixels>
# ======================

file_path = ARGV[1] || 'font-party.gif'
char_width = ARGV[2] || 30
char_height = ARGV[3] || 60

chars_table = <<CHARSTABLE
ABCDEFGHIJ
KLMNOPQRST
UVXYZ
abcdefghij
klmnopqrst
uvwxyz
1234567890
 .,;:
CHARSTABLE

css = <<CSS
.font-party{ overflow: auto; width: 100%; }
.font-party-element{
  float: left;
  width: #{char_width}px;
  height: #{char_height}px;
  background-image: url(font-party.gif);
}
CSS

chars_table.split(/\n/).each_with_index do |line_chars, line_num|
  line_chars.split(//).each_with_index do |char, column_num|
    height = line_num * char_height
    width = column_num * char_width
    css += ".font-party-char-#{char[0]}{background-position: -#{width}px -#{height}px;}\n"
  end
end

File.open( 'font-party.css', 'w' ) { |f| f.write css }

puts "font-party.css created!"