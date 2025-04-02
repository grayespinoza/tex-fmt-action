# tex-fmt GitHub Action
GitHub Action to run [tex-fmt](https://github.com/WGUNDERWOOD/tex-fmt), a LaTeX formatter.

## Usage
1. Create `.github/workflows/tex-fmt.yml`
2. Configure `tex-fmt.yml` ([see examples](#examples))
3. Commit and push `tex-fmt.yml`

### Examples
The following formats all `.tex`, `.bib`, `.cls`, and `.sty` files in the repository on pushes and pull requests, then pushes the changes.
```yml
name: tex-fmt
on: [push, pull_request]

jobs:
  format:
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
        commit_message: "Formatted using tex-fmt"
```
The following formats all `.tex`, `.bib`, `.cls`, and `.sty` files in `chapters/chapter3/` (located in the root of the repository) and its subdirectories using `tabs` as indentation.
```yml
- name: Run tex-fmt
  uses: grayespinoza/tex-fmt-action@main
  with:
    opts: --usetabs
    inputs: chapters/chapter3/
```

## Reporting Issues
Please use [GitHub Issues](https://github.com/grayespinoza/tex-fmt-action/issues) to report bugs, crashes, and other issues.

## License
tex-fmt-action is under the [MIT License](https://github.com/grayespinoza/tex-fmt-action/blob/main/LICENSE).
