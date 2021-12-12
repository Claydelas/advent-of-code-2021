data ← ⍎,↑⊃⎕NGET './day-6/input.txt'1

simulate ← {
     ⍺=0: ≢⍵    ⍝ after ⍺ days, returns the size of the lanternfish school

     pass ← ⍵-1
     expired ← ¯1=pass

     (⍺-1) ∇ ((6×expired) + pass×~expired), 8⍴⍨ +/expired
 }

 ⎕ ← first ← 80 simulate data   ⍝ solution for part 1 (360268)
 ⍝ 256 simulate data -- part 2 fails, needs a non-recursive solution
