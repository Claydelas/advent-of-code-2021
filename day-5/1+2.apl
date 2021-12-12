data ← ⊃ ⎕NGET './day-5/input.txt' 1
lines ← {⍉ 2 2⍴ ⍎¨ (⍵∊⎕D)⊆⍵}¨ data

straight_lines ← ((∨/=/)¨lines)/lines

points ← {⊃,¨/{⍺-(×d)×⍳1+|d←⍺-⍵}/⍵}
overlaps ← {{≢⍵}⌸⊃,/points¨⍵}
count ← +/2 ≤ overlaps

⎕ ← first ← count straight_lines   ⍝ solution for part 1 (5290)
⎕ ← second ← count lines           ⍝ solution for part 2 (21678)
