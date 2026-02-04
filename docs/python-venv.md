# Python Common Virtual Environment Setup

## Setup

```bash
mkdir -p ~/.venvs
python3 -m venv ~/.venvs/common
source ~/.venvs/common/bin/activate
pip install numpy pandas matplotlib seaborn scipy jupyter
```

## Auto-Activate on Terminal Start

```bash
echo 'source ~/.venvs/common/bin/activate' >> ~/.zshrc
source ~/.zshrc
```

## Commands

| Command | Action |
|---------|--------|
| `deactivate` | Exit venv |
| `source ~/.venvs/common/bin/activate` | Re-enter venv |
