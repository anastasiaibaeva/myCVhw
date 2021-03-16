FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y texlive-fonts-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	dvipng \
	texlive-latex-recommended \
	texlive-base \
	texlive-pictures \
	texlive-lang-cyrillic \
	texlive-science \
	texlive-bibtex-extra biber \
	cm-super

COPY myCV /
RUN pdflatex -interaction=nonstopmode main.tex
CMD ["bash"]