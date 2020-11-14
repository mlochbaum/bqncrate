# Contributing

If something is missing or not right, please submit an issue.

You can also submit a pull request, especially against [table.tsv](table.tsv) — the really simple TSV file database: 

- `<`, `>`, `&`, `'`, and `"` are automatically escaped
- rows are separated by line breaks
- line breaks may be CR+LF or just LF
- empty rows are ignored
- trailing line break is required
- columns are separated by tabs (`	`)
- each line should have the same number of tabs (currently 6)

### Example entries from table.tsv

|SYNTAX|DESCRIPTION|CLASS|TYPE|GROUP|CATEGORY|KEYWORDS|
|------|-----------|-----|----|-----|--------|--------|
| +y   |Conjugate ('Identity' if y not complex)|Primitive|Monadic Function||Mathematical|greek cross plus conj() conjugating|
|(+´÷≠)n|Arithmetic mean of n|Tacit|Monadic Function||Mathematical|average arithmeticmean() AM() avg() mean()
|F⎉j0 y|Rank: apply F to j0-cells to form cells of the result|Primitive|Monadic Function|2-modifier|Function Application|sub-array dimensions axes ending
|x F⎉j1 y|Rank: F on corresponding cells of x and y|Primitive|Dyadic Function|2-modifier|Function Application|sub-array dimensions axes ending
|F{𝔽𝕩⋄𝕩}y|Apply function F but discard result and return the original value|Block Modifier|Monadic Function|1-modifier|Function Application|is-yfunction do-yfunction enpassant noresult isyfunction doyfunction

You don't have to fill all the columns, but do try to maximise the number of keyword synonyms in the KEYWORDS column.

### Notation for arguments and operands

Note how arguments and operands are given short menmonic names, as follows:

|NAME<br> |PLACEMENT<br><sup>relative to main subject</sub>|TYPE<br><sup>of array</sup>|
| - | - | -|
|x|left|any array|
|y|right|any array (can be on the left in combination with z)|
|z|right|any array (only used when x and y are not enough)|
|m|left|numeric array|
|n|right|numeric array|
|i|left|integer array|
|j|right|integer array|
|a|left|Boolean (0/1)|
|b|right|Boolean (0/1)|
|c|left|character|
|d|right|character|
|F|left|function|
|G|mid|function|
|H|right|function|

A name can optionally be followed by a specification of its rank: 0, 1, or 2 for unit, list, and table.
