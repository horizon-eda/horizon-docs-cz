Sestavení (kompilace) programu na operačním systému Windows
===========================================================
.. build-win32.rst

Nainstalujte program MSYS2
--------------------------

Stáhněte si a spusťte instalátor programu msys2 z http://msys2.github.io/ Mám
testováno pouze s 64bitovou verzí, 32bit by měla fungovat také. Ujistěte se, že cesta, kterou jste vybrali pro instalaci neobsahuje žádné mezery (v názvech složek).

Spusťte konzolu MSYS
--------------------

Spusťte položku nabídky Start „MSYS2 mingw 64 bit“, která by se měla zobrazit
v okně konzoly. Všechny níže uvedené kroky se týkají toho, co by jste měli napsat
do toho okna.

Nainstalujte aktualizace
------------------------

Napište

::

   pacman -Syu

pokud vám řekne, že chce restartovat před restartováním, zavřete okno konzoly a
 po restartu znovu spusťte program ``pacman -Syu``.

Nainstalujte související součásti
---------------------------------

Napište / vložte

::

   pacman -S mingw-w64-x86_64-gtkmm3 git base-devel \
   mingw-w64-x86_64-yaml-cpp mingw-w64-x86_64-boost \
   mingw-w64-x86_64-sqlite3 mingw-w64-x86_64-toolchain \
   mingw-w64-x86_64-zeromq mingw-w64-x86_64-glm zip \
   mingw-w64-x86_64-libgit2 mingw-w64-x86_64-oce \
   mingw-w64-x86_64-podofo --needed

Až budete vyzváni, stačí stisknout klávesu Enter. Posaďte se a počkejte, až instalátor dokončí
instalaci téměř kompletního linuxového vývojového prostředí.

Než budete pokračovat, můžete přejít do jiné složky. Je to jednoduché
zadejte `` cd``, mezerník a přetáhněte složku, do které chcete přejít
do okna konzoly.

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

Po kompilaci nebudete moci dvakrát kliknout na výsledné spustitelné soubory protože požadované knihovny DLL nejsou ve složce známé systému Windows. Budete muset spustit z příkazového řádku prostředí Mingw například pomocí příkazu ``./horizon-eda``. 
Aby fungovalo stahování fondu, musíte zkopírovat soubor ``/mingw64/ssl/certs/ca-bundle.crt`` do složky obsahující ``horizon-eda.exe``.

Vytvoření archivu
-----------------

Chcete-li vytvořit archiv ZIP, jak je dostupný ke stažení, spusťte příkaz 
``./make_bindist.sh``.

















