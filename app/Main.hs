{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

module Main where

import Yesod
import Lib

data HelloWorld = HelloWorld

mkYesod "HelloWorld" [parseRoutes| / HomeR GET |] -- parseRoutesと|の間にスペースを入れるべからず！！関係ないところにエラーが出る！

instance Yesod HelloWorld

getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet|Hello World!|]

main :: IO ()
main = warp 3000 HelloWorld
