using RabiRamseySpectroscopy
using Documenter

DocMeta.setdocmeta!(RabiRamseySpectroscopy, :DocTestSetup, :(using RabiRamseySpectroscopy); recursive=true)

makedocs(;
    modules=[RabiRamseySpectroscopy],
    authors="Maksim Radchenko",
    repo="https://github.com/m0Cey/RabiRamseySpectroscopy.jl/blob/{commit}{path}#{line}",
    sitename="RabiRamseySpectroscopy.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://m0Cey.github.io/RabiRamseySpectroscopy.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/m0Cey/RabiRamseySpectroscopy.jl",
    devbranch="main",
)
