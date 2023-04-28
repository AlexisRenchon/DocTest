using DocTest
using Documenter

DocMeta.setdocmeta!(DocTest, :DocTestSetup, :(using DocTest); recursive=true)

makedocs(;
    modules=[DocTest],
    authors="Alexandre A. Renchon et al.",
    repo="https://github.com/AlexisRenchon/DocTest.jl/blob/{commit}{path}#{line}",
    sitename="DocTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://AlexisRenchon.github.io/DocTest.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/AlexisRenchon/DocTest.jl",
    devbranch="main",
)
