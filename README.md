zatím rozpracované

Toto je úložiště české verze dokumentace k programu [Horizon EDA](https://github.com/horizon-eda/horizon).

# Horizon je free verze EDA programu
Je sice daleko od dokončení, ale je zde a pro všechny architektury. Podívejte se na [dokumentaci](https://horizon-eda.readthedocs.io/cs/latest/feature-overview.html) pro přehled hlavních výhod programu.

Chcete si psát ohledně programu? Připojte se na skupinu #horizon na serveru freenode

![Obrázek](https://raw.githubusercontent.com/wiki/carrotIndustries/horizon/images/collage.png)

# Dosavadní výhody pro uživatele
- Kompletní proces návrhu od schematu až po export ve formátu Gerber
- Rozumná správa knihoven
- Jednotný editor pro vše od symbolu až po desku
- Editor schématu pracující ze seznamem spojů
- Interaktivní trasér spojů z programu KiCad
- Vykreslování bez chyb a zdržování
- Pravidly řízený návrh DRC
- Funkce Zpět/Vpřed
- Funkce kopírování/vkládání objektů
- Kompilace a běh na Linuxu and Windows

# Výhody pro vývojáře
- Napsán v moderním jazyce C++, dědičně svobodný kód!
- Používá formát JSON založený na formátu souborového systému
- Používá knihovnu Gtkmm3 pro grafické rozhranní
- OpenGL 3 akcelerované rendrování
- Všechny záznamy jsou svázány přes UUID

# Začínáme
Podívejte se na [dokumentaci](https://horizon-eda.readthedocs.io/cs/latest/installation.html)

# Obsažený software třetích stran
- https://github.com/nlohmann/json/
- http://www.angusj.com/delphi/clipper.php
- https://github.com/ivanfratric/polypartition/
- https://github.com/jhasse/poly2tri
- https://qcad.org/en/what-is-dxflib
- https://git.launchpad.net/kicad/tree/pcbnew/router
- https://github.com/russdill/pybis



### Obsah:

[Proč další program pro návrh spojů](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/why-another-eda-package.rst)

[Hlavní výhody](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/feature-overview.rst)

[Cíle](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/non-goals.rst)


### Začínáme:

[Instalace](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/installation.rst)

[Nastavení fondu knihoven](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/pool-setup.rst)

[Nový projekt](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/new-project.rst)

[Kreslení schematu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/draw-schematic.rst)

[Tvorba desky](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/create-board.rst)

[Příklad projektu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/example-project.rst)


### Základní použití editoru:

[Příkazy](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/tools.rst)

[Mezerníkové menu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/spacebar-menu.rst)

[Mřížka](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/grid.rst)

[Vstupy](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/entries.rst)

[Výkres](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/drawing.rst)

[Výběr](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/selection.rst)

[Přesouvání](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/move.rst)

[Hladiny](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/layers.rst)


### Editor schémat:

[Editor schémat](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/imp-sch.rst)


### Editor desky:

[Editor desky](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/imp-board.rst)

[Kopírování návrhu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/copy-layout-placement.rst)

[Zpětné úpravy](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/backannotation.rst)

[Pravidla](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/rules.rst)


### Fond součástek:

[Proč fond součástek](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/pool-why.rst)

[Typy souborů ve fondu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/pool-elements.rst)

[Správce fondu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/pool-mgr.rst)

[Tvorba pouzdra](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/create-package.rst)

[Přispívání do veřejného fondu součástek](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/pool-contribute.rst)

### Pokročilá témata:

[Sestavení programu ve Windows](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/build-win32.rst)

[Sestavení programu v Linuxu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/build-linux.rst)

[Parametry programu](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/parameter-programs.rst)

[Popis funkce](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/theory-of-operation.rst)

[Použití příkazového řádku](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/cli-usage.rst)

[Modul Python](https://github.com/horizon-eda/horizon-docs-cz/blob/master/srcdoc/python.rst)

