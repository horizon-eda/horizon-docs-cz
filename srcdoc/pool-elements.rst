Fond knihovny součástek, pouzder, pájecích míst a schematických značek (Pool)
=============================================================================
.. pool.rst

Co to vlastně je fond knihovny součástek (Pool)? Pro funkci programu je potřeba organizovat mnoho souborů pouzder součástek, symbolů a podobných v jakýchsi knihovnách. (Moje) zkušenost ukázala, že jsou často chaotické a správa verzí je obtížná, protože mnoho nezávislých částí definic je vloženo do jednoho souboru. Zejména toto ztěžuje spolupráci.

V Horizonu-EDA neexistují knihovny. Místo toho všechny neprojektové součásti (symboly atd.) jsou umístěny do jednoho fondu (repozitáře). Stejně jako přístup do „centrální knihovny“, která je běžnější spíše ve firemních programech pro tvorbu desek plošných spojů. I když si můžete vytvořit svůj vlastní fond, důrazně se doporučuje používat tento fond 
`https://github.com/carrotIndustries/horizon-pool/ <https://github.com/carrotIndustries/horizon-pool/>`__. Chcete-li do něj přidat nové díly, jednoduše odešlete požadavek na přidání do veřejné knihovny pomocí příkazu "Merge".

Nyní je fond organizován pomocí značek místo hierarchického
systému, protože tyto často vedou k záměně nad aspekty, jako je tomu, zda
skupiny dílů podle výrobce nebo jiné atributy.

Aby byl fond uspořádaný, přidávejte pouze díly, které můžete skutečně koupit s jejich odpovídajícími symboly, entity atd. Takže nepřidávejte součástku s názvem 7805, místo toho přidejte MC7805BDTRKG vyrobený společností ON Semiconductor.

Každá z níže uvedených položek je uložena v jednom souboru s příponou .json v příslušné hlavní složce, tj. /symbols, /parts, atd. Přesné umístění v této složce je nepodstatné, pokud je soubor json uložen ve
správné hlavní složce. Je důležité, aby soubory měli příponu „.json“, aby byly nalezeny Správcem fondu. Chcete-li pohodlně vyhledávat díly je možné vložené vyhledávací údaje ze všech souborů json řadit pomocí databáze sqlite. To je umožněno tlačítkem 'Update pool' ve Správci fondu.

Struktura fondu
---------------

Pro pochopení souvislostí jednotlivých souborů ve fondu je nutné pochopit jejich strukturu, která je na níže uvedeném obrázku, nebo v případě nečitelnosti je možno ji vidět 
`zde <https://github.com/carrotIndustries/horizon/blob/master/doc/pool.pdf>`__


Součástky (Parts)
~~~~~~~~~~~~~~~~~

Na vrcholu struktury fondu je součástka (Part). Chcete-li se vyhnout zdvojení,
součástka může zdědit svoji definici z jiné součástky. To je určeno pro použití ve skupině součástí, které se liší pouze v některých vlastnostech jako odpor nebo výstupní napětí pro pevné regulátory napětí. Každá součástka může být doplněna parametrickými daty, aby bylo vyhledávání snadnější. Tato funkce je zatím ve vývoji, protože není k dispozici žádné uživatelské rozhraní pro součástky založené na parametrických datech. Součástky také obsahují mapování Entity vývodů k pájecím obrazcům pouzder.

Pouzdra (Packages)
~~~~~~~~~~~~~~~~~~

Pouzdro definuje průmět (otisk) půdorysného tvaru součásti na desku plošného spoje. Pokud výrobce součástky
definuje doporučený tvar průmětu, použijte tento. Používejte pouze
obecné pouzdra, pokud odpovídající neexistují. Podrobnosti o pouzdrech viz.
:doc:`Vytvoření pouzdra součástky <create-package>`.

Entity (Entities)
~~~~~~~~~~~~~~~~~

Entita je reprezentace součásti v seznamu spojů (netlist). Díly, které jsou logicky
stejné jako např. různé typy konektorů USB proto mohou všechny sdílet
stejnou entitu, např. "USB konektor se stíněním a ID". Vlastní součástky se sestávají z jedné nebo více Jednotek (Units).

Jednotky (Units)
~~~~~~~~~~~~~~~~

Jednotka ve skutečnosti definuje logické vývody součástky. Pouze pro součástky, které
sestávají z jednoho celku "gate" jako např. regulátory napětí, jejich entity jednoduše
odkazují na jednu jednotku (Unit). Pro části sestávající z více celků "gate" jako
duální operační zesilovač nebo velký mikroprocesor, každý celek "gate" odkazuje na jednu jednotku.
Mít jednotky oddělené od entit umožňuje sdílení více entit
stejnou jednotkou. Předpokládá se tedy, že entita jednoho logického celku "gate" může odkazovat na stejnou jednotku např, čtyřikrát. Kromě jména má vývod i směr (pro ERC) a volitelně alternativní názvy vývodů (pinů) pro popis vývodů, které mají více funkcí, jak je běžné např. u Mikroprocesorů.

Symboly (Symbols)
~~~~~~~~~~~~~~~~~

Symbol se používá ve schématu k reprezentaci jednotky. Na rozdíl od jiných
EDA aplikací, symbol právě zobrazuje vývody z jeho jednotky a nedefinuje je.

