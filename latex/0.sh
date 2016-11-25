# Building the environment for only 1st time

# LaTeX from texlive-full
sudo apt-get install texlive-full
sudo mkdir /usr/share/texmf/tex/latex/multind
sudo wget -nc -P /usr/share/texmf/tex/latex/multind/ http://ctan.org/tex-archive/macros/latex209/contrib/misc/multind.sty
sudo texhash
# Adobe fonts
# https://bitbucket.org/scotv/notes/downloads/adobe-l2.7z
sudo mkdir /usr/share/fonts/truetype/adobe
sudo apt-get install -y p7zip-full 
sudo 7z e ~/Downloads/adobe-l2.7z -o/usr/share/fonts/truetype/adobe/ -aoa
sudo fc-cache -f -v
