var documenterSearchIndex = {"docs":
[{"location":"#RamseySpectroscopyCore.jl","page":"Home","title":"RamseySpectroscopyCore.jl","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"(This section is WIP) RamseySpectroscopyCore.jl provides core toolset for simulating Rabi/Ramsey spectroscopy experiments. The main goal is to have ready-to-use, simple-to-understand modeling toolkit with experimenters in mind. Furthermore, it can be used as introduction to spectroscopy for people with little physics background or students.","category":"page"},{"location":"#Installation","page":"Home","title":"Installation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"To install RamseySpectroscopyCore.jl, use the Julia package manager:","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> using Pkg\njulia> Pkg.add(\"RamseySpectroscopyCore\")","category":"page"},{"location":"#Example","page":"Home","title":"Example","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"(This section is WIP)","category":"page"},{"location":"","page":"Home","title":"Home","text":"Lets start by creating our experement setup:","category":"page"},{"location":"","page":"Home","title":"Home","text":"Gas cell or a single atom - research object;","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> using RamseySpectroscopyCore\njulia> atom = StateVector(0, 1)","category":"page"},{"location":"","page":"Home","title":"Home","text":"Tunable laser - research instrument.","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> laser = PerturbEvol(0, 3.14, 1)","category":"page"},{"location":"","page":"Home","title":"Home","text":"Now we want to pump our atom with a laser to excited energy level:","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> pump!(atom, laser)","category":"page"},{"location":"","page":"Home","title":"Home","text":"After that, atom needs to be probed with a second laser pulse to check a populaton of the excited state (or how many atoms in a gas cell are excited).","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> probe(atom)\n0.9999","category":"page"},{"location":"","page":"Home","title":"Home","text":"We'll get some value approximately close to 1, which means that laser frequency is resonant with transition frequency of an atom. ","category":"page"},{"location":"","page":"Home","title":"Home","text":"Congrats, you performed your first spectroscopy experement in Julia!","category":"page"},{"location":"#Development","page":"Home","title":"Development","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"(This section is WIP) If you want to help develop this package, you can do it via GitHub default instruments(pull requests, issues etc.) and/or contact me: sciencefloppa@gmail.com. In additon, it is highly recommended to read or modify code of RamseySpectroscopyCore.jl with JuliaMono font installed. That way UTF-8 symbols will be displayed correctly.","category":"page"}]
}
