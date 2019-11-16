let mkPackage =
      https://raw.githubusercontent.com/purescript/package-sets/psc-0.12.5-20190508/src/mkPackage.dhall sha256:0b197efa1d397ace6eb46b243ff2d73a3da5638d8d0ac8473e8e4a8fc528cf57

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.4-20191110/packages.dhall sha256:563a7f694e18e6399f7f6d01f5b7e3c3345781655d99945768f48e458feb93a4

let overrides = {=}

let additions =
      { undefinable =
          mkPackage
            [ "functions", "maybe" ]
            "https://github.com/ethul/purescript-undefinable.git"
            "v4.0.0"
      }

in  upstream // overrides // additions
