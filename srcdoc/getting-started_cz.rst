Začínáme
========
.. getting-started.rst

Takže jste se rozhodli vyzkoušet Horizon-EDA? Skvěle! Zde je návod.


Pořízení programu Horizon-EDA
-----------------------------

Operační systém Windows
~~~~~~~~~~~~~~~~~~~~~~~

Stáhnete nejnovější komprimovaný přeložený binární soubor z adresy `AppVeyor CI <https://ci.appveyor.com/project/carrotIndustries/horizon/build/artifacts>`_ 
a někam ho rozbalte. Pamatujte, že se jedná o 64bitové binární soubory. V případě, že překlad dosud probíhá  nebo ho někdo přerušil, si můžete stáhnout předešlé verze z
`the build history <https://ci.appveyor.com/project/carrotIndustries/horizon/history>`_
(kliknutím na odkaz stáhnete soubor ve formátu zip)


Linux
~~~~~

Viz kapitola 
:doc:`Sestavení (kompilace) programu na operačním systému Linux<build-linux_cz>` v tomto návodě, jak zkompilovat program Horizon-EDA na linuxu.


Získejte fond knihovny
----------------------

program Git
~~~~~~~~~~~

Pokud znáte program git, stačí někam naklonovat soubory z veřejného archivu
`horizon-pool <https://github.com/carrotIndustries/horizon-pool/>`_
. Je vhodné použít program git, aby se udržely vaše místní 
kopie aktuální a mohli případně publikovat vaše nové díly do veřejného archivu.


Správce fondu knihovny
~~~~~~~~~~~~~~~~~~~~~~

Nevíte, jak na to? Žádný problém! Poklepejte na ``horizon-eda.exe`` nebo
spusťte ``./horizon-eda`` z vašeho příkazového řádku a klikněte na 'Download...'
pro stažení fondu. Výchozí fond ``carrotIndustries/horizon-pool`` je
ten který potřebujete. Správce fondu vám pomůže s udržováním
vašeho fondu v aktuálním stavu, viz karta "Remote". Také vám pomůže s
vytvořením žádosti o doplnění nových součástí do veřejného archivu, a tak můžete snadno přispět do veřejného archivu  bez jakýchkoli znalostí programu git.

Vytvořte nový projekt
---------------------

Klikněte na ``horizon-eda.exe`` nebo spusťte program ``./horizon-eda`` z vašeho
příkazového řádku. Poté by se  mělo zobrazit okno podobné tomuto (obrázek
potřebuje aktualizovat):

.. image :: images / prj-mgr.png

Klikněte na ikonu aplikace v levém horním rohu a otevřete
dialog nastavení. Přidejte fond, který jste právě stáhli, tím, že vyberete složku obsahující soubor
``pool.json``. Když to dokončíte dialogové okno předvoleb by mělo vypadat takto:

.. image :: images / pool-prefs.png

Nyní vytvořte nový projekt klepnutím na "New...".


Schéma
------

Po vytvoření nového projektu otevřete editor schémat a
umístěte nějaké součástky a propojte je.


Deska
-----

Po vložení a propojení součástek v editoru schémat klikněte na
uložit do souboru schématu a otevřete editor desky v projektovém
manažeru. Umístěte pouzdra součástek na plochu desky zadáním "pp". Pro trasování
propojení jednotlivých spojů, stiskněte klávesu "x". Pro přenesení nové komponenty ze schématu na
desku, klikněte na tlačítko 'save' v editoru schémat a následně 'reload netlist'
v editoru desky plošných spojů.


Příklad projektu
----------------

Místo zahájení vlastního projektu si také můžete projekt stáhnout např. `návrhové soubory projektu X-Band
transmitter <https://github.com/carrotIndustries/x-band-tx>`__. Pro otevření, vyberte složku obsahující soubor ``ddstx.hprj`` v projektovém manažeru. Ujistěte se, že jsou rozbaleny všechny soubory obsažené v tomto archivu.

