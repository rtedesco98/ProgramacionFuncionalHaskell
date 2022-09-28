import Data.Char
import Data.List
import Data.Maybe


cuentaPalabras :: String -> Int
cuentaPalabras = length . words

capitalizarPalabras :: String -> String
capitalizarPalabras = unwords . map capitalize . words
    where capitalize (x:xs) = toUpper x : map toLower xs

main = do
    print $ cuentaPalabras "Un dia en el mundo cuenca"
    print $ capitalizarPalabras "Un dia en el mundo cuenca"
