# Mubit Homebrew tap

## How do I install these formulae?

`brew install mubit-ai/tap/<formula>`

Or `brew tap mubit-ai/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "mubit-ai/tap"
brew "<formula>"
```

## Formulae

| Formula | Description |
|---|---|
| `mubit-cli` | Command-line client for the Mubit console: organizations, projects, instances, keys, and usage |

## Maintenance

`Formula/mubit-cli.rb` is generated. The release job in the Mubit platform repository rewrites it on every `cli-v*` tag, with the version and the four checksums taken from the artifacts it just built. Do not edit it by hand: the next release overwrites the file.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
