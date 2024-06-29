# Table of Contents
# first way
table = [line_width = 40,
         'Table of Contents'.center(line_width),
         'Chapter 1: Getting Started'.ljust(line_width) + 'Page 1'.center(line_width / 2),
         'Chapter 2: Numbers'.ljust(line_width) + 'Page 9'.center(line_width / 2),
         'Chapter 3: Letter'.ljust(line_width) + ' Page 13'.center(line_width / 2)]
puts table[1..4]

# second way
table2 = table = ['Table of Contents',
                  'Chapter 1: Getting Started',
                  'Page 1',
                  'Chapter 2: Numbers',
                  'Page 9',
                  'Chapter 3: Letter',
                  ' Page 13']
line_width = 40                  
puts table2[0].center(line_width)
puts table2[1].ljust(line_width) + table2[2].center(line_width/2)
puts table2[3].ljust(line_width) + table2[4].center(line_width/2)
puts table2[5].ljust(line_width) + table2[6].center(line_width/2)