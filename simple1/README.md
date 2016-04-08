# simple1 caretakerd demo

This only spawns to processes...

1. ``myProgram.sh`` (as the master) that runs only for a fixed amount of time
2. ...and ``myTool.sh`` that runs invinitely, but ends when the master ends.

> *Hint:* If you hit [Ctrl]+[C] on console of ``docker run`` the whole process will be graceful terminated before the fixed amount of time.

## Usage

```bash
docker run --rm echocat/caretakerd-demo-simple1 [<seconds myProgram.sh runs>]
```

## Examples

```bash
# Whole container will run for 10 seconds (default value of myProgram.sh)
docker run --rm echocat/caretakerd-demo-simple1

# Whole container will run for 60 seconds
docker run --rm echocat/caretakerd-demo-simple1 60
```
