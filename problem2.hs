-- my solution
myButLast :: [a] -> a
myButLast a = last $ init a

-- some answers from the website itself

-- using simple function composition I guess
myButLast' = last . init

-- using recursion
myButLast'' [x,_] = x
myButLast'' (_:xs) =  myButLast'' xs
 
