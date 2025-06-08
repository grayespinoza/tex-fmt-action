# tex-fmt GitHub Action
GitHub Action to run [tex-fmt](https://github.com/WGUNDERWOOD/tex-fmt), a LaTeX formatter.

## Usage
1. Create `.github/workflows/cd.yml`
2. Configure `cd.yml`
3. Commit and push `cd.yml`

### Examples
The following formats all `.tex`, `.bib`, `.cls`, and `.sty` files in branch `main` on pushes, then pushes the changes.
`.github/workflows/cd.yml`
```yml
name: CD
on:
  push:
    branches: main

jobs:
  tex-fmt:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
    - name: Checkout
      uses: actions/checkout@main
      with:
        ref: ${{ github.head_ref }}
    - name: Run tex-fmt
      uses: grayespinoza/tex-fmt-action@main
    - name: Push
      uses: stefanzweifel/git-auto-commit-action@master
      with:
        commit_message: "style: format using tex-fmt"
```

## Reporting Issues
Please use [GitHub Issues](https://github.com/grayespinoza/tex-fmt-action/issues) to report bugs, crashes, and other issues.

## License
tex-fmt-action is under the [MIT License](https://github.com/grayespinoza/tex-fmt-action/blob/main/LICENSE).
