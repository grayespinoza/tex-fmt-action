# tex-fmt GitHub Action
GitHub Action to run [tex-fmt](https://github.com/WGUNDERWOOD/tex-fmt), a LaTeX formatter.

## Usage
1. Create `tex-fmt.yml` in `.github/workflows/`
2. Paste the following into `tex-fmt.yml`:
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
      with:
        args: --check
    - name: Push
      uses: stefanzweifel/git-auto-commit-action@master
      with:
        commit_message: "Formatted using tex-fmt"
```
3. Commit and push `tex-fmt.yml`

## Reporting Issues
Please use [GitHub Issues](https://github.com/grayespinoza/tex-fmt-action/issues) to report bugs, crashes, and other issues.

## License
tex-fmt-action is under the [MIT License](https://github.com/grayespinoza/tex-fmt-action/blob/main/LICENSE).
