# Python Environment Setup with uv

## Install uv

```bash
brew install uv
```

## Setup Common Virtual Environment

```bash
uv venv ~/.venvs/common
source ~/.venvs/common/bin/activate
uv pip install -r ~/.venvs/packages.txt
```

Save `packages.txt` to `~/.venvs/packages.txt`.

## Auto-Activate on Terminal Start

```bash
echo 'source ~/.venvs/common/bin/activate' >> ~/.zshrc
source ~/.zshrc
```

## Rebuild (After Reinstalling Python)

```bash
rm -rf ~/.venvs/common
uv venv ~/.venvs/common
source ~/.venvs/common/bin/activate
uv pip install -r ~/.venvs/packages.txt
```

## Commands

| Command | Action |
|---------|--------|
| `deactivate` | Exit venv |
| `source ~/.venvs/common/bin/activate` | Re-enter venv |
| `uv pip install <package>` | Install package |
| `uv pip list` | List installed packages |

## Optional: Let uv Manage Python Versions

```bash
uv python install 3.12 3.13 3.14
uv venv ~/.venvs/py312 --python 3.12
```