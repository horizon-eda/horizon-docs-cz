Pájecí místa / plošky (Padstacks)
=================================
.. padstacks.rst

V Horizonu-EDA pájecí obrazec (pad) součástky odkazuje na definici pájecího místa (padstack) příslušného vývodu, která určuje tvar pájecího místa (plošky). V programu existují dva druhy pájecích míst: 
Globální pájecí místa jsou k dispozici pro použití na všechna pouzdra součástek a měly by pokrývat většinu případů použití. V případě pouzdra součástky vyžadující speciální speciální pájecí obrazec, je možné jej vytvořit pomocí tlačítka "Create padstack for package" na záložce pouzdra "Packages" ve správci fondu.

Pájecí místo se skládá z těchto částí:

- Obrazec měděné vrstvy
- Obrazec pájecí masky
- Obrazec pájecí pasty
- Otvor (volitelné)

Upřednostňovaným způsobem definování geometrie pájecích míst je použití takových tvarů, které jsou vhodné pro export do gerber souboru. Pro se souhlasení více než jednoho parametru pouzdra lze použít pájecí místa, která mění svoji velikost. Lze využít také globální parametry specifické pro aplikaci, jako je rozšíření pájecí masky a zúžení masky. Chcete-li získat představu o tom, jak to doopravdy funguje podívejte se na globální pájecí místa ve fondu knihovny.

Chcete-li použít parametry na geometrii pájecího místa, je to popsáno v kapitole :doc:`Parametry programu <parameter-programs_cz>`, které se postarají o změnu parametrů tvarů pájecích míst.

