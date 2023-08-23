using RamseySpectroscopyCore
using Documenter

DocMeta.setdocmeta!(RamseySpectroscopyCore, :DocTestSetup, :(using RamseySpectroscopyCore); recursive=true)

makedocs(;
    modules=[RamseySpectroscopyCore],
    authors="Maksim Radchenko",
    repo="https://github.com/m0Cey/RamseySpectroscopyCore.jl/blob/{commit}{path}#{line}",
    sitename="RamseySpectroscopyCore.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://m0Cey.github.io/RamseySpectroscopyCore.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/m0Cey/RamseySpectroscopyCore.jl",
    devbranch="main",
)
