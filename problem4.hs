-- find the number of elements of a list

-- too easy.. doesn't count
myLength :: [x] -> Int
myLength a = length a

-- can't i use a fold and just add one for each element (regardless of what it is?)

myLength' a = foldr (\x -> \y -> y + 1) 0 a

-- here's what's going on.. the thing between parenthesis is a lambda.. it's the function used by fold to accumulate each element (\x) to the currently accumulated value (\y)


-- here's a solution from the website itself:(isn't this a foldr?)

myLength'' []        =  0
myLength'' (_:xs)    =  1 + myLength'' xs

