data ← ⊃⎕NGET'./day-2/input.txt' 1
instructions ← ' '(≠⊆⊢)¨data
course ← ('forward' 'down' 'up') ∘. {(⍎⊃⌽⍵) × ⍺≡⊃⍵} instructions
horizontal ← 1⌷course
aim ← 1↓course
depth ← horizontal × +\ -⌿aim

+/depth × +/horizontal
