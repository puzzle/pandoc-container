# Puzzle pandoc Container Image

This container image can be used to render markdown files.


## Usage
### Podman

From the directory the markdown file is in, execute:

```
podman run --rm --volume "$(pwd):/data:Z" --user $(id -u):$(id -g) puzzle/pandoc pandoc --pdf-engine=xelatex -o foo.pdf foo.md
```


## Troubleshooting

Error messages while rendering often contain some file that is missing. Find out the texlive package name by running the following command inside the container:

```
tlmgr search --global --file <file>
```

Then usually Fedora offers a package named `texlive-<packagename>` that can be added to the Dockerfile.
