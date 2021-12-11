data ← (⊢⊆⍨0≠≢¨)⊃⎕NGET './day-4/input.txt' 1
numbers ← ⍎⊃⊃data
boards ←  ↑↑⍎¨¨1↓data
draws ← ,\numbers

wins ← ({(⊂⍵),⊃⍸(∨/∧⌿,∧/)∘(⍵∊⊢)¨draws}⍤2) boards
sorted_wins ← {(⊂⍤⍋ ⍵[;2]) ⌷ ⍵} wins

score ← {
     board ← ↑⍵[;1]
     draw ← ⍵[;2] ⊃ ⍺
     board_sum ← +/, board × ~board ∊ draw
     last_draw ← ¯1 ↑ draw
     board_sum × last_draw
 }

⎕ ← first ← draws score 1 ↑ sorted_wins      ⍝ solution for part 1 (89001)
⎕ ← last ← draws score ¯1 ↑ sorted_wins      ⍝ solution for part 2 (7296)
