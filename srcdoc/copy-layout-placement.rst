Kopírování rozmístění a umístění
================================
.. copy-layout-placement.rst

Motivace
--------

Návrh desky plošného spoje často obsahuje podobné, ale ne shodné celky jako jsou např. regulátory napětí. Nebylo by hezké, kdyby stačilo udělat rozmístění jednou a potom zkopírovat do ostatních kopií? Technologie Horzion-EDA vám to umožní v jednoduchém dvoustupňovém procesu.

Skupiny a značky
----------------

Aby tato funkce fungovala, musíte nejprve sdělit Horizonu-EDA, jak spolu komponenty souvisí. Toho je dosaženo přiřazením skupin a značek ke komponentám. Každá sekce, tj. Všem komponentám spojeným s
jedním regulátorem napětí, přidělte jednu skupinu. Vyberte všechny symboly jedné sekce a pomocí příkazu „Set new group“ přiřaďte všechny do nové skupiny. Pro zviditelnění skupin a značek na schematu použijte „Toggle group & tag visibility“. Skupina komponent a značka se poté zobrazí pod referenčním označením.

Abychom odlišili v Horizonu-EDA související komponenty v každé skupině, dostanou přiřazené shodné značky. Protože nově umístěná součást již bude mít shodnou značku a skupinu a značky zůstanou zachovány při kopírování / vkládání jiné kopie stejného okruhu budou pravděpodobně mít vhodné značky již nastaveny. Chcete-li změnit značku na součásti, použijte příkaz „Set tag“.

Až budete hotovi, schéma by mělo vypadat zhruba takto (obdélníky přidány pro názornost). Všechny komponenty uvnitř žlutého obdélníku patří do stejné skupiny, vše uvnitř červeného pole patří ke stejné značce.

.. image :: images / groups-tags.png

Chcete-li se ujistit, že jste udělali přiřazení správně, můžete použít akci „Highlight group/tag“.


Deska
-----

Umístěte a trasujte nějakou skupinu jako obvykle.

Kopírovat umístění
~~~~~~~~~~~~~~~~~~

Pro každou skupinu umístěte pouzdro součástky tak, aby ostatní pouzdra součástek byly odkázány na požadované místo a umístěte okolo všechny ostatní pouzdra součástek. Poté vyberte všechny součástky skupiny, které chcete znovu použít a spusťte nástroj „Copy placement“. Klikněte na referenční pouzdro (kterékoli pájecí místo nebo středový bod) v již umístěné skupině a všechny vybrané součástky budou umístěny shodným způsobem.


Kopírování skladeb
~~~~~~~~~~~~~~~~~~

Vyberte všechny spoje (ostatní objekty budou ignorovány), které chcete kopírovat
v natrasované skupině, spusťte příkaz „Copy tracks“ a klikněte na libovolné pouzdro
(libovolné pájecí místo nebo středový bod) v cílové skupině.











