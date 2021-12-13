data ← ⍎,↑⊃⎕NGET './day-7/input.txt' 1

⎕ ← min_fuel ← ⌊/ +⌿ |data ∘.- ⍳⌈/data  ⍝ part 1 solution (355150)
