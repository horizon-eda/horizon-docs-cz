Editor desky plošných spojů DPS (PCB)
=====================================
.. imp-board.rst

Chcete-li spustit editor desky plošných spojů (dále jen desky), klikněte na „Board“ ve správci projektu. Stejně jako všechny ostatní grafické editory je i editor desky v Horizon-EDA založen na :doc:`Interaktivním manipulátoru <imp>`

Editor desky si udržuje interní kopii seznamu spojů (netlist). Chcete-li aktualizovat
seznam spojů, stiskněte „Save“ (Uložit) v editoru schémat pro zápis seznamu spojů na
disk, pak klikněte v editoru desky na „reload netlist“ pro aktualizaci seznamu spojů nebo znovu otevřete editor desky.

Vyplněné oblasti (Planes)
-------------------------

Pro přidání vyplněných oblastí nejprve nakreslete do hladiny spojů (copper) mnohoúhelník (polygon) požadovaného tvaru. Poté pomocí nástroje „Add plane“ přiřaďte oblast. Pro zobrazení vyplněných oblastí je nutné aktualizovat tyto oblasti pomocí příkazu „Update all Planes“. Oblasti s
nižší prioritou se vyplní jako první.

Prokovené otvory (Vias)
-----------------------

Před vložením prokoveného otvoru vytvořte výchozí pravidlo pro tyto otvory v okně pravidel „Rules“
a přiřaďte jim požadovaný tvar (padstack).

Diferenciální páry
------------------
Jedná se o speciální útvar trasy signálového páru se stanovenými parametry vzájemných elektrických vlastností. Chcete-li vytvořit diferenciální pár, podívejte se na :ref:`Diferenciální páry<Diferenciální páry>`. Před trasováním diferneciálního páru, vytvořte pravidlo určující šířku stopy a mezeru tohoto páru. Chcete-li vést trasu, použijte nástroj „Route diff“.

Snímek obrazovky
----------------

.. image :: images / imp-brd.png




