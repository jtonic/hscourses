{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}

module Web where

import Network.Wai.Handler.Warp (run)
import Servant

type API = "hello" :> Get '[PlainText] String

server :: Server API
server = return "Hello, world!"

app :: Application
app = serve api server
  where
    api :: Proxy API
    api = Proxy

runApp = run 8080 app