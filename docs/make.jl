using BasisChange
using Documenter

DocMeta.setdocmeta!(BasisChange, :DocTestSetup, :(using BasisChange); recursive=true)

makedocs(;
    modules=[BasisChange],
    authors="Sebastian Micluța-Câmpeanu <m.c.sebastian95@gmail.com>, Petru-Vlad Toma <tomapv@gmail.com>",
    repo="https://github.com/ctp-fpub/BasisChange.jl/blob/{commit}{path}#{line}",
    sitename="BasisChange.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ctp-fpub.github.io/BasisChange.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ctp-fpub/BasisChange.jl",
)
