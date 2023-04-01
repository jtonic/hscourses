module MonadsEx.Ex1 where

import           Control.Monad.IO.Class     (liftIO)
import           Control.Monad.Trans.Except
import           Data.Aeson
import qualified Data.ByteString.Lazy       as B
import System.Directory

readAndParseFile :: FilePath -> ExceptT String IO Value
readAndParseFile filePath = do
  fileContents <- liftIO $ B.readFile filePath
  case eitherDecode fileContents of
    Left err   -> throwE err
    Right json -> return json

main :: IO ()
main = do
  crtDir <- getCurrentDirectory
  result <- runExceptT $ readAndParseFile $ crtDir ++ "/data/input.json"
  case result of
    Left err   -> putStrLn $ "Error: " ++ err
    Right json -> print json
