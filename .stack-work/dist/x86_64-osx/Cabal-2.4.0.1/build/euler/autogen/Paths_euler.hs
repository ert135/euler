{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_euler (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/smithr122/personalprojects/eulerProjects/euler/.stack-work/install/x86_64-osx/lts-13.5/8.6.3/bin"
libdir     = "/Users/smithr122/personalprojects/eulerProjects/euler/.stack-work/install/x86_64-osx/lts-13.5/8.6.3/lib/x86_64-osx-ghc-8.6.3/euler-0.1.0.0-2rk9858l7wGKlJHd0v2crg-euler"
dynlibdir  = "/Users/smithr122/personalprojects/eulerProjects/euler/.stack-work/install/x86_64-osx/lts-13.5/8.6.3/lib/x86_64-osx-ghc-8.6.3"
datadir    = "/Users/smithr122/personalprojects/eulerProjects/euler/.stack-work/install/x86_64-osx/lts-13.5/8.6.3/share/x86_64-osx-ghc-8.6.3/euler-0.1.0.0"
libexecdir = "/Users/smithr122/personalprojects/eulerProjects/euler/.stack-work/install/x86_64-osx/lts-13.5/8.6.3/libexec/x86_64-osx-ghc-8.6.3/euler-0.1.0.0"
sysconfdir = "/Users/smithr122/personalprojects/eulerProjects/euler/.stack-work/install/x86_64-osx/lts-13.5/8.6.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "euler_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "euler_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "euler_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "euler_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "euler_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "euler_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
