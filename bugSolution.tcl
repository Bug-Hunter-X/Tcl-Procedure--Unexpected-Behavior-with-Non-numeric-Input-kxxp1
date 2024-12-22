proc myproc {a b} {
  if {[string is double -strict $a] && [string is double -strict $b]} {
    if {$a > $b} {
      return $a
    } else {
      return $b
    }
  } else {
    return -code error "Invalid input: Arguments must be numbers"
  }
}

puts [myproc 10 20]
puts [myproc 10 abc] 