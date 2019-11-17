Použití příkazového řádku (CLI Command Line Interface)
======================================================
.. cli-usage.rst

Správce projektu a správce fondu do značné míry eliminovali potřebu
spouštět interaktivní manipulátor a další nástroje přímo z příkazového řádku,
ale je to stále užitečné pro vývoj.

Všechny níže uvedené příkazy vyžadují proměnnou prostředí
``HORIZON_POOL``, nastavenou na složku fondu (obsahující soubor pool.json a pool.db)

Použití horizon-imp
-------------------

| Režim symbolů:
| ``horizont-imp -y <soubor symbolu>``

| Schematický režim:
| ``horizon-imp -c <soubor schematu> <soubor bloku>``

| Režim padstack:
| ``horizon-imp -a <soubor pájecího obrazce>``

| Režim balíčku:
| ``horizon-imp -k <soubor pouzdra součástky>``

| Režim desky:
| ``horizon-imp -b <soubor desky> <soubor bloku> <přes složku>``

Použití horizont-pool
---------------------

Většina příkazů -edit a -create spustí příslušný $EDITOR, který vytvoří odpovídající soubor ve formátu YAML.

::

   horizon-pool create-unit <soubor jednotky>
   horizon-pool edit-unit <soubor jednotky>
   horizont-pool create-symbol <soubor symbolu> <soubor jednotky>

   horizon-pool create-entity <soubor entity> [<soubor jednotky> ...]
   horizon-pool edit-entity <soubor entity>

   horizon-pool create-package <soubor pouzdra>
   horizont-pool create-padstack <soubor pájecího obrazce>

   horizont-pool update #Aktualizuje SQLite databázi fondu knihovny.

Po vytvoření souborů nezapomeňte spustit ``horizon-pool update``


Použití horizont-prj
--------------------

Pomocí těchto příkazů můžete vytvářet prázdné bloky, schémata atd.

::

   horizon-prj create-block <souboru bloku>

   horizon-prj create-schematic <soubor schematu> <soubor bloku>

   horizon-prj create-board <soubor schematu> <soubor bloku>


