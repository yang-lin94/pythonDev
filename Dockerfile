FROM python:3.9-buster

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    zsh\
    vim\
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    python3-venv \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install --upgrade pip \
    && pip install poetry\
    && chsh -s /bin/zsh\
    && curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh\
    && echo 'export PATH="$HOME/.poetry/bin:$PATH"' >> ~/.zshrc\
    && echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

WORKDIR /app

CMD [ "zsh" ]
