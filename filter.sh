printf 'gate\napple\nwhat\nkite\n'
#gate
#apple
#what
#kite

# same as: grep 'at' and sed -n '/at/p'
# filter lines containing 'at'
printf 'gate\napple\nwhat\nkite\n' | awk '/at/'
#gate
#what

# same as: grep -v 'e' and sed -n '/e/!p'
# filter lines NOT containing 'e'
printf 'gate\napple\nwhat\nkite\n' | awk '!/e/'
#what


