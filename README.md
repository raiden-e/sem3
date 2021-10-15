# sem3-statistik

Softwaretechnik und Statistik

## Setup Environment

Install:
- VS-Code
- R: <https://marketplace.visualstudio.com/items?itemName=Ikuyadeu.r>
- R Debugger: <https://marketplace.visualstudio.com/items?itemName=RDebugger.r-debugger>
- R Runtime: <https://cran.r-project.org/bin/windows/base/>
- Point `r.rpath.windows` to R's bin foler in VSC
  - In VS Code:
  - `CTRL` + `,`
  - `r.rpath.windows` > `D:\R\R-4.1.1\bin`

- Also set the bin folder in %PATH%
  - `set PATH=%PATH%;D:\R\R-4.1.1\bin`
- install language server: `install.packages("languageserver")`
  - Open PS in the R bin folder
  - `.\R.exe`
  - `install.packages("languageserver")`

