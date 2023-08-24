# Nostr backups from the command line

Very much a work in progress. Use at your own risk.

Features:

* takes your events (from nostr-commander-rs) as input
* downloads all png and jpeg images (avoids redownload)

## Usage

1. Install [nostr-commander-rs](https://github.com/8go/nostr-commander-rs).
2. Add some of your favorite relays
3. Create a dummy user
4. Pipe the result of listen into a JSON file:

```sh
nostr-commander-rs --listen --output json > events.json
```

5. Process with the backup script

```sh
./backup.sh events.json
```

## TODO

A lot...

- [ ] incrementally add events (i.e. append and de-duplicate)
- [ ] generate markdown timeline (with inline images and spacing between threads)
- [ ] backup replies to your posts (optionally added to the markdown, maybe some filters)
- [ ] backup context for threads you reply to (all event ancenstors, some more)
- [ ] generate markdown file for each thread you were involved in (and maybe some index)
- [ ] store DM's seperately
- [ ] command to decrypt and print DMs (takes your nsec plus the npub of the contact that you want to decrypt for)

(the idea of markdown is that you can use [Pandoc](https://pandoc.org) to prettify it)