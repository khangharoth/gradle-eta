import Lib

data PrintStream = PrintStream @java.io.PrintStream

foreign import java unsafe "@static @field java.lang.System.out" stdout :: PrintStream

foreign import java unsafe println :: PrintStream -> Int -> IO ()

mySum :: Int
mySum = addTwo 3 4

main :: IO ()
main = println stdout $ mySum
