# Simple RPC Demo

This demo spawns...

1. ``king`` (as the master) which starts with ``caretakerctl start peasant`` other caretakerd service...
2. ``peasant`` is a simple echo that only prints out that is was called.

## Usage

```bash
docker run --rm echocat/caretakerd-demo-simple-rpc
```
