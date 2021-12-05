data ← '1' = ↑⊃⎕NGET './day-3/input.txt' 1
rating ← {
     ⍺←1
     1∘=(≢⍵):⍵
     (⍺+1) ∇ (⍵ ⍺⍺⍥{+⌿⍵} ~⍵)[⍺]=⍵[;⍺]⌿⍵
}
oxygen ← ≥ rating data
co2 ← < rating data

oxygen ×⍥{2⊥,⍵} co2
