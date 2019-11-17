Sestavení (kompilace) programu na operačním systému Linux
=========================================================
.. build-linux.rst

Sestavení programu Horizon-EDA v Linuxu je podobně jednoduché jako ve Windows

Nainstalujte závislosti
-----------------------

Ujistěte se, že máte nainstalované tyto související knihovny:

-  Gtkmm3 >= 3.20
-  cairomm-pdf
-  librsvg
-  util-linux
-  yaml-cpp
-  sqlite
-  boost
-  zeromq
-  glm
-  libgit2
-  curl
-  opencascade / opencascade community edition
-  zeromq with C++ bindings: https://github.com/zeromq/cppzmq
-  podofo
-  libzip

pro různé distribuce jsou zde předpřipraveny příkazy pro případnou instalaci knihoven.

Pro verzi Ubuntu >= 17.04:

::

   sudo apt install libyaml-cpp-dev libsqlite3-dev util-linux librsvg2-dev \
       libcairomm-1.0-dev libepoxy-dev libgtkmm-3.0-dev uuid-dev libboost-dev \
       libzmq5 libzmq3-dev libglm-dev libgit2-dev libcurl4-gnutls-dev liboce-ocaf-dev \
       libpodofo-dev

V systému Arch Linux:

::

   sudo pacman -S yaml-cpp zeromq gtkmm3 cairomm librsvg sqlite3 libgit2 curl \
        opencascade boost glm podofo libzip

Na Fedoře 25/26/27:

::

   sudo dnf install git make gcc gcc-c++ pkg-config cppzmq-devel OCE-devel\
      gtkmm30-devel libgit2-devel libuuid-devel yaml-cpp-devel sqlite-devel librsvg2-devel\
      cairomm-devel glm-devel boost-devel libcurl-devel podofo-devel

Na openSUSE Tumbleweed:

::

   sudo zypper in git make gcc gcc-c++ pkg-config cppzmq-devel oce-devel\
      gtkmm3-devel libgit2-devel libuuid-devel yaml-cpp-devel sqlite3-devel librsvg-devel\
      cairomm-devel glm-devel boost-devel libcurl-devel libpodofo-devel binutils-gold

Na FreeBSD 12:

::

   sudo pkg install git gmake pkgconf e2fsprogs-libuuid sqlite3 yaml-cpp \
      gtkmm30 cppzmq libgit2 boost-libs glm opencascade podofo libzip

Klonovat zdrojový kód programu Horizon-EDA
------------------------------------------

::

   git clone http://github.com/carrotIndustries/horizon
   cd horizon


Sestavení (kompilace) programu ze zdrojového kódu
-------------------------------------------------
::

   make -j 4

Číslo 4 na konci můžete upravit podle počtu procesorů ve vašem systému pro rychlejší kompilaci. Očekávejte 100% zatížení procesoru (CPU) po dobu několika minut dle výkonu počítače. Z důvodu zapnuté volby vkládání ladících symbolů mají výsledné spustitelné soubory značnou velikost.

Spuštění programu
-----------------

Výsledné binární soubory jsou samostatné a nevyžadují žádné externí
datové soubory jako ikony nebo podobně.
``horizon-eda`` je hlavní spustitelný program. Spouštějte jej ze složky kde byl sestaven pomocí příkazu:

::

   ./horizon-eda






