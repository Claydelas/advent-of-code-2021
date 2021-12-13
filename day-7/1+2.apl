data ← ⍎,↑⊃⎕NGET './day-7/input.txt' 1

moves ← ⍳⌈/data

cost ← 0,(+/⍳)¨moves

⎕ ← min_fuel_constant ← ⌊/ +⌿ |data ∘.- moves  ⍝ part 1 solution (355150)

⎕ ← min_fuel ← ⌊/ +⌿ (cost⌷⍨1∘+)¨|data ∘.- moves  ⍝ part 2 solution (98368490)
