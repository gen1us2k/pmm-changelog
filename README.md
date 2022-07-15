# pmm-changelog

Action for generating PMM release notes

## Example

```yaml

name: Release
on:
  push:
    tags:
      - '*'
jobs:
  release:
    if: startsWith(github.ref, 'refs/tags/')
    runs-on: ubuntu-latest
    steps:
      - name: Build Changelog
        id: pmm_release
        uses: gen1us2k/pmm-changelog@v1
        with:
          release_tag: ${{ github.ref }}
      - name: Create Release
        uses: softprops/action-gh-release@v0.1.14
        with:
          body: ${{steps.pmm_release.outputs.changelog}}

```
