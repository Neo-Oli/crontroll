# crontroll

A cronjob controller written in bash. Treat cronjobs similar services and enable or disable them from the command line.

# Examples

```
$ crontroll status updatedb
enabled: updatedb; 0 3 * * * updatedb -U ~/drive
$ crontroll disable updatedb
$ crontroll status updatedb
disabled: updatedb; 0 3 * * * updatedb -U ~/drive
$ crontroll enable updatedb
$
```

# Setting up cronjobs
Instead of writing directly to your crontab file, create a file per cronjob in `~/.cron`.

## Example

```
~/.cron $ cat updatedb
0 3 * * * updatedb -U ~/drive
```

Then run `crontroll reload` to enable your new cronjob.
