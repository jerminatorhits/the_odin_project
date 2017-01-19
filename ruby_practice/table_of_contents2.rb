array = ["Table of Contents", "Chapter 1:  Numbers", "page 1", "Chapter 2:  Letters", "page 72", "Chapter 3:  Variables", "page 118"]
line_width = 50
puts array[0].center line_width
puts
puts array[1].ljust(line_width/2) + array[2].rjust(line_width/2)
puts array[3].ljust(line_width/2) + array[4].rjust(line_width/2)
puts array[5].ljust(line_width/2) + array[6].rjust(line_width/2)