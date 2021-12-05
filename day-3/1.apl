data ← '1' = ↑⊃⎕NGET './day-3/input.txt' 1
gamma ← data >⍥{+⌿⍵} ~data
epsilon ← ~gamma

gamma ×⍥{2⊥⍵} epsilon
