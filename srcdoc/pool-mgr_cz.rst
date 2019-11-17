Správce fondu (Pool manager)
============================
.. pool-mgr.rst

Správce fondu a Průvodce součástí pomáhají se správou komponent jako jsou symboly, entity a součástky ve fondu. Pravděpodobně budete používat Správce fondu pro vytváření nových dílů. Chcete-li otevřít správce fondu, spusťte ``horizon-eda`` \ (`` .exe``) a vyhledejte soubor pool.json fondu, který
chcete upravit. Podle toho, jakou komponentu chcete vytvořit, je k dispozici několik pracovních postupů:

Zdědění nové součásti z existující součásti
-------------------------------------------

Když součástka, kterou se chystáte vytvořit, již existuje v jiné variantě (jiná hodnota, nebo jiný teplotní rozsah), ale jinak shodná, tak by nová součástka měla být zděděna ze stávající součástky. Chcete-li to provést, vyberte požadovanou základní součástku na záložce "Parts" a klikněte na "Create Part from Part". Po zadání umístění souboru nové součástky se zobrazí Editor součástek. Zrušte zaškrtnutí možnosti „zdědit“ (inherit) pro atributy, které chcete změnit a uložte novou součástku.

Vytvoření nové součásti ze stávající entity
-------------------------------------------

Tento pracovní postup je vhodný, pokud již entita pro novou součást
existuje. Odpory nebo LED v nestandardních pouzdrech jsou typickým příkladem. Pro vytvoření nového pouzdra viz :doc:`create-package_cz`. Na záložce "Parts" klikněte na "Create Part" pro vytvoření nové součásti. Potom zadejte entitu, pouzdro a umístění souboru součástky, kterou můžete pozměnit a mapovat pájecí místa na vývody v Editoru součástí.

Vytvoření zcela nové součásti
-----------------------------

Mnoho součástek, jako jsou mikroprocesory (MCU), FPGA, ADC a další zázraky dnešního světa
vyžadují vytvoření nových jednotek a entit. To by bylo manuálně velmi zdlouhavé, v tomto vám může pomoci průvodce součástí (Part Wizard). Poté, co vyberete pouzdro součástky (pro vytváření pouzder součástek viz :doc:`create-package_cz`) na záložce "Packages" klikněte na "Part Wizard...". Budete uvítáni seznamem všech pájecích míst pouzdra.


Vyplňte názvy vývodů podle katalogového listu součástky. Vložte pouze primární jméno vývodu (např. PB5) na MCU do sloupce zcela vlevo a vložte všechny ostatní názvy (jako UART0_TX, TA0) oddělené mezerou do sloupce "Alt. names". Pokud je vaše součástka *opravdu* velká (jako FPGA nebo velký MCU), může potřebovat, aby se ve schématu zobrazil více než jeden symbol. Vyberte všechny vývody, které chcete mít se stejným symbolem a typem v alternativním názvu vývodu. V případě, že je více podložek elektricky identických (např
několik vývodů GND), můžete je seskupit jejich výběrem a kliknutím na
Tlačítko „Propojit podložky“ na dolním panelu nástrojů. Tímto způsobem bude pro vybrané položky vytvořen pouze jeden vývod.

U opravdu velkých součástek s více než 100 vývody může být ruční vkládání příliš zdlouhavé. Chcete-li se tomu vyhnout, je možné použít průvodce součástí (Part wizard) a importovat názvy vývodů ze souboru s příponou json. Tento soubor může být generován např. nějakým skriptem v jazyce Python nebo podobném. Struktura souboru json by měla vypadat takto:

::

   {
       "1": {"pin": "PB0", "alt": ["TXD", "SDA"], "gate":"Main"},
       "2": {"pin": "PB1", "alt": ["RXD", "SCL"], "gate":"Main"}
   }

Klíč určuje název vývodu součástky. Záznamy s ``pin``-``gate`` přiřazují názvy k číslu vývodu.


Vhodnými zdroji údajů se jmény vývodů a pájecích míst jsou:

- IBIS modely
- BSDL soubory
- katalogové listy PDF dané součástky

