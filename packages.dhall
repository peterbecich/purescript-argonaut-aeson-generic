let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20210118/packages.dhall sha256:a59c5c93a68d5d066f3815a89f398bcf00e130a51cb185b2da29b20e2d8ae115

let overrides =
      { argonaut-generic = upstream.argonaut-generic ⫽ { version = "v5.0.0" }
      , argonaut = upstream.argonaut ⫽ { version = "v6.0.0" }
      , argonaut-codecs = upstream.argonaut-codecs ⫽ { version = "v6.0.2" }
      , argonaut-traversals =
          upstream.argonaut-traversals ⫽ { version = "v6.0.0" }
      }

let additions =
      { package-name =
        { dependencies =
          [ "enums", "foldable-traversable", "maybe", "newtype", "prelude" ]
        , repo = "git://github.com/purescript/purescript-generics-rep.git"
        , version = "v6.1.1"
        }
      }

in  upstream ⫽ overrides ⫽ additions
