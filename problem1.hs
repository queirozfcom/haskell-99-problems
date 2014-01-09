-- Prelude last
myLast :: [a] -> a  
myLast x = last x

--call the function recursively until there's only one element left
myLast' :: [a] -> a
myLast' [x]    = x
myLast' (_:xs) =  myLast' xs
