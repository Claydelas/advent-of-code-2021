data ← ⍎,↑⊃⎕NGET './day-7/input.txt' 1

⎕ ← min_fuel_constant ← ⌊/ +⌿ |data ∘.- ⍳⌈/data  ⍝ part 1 solution (355150)

⎕ ← min_fuel ← ⌊/ +/ {+/⍳⍵}¨⍉ |data ∘.- ⍳⌈/data  ⍝ part 2 solution (98368490)
