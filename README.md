# Dissassembling Tail Call Optimization

Code implements a visibly tail call optimized implentation of map,
to be compared with `:lists.map/2`.

`Tco.find_asm/2` takes a Module and function name as atoms,
and returns the assembly code for that function.
