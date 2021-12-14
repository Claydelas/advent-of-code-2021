data ← ⊃⎕NGET './day-9/input.txt' 1
map ← ↑⍎¨¨data

pad ← {10 ⍪ (10, ⍵, 10) ⍪ 10} ⍝ pad map with '10's for edges

compare ← {
    right   ← ⍵ <  1 ⌽ ⍵    ⍝ smaller than right neighbour
    left    ← ⍵ < ¯1 ⌽ ⍵    ⍝ smaller than left neighbour
    bottom  ← ⍵ <  1 ⊖ ⍵    ⍝ smaller than bottom neighbour
    top     ← ⍵ < ¯1 ⊖ ⍵    ⍝ smaller than top neighbour
    right ∧ left ∧ bottom ∧ top
}

low_points ← ⍉ ¯1↓1↓⍉ ¯1↓1↓ compare pad map ⍝ drop edge padding

⎕ ← risk ← +/, low_points × 1+map   ⍝ part 1 solution (512)





