data ← +/ (⍳9) ∘.= 1+⍎⊃⊃⎕NGET'./day-6/input.txt' 1    ⍝ group fish by their timer

simulate ← { x ← 1⌽⍵ ⋄ x[7] +← x[9] ⋄ x }   ⍝ simulate time passing

⎕ ← second ← +/ simulate⍣256 ⊢ n     ⍝ solution for part 2 (1632146183902)
