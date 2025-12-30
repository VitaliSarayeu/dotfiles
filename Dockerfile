FROM fedora

RUN dnf install -y git nvim gcc bat ripgrep fzf nodejs tmux unzip helm wget make go file g++ luarocks direnv

ENV KUBE_EDITOR=nvim
ENV CC=gcc-15

RUN  dnf copr enable -y dejan/lazygit; \
     dnf install -y lazygit

RUN npm install -g yaml-language-server 

RUN CC=gcc npm install -g tree-sitter tree-sitter-cli

RUN curl -L https://github.com/mrjosh/helm-ls/releases/download/master/helm_ls_linux_arm64 --output /usr/local/bin/helm_ls && chmod +x /usr/local/bin/helm_ls

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"; \
    unzip awscliv2.zip; \
    ./aws/install

RUN    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"; \
   chmod +x kubectl; \
   mv kubectl /usr/bin

RUN wget https://releases.hashicorp.com/terraform/1.14.3/terraform_1.14.3_linux_arm.zip; \
    unzip terraform_1.14.3_linux_arm.zip; \
    chmod +x terraform; \
    mv terraform /usr/bin

RUN git clone https://github.com/derailed/k9s.git; \
    cd k9s && make build && mv ./execs/k9s /usr/bin


# docker run --rm -it -v ~/dotfiles/.config:/root/.config -v ~/.ssh:/root/.ssh:ro -v ~/.aws:/root/.aws:ro -v ~/Documents/Sentry/:/root/Sentry -w /root workstation bash
# need volume for /root/.cache and /root/.local
