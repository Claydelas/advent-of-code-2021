data ← '1' = ↑⊃⎕NGET './day-3/input.txt' 1
majority ← {
     ⍺ ← 1 
     1∘=(≢⍵):⍵
     (⍺+1)∇(((⍵ ≥⍥{+⌿⍵} ~⍵)[⍺]=⍵[;⍺])⌿⍵)
     }
minority ← {
     ⍺ ← 1 
     1∘=(≢⍵):⍵
     (⍺+1)∇(((⍵ <⍥{+⌿⍵} ~⍵)[⍺]=⍵[;⍺])⌿⍵)
     }
oxygen ← 1 majority data
co2 ← 1 minority data

oxygen ×⍥{2⊥,⍵} co2
