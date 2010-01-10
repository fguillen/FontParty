#!ruby
file_path = ARGV[1] || 'font-party.gif'
char_width = ARGV[2] || 30
char_height = ARGV[3] || 60
ascii_value_for_a = 97
ascii_value_for_A = 65
columns_per_line = 10
upcase_chars_line = 3


css = <<CSS
.font-party-element{
  float: left;
  width: #{char_width}px;
  height: #{char_height}px;
  background-image: url(font-party.gif);
}
CSS

'abcdefghijklmnopqrstuvwxyz'.split(//).each do |e|
  ascii_value = e[0]
  height = ((ascii_value - ascii_value_for_a) / columns_per_line) * char_height
  width = ((ascii_value - ascii_value_for_a) % columns_per_line) * char_width
  css += ".font-party-char-#{e}{background-position: -#{width}px -#{height}px;}\n"
end

'ABCEDEFGHIJKLMOPQRSTUVWXYZ'.split(//).each do |e|
  ascii_value = e[0]
  height = (((ascii_value - ascii_value_for_A) / columns_per_line) + upcase_chars_line) * char_height
  width = ((ascii_value - ascii_value_for_A) % columns_per_line) * char_width
  css += ".font-party-char-#{e}{background-position: -#{width}px -#{height}px;}\n"
end

File.open( 'font-party.css', 'w' ) { |f| f.write css }
