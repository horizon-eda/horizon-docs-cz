Popis funkce
============
.. theory-of-operation.rst

Interaktivní manipulátor
------------------------

Primárním rozhraním Horizontu je tzv. „Interaktivní manipulátor“.
Je to jednotný editor symbolů, schémat, pájecích míst (padstacks),
pouzder součástek (packages) a desky plošných spojů (PCB).

Pracovní plocha (Canvas)
~~~~~~~~~~~~~~~~~~~~~~~~

Na pracovní ploše se vykreslují objekty, jako jsou symboly schematu, pouzdra součástek nebo jednotlivé spoje.
výstupem vykreslení jsou segmenty čar a trojúhelníky, které jsou následně vykresleny pomocí grafického procesoru (GPU).
Chcete-li vykreslit na pracovní ploše jiné než grafické (OpenGL) objekty,
pracovní plocha poskytuje nástroje pro získání více informací o tom, co je
vykresleno. Zatím program umožňuje výstup ve formátu Gerber, 3D náhled na desku a kontrolu dle pravidel návrhu
(DRC - Design rule checking)

Jádro (Core)
~~~~~~~~~~~~

Protože některé dokumenty, jako jsou symboly a schémata, obsahují ty samé
typy objektu (např. texty), schémata a seznam spojů (netlist) musí být
modifikované synchronizovaně, musí dojít k zapouzdření. Jádro je 
spojovací článek mezi dokumentem, pracovní plochou a nástroji.

Nástroje (Tools)
~~~~~~~~~~~~~~~~

Pro každou akci, kterou může uživatel udělat, existuje nástroj. Vyvoláný nástroj začne
přijímat vstupy z klávesnice a myši a podle funkce upravuje dokument
pomocí jádra. V případě potřeby může nástroj vyvolat další
dialogy pro vyžádání dodatečných informací od uživatele.

Editor vlastností (Property editor)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Jednoduché úpravy parametrů objektů, jako je šířka čáry, neumožňují přímo jejich nástroje,
proto jádro poskytuje rozhraní úprav vlastností.
ovládací prvky editoru vlastností jsou automaticky generovány z popisu objektů.

