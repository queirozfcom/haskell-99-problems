-- my solution
-- I think there's a !! operator somewhere but that would just be too easy

-- remember -- Int is a type, NOT A TYPECLASS
elementAt :: [x] -> Int -> x
elementAt (x:xs) 1 = x
elementAt (x:xs) j = elementAt xs (j-1)

