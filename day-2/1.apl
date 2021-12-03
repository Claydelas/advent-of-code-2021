data ← ⊃⎕NGET'./day-2/input.txt' 1
instructions ← ' '(≠⊆⊢)¨data
course ← ('forward' 'up' 'down') ∘. {(⍎⊃⌽⍵)×⍺≡⊃⍵} instructions
horizontal ← +/1 ⌷ course
depth ← -/⌽ +/ 1↓course
depth × horizontal
