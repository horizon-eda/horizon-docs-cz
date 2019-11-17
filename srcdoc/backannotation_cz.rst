Zpětné úpravy (Backanotation)
=============================
.. backannotation.rst

Někdy můžete potřebovat propojit vývody součástek na základě jejich
umístění na desce, jako například konektory nebo vývody FPGA. Nebylo by krásné, pokud by jste mohli definovat tato spojení přímo v editoru desky bez přechodu tam a zpět mezi editory desky a  schémat pro každý spoj? S Horizonem-EDA je to možné!

Jak na to
---------

Pomocí nástroje "Draw connection line" (spustit přes mezerník) propojte jednotlivá pájecí místa (plošky), které požadujete propojit. Potom použijte funkci "Backannotate connection lines" pro zpětnou změnu v editoru schemat. Nově vytvořená připojení se zobrazí jako prázdné štítky nového přerušeného spoje. Po uložení schématu a aktualizaci seznamu spojů (Reload netlist) v editoru desky, budou spoje automaticky nahrazeny naznačenými spoji, které je nutno následně ručně propojit stopou mědi. Pozn. Pro správnou činnost této funkce je nutné mít spuštěn editor desky a editor schemat současně.


Omezení
-------
Protože tato funkce není přidána příliš dlouho, některé možnosti nejsou zatím podporovány:

- Nelze propojit dva existující spoje
- Řetězové spoje (propojení dvou spojů s jedním vývodem) nepřinesou očekávaný výsledek



[#f1]_

.. rubric:: Footnotes

.. [#f1] Přeložil / Translated by : Peta-T 16.11. 2019




