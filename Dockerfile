From ubuntu:14.04

RUN apt-get update && apt-get upgrade -y && apt-get install python python-dev vim git build-essential cmake curl fontconfig -y

RUN curl -O https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
RUN curl -O https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

RUN fc-cache -vf /root/.fonts && mkdir -p /root/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf /root/.config/fontconfig/conf.d/

RUN git clone https://github.com/gmarik/Vundle.vim.git /root/.vim/bundle/Vundle.vim

RUN apt-get install curl

RUN curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py

RUN pip install powerline-status

ADD .vimrc /root/.vimrc

RUN mkdir -p /root/.vim/colors 

ADD atom-dark-256.vim /root/.vim/colors/

RUN vim +PluginInstall +qall

RUN cd /root/.vim/bundle/YouCompleteMe && ./install.py
