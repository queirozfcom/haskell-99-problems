data NestedList a = Elem a | List [NestedList a]


--failed this one..

--flatten :: NestedList x -> [x]
--flatten (Elem b)  = [b]
--flatten (List []) = []
--flatten (List [c,d]) =  (flatten c) ++ (flatten d)


flatten :: NestedList x -> [x]
flatten (Elem x ) = [x]
flatten (List xs) =  foldr (++) [] $ map flatten xs

--from the website:
--very simple, it seems....

flatten' (Elem x) = [x]
flatten' (List x) = concatMap flatten' x


-- this one seems simpler:
-- concatMap is probably a map with the concat function as default
-- in layman's terms...concatMap produces a list. it takes a list and runs each (individual) element in it through a function like ( a -> [a] ) that creates lists. at the end all results are concatenated together.

--examples:

-- concatMap (\x -> [x,x*2]) [1,2,3]
-- =>[1,2,2,4,3,6]

-- concatMap (\x -> [x*2]) [1,2,3]
-- [2,4,6]
-- which is equivalent to map (\x -> x*2) [1,2,3]