Není tak složité extrahovat údaje o vývodech a pájecích místech z jednoho konkrétního katalogového listu pomocí funkcí kopírovat/vložit text do programu LibreOffice Calc, vyčistit a přeuspořádat ho a následně
exportovat jako soubor CSV. Tento soubor poté převést na výše uvedený soubor s příponou json.


Jakmile vyplníte názvy vývodů, klikněte vlevo nahoře na „Další“ pro postup na další obrazovku. Vyplňte položky podle  vaší součástky. Pokud si nejste jisti, co tam má být, podívejte se na stávající součástky ve fondu. Pokud je vaše součástka k dispozici vícekrát v téměř identických variantách, které se liší pouze v aspektech jako teplotní rozsah nebo možnost balení (Páska / Role, Trubka, atd.) vytvoří součástku, kterou se chystáte použít. Pro vytvoření dalších variant postupujte podle pokynů v horní části. Postarejte se o správné zadání umístění jednotek / symbolů / entit a částí tak, aby končily v podsložkách jejich příslušné složky ve fondu.


Pro každý celek (gate) klikněte na "Edit Symbol" pro spuštění interaktivního
manipulátoru vytvoříte symbol pro tuto jednotku (unit). Použijte příkaz „Map pin“
pro umístění vývodů do symbolu a "Draw line rectangle"/"Edit line
rectangle" pro nakreslení těla symbolu. Nezapomeňte dát symbolu
smysluplné jméno a umístěte texty "$REFDES" a "$VALUE".

Když nakreslíte všechny symboly a vyplníte všechny údaje,
kliknutím na "Finish" konečně vložíte součást do fondu.

Kam ukládat komponenty
----------------------

Při vytváření nových symbolů, součástek a podobně správce fondu / průvodce  tvorbou součástek vás dříve nebo později požádá o název souboru nebo složky (v
v případě pouzder) k uložení nové součástky. Technicky, vámi specifikovaná cesta pouze musí splňovat dva požadavky:

- Musí být ve správné  složce nejvyšší úrovně, tj. pro každou schematickou značku
   musí být někde ve složce /symbols atd. Pájecí obrazec specifický pro a
   pouzdro musí být umístěno do složky /padstack.
- Název souboru musí mít příponu ``.json``

Pro získání představy jak to všechno prakticky vypadá se podívejte do veřejného fondu na adrese 
<https://github.com/carrotIndustries/horizon-pool/>`__

Databáze fondu
--------------

Fond uchovává údaje (názvy souborů, UUID, jména atd.) V SQLite
databázi usnadňující vyhledávání. Normálně si správce fondu aktualizuje
databázi pokaždé, když se něco změní. Nicméně, pokud
externě manipulujete / odstraňujete soubory, musíte kliknout na „Aktualizovat“ (Update
Pool) databázi, která zahrne provedené změny.


Integrace GitHub
----------------

Aby integrace GitHub fungovala, musí být fond stažen pomocí
tlačítka "Download..." na úvodní stránce správce fondu. Správce fondu naklonuje veřejný fond do složkye ``.remote`` v systému vašeho místního fondu. Pokud vše půjde dobře, neměli byste nikdy zasahovat do této složky. K dispozici jsou dvě operace pro uchování vaší místní kopie
aktuální a zahrnutí vašich součástek do veřejného fondu


Aktualizace fondu
~~~~~~~~~~~~~~~~~

Tento příkaz aktualizuje vaše kopie globálního fondu ve složce ``.remote``
od posledního potvrzení a zeptá se vás, jaké změny chcete
použít ve vašem místním fondu.


Vytvoření žádosti o zahrnutí součástek do veřejného fondu
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nejprve přidejte součástky / entity / atd. do seznamu "items to be merged",
poté vyplňte název a tělo žádosti o zahrnutí. Správce fondu bude
automaticky přidávat položky, které jsou nutné, aby nebyly porušeny závislosti. Takže když
vytvoříte zcela novou částku s novou jednotkou, entitou a pouzdrem
přidejte ji do seznamu pro přidání součásti. Nezapomeňte přidat nové
symboly. Poté, co se ujistíte, že to je to, co chcete, klikněte na "Create
pull request". Budete vyzváni k zadání přihlašovacích údajů pro server GitHub.


