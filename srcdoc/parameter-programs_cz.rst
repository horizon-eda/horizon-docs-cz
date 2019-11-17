Parametry programu
==================
.. parameter-programs.rst

Jak již bylo popsáno jinde v dokumentu, Horizon-EDA podporuje parametrizovatelné tvary pájecích míst
a (v omezené míře) pouzder součástek. Chcete-li použít dané parametry na existující geometrii, každé pájecí místo a podobné objekty je možné změnit pomocí krátkého makra.

Tyto makra jsou psány ve vlastním zásobníkovém jazyce. Uživatelé kalkulaček HP se měli cítit jako doma. Protože v programu není možné provádět žádné smyčky, budou tyto programy ukončeny v daném čase. Zásobník obsahuje 64bitová celá čísla se znaménkem. Koncepčně roste shora dolů.

Syntaxe
-------

Na nejvyšší úrovni je program tvořen značkami. Značky jsou oddělené libovolným množstvím mezer.

Typy značek:

- Celá čísla: číslo, volitelně opatřené znaménkem

- Rozměr: číslo s volitelnou zlomkovou částí, s příponou „mm“ plovoucí řádová značka před značkou mm se vynásobí 1x10^6, od vnitřní jednotka měření programu Horizon-EDA je 1nm
- Matematické operátory, jako například: ``+ - * /``
- Řetězce znaků
- Parametry začínají znakem ``[`` a končí ``]`` jakákoliv značka mezi těmito dvěma znaky bude přidána jako parametr předchozího příkazu

Obecné příkazy
--------------


Nulový operand
~~~~~~~~~~~~~~

``get-Parameter [<parameter>]`` načte paramter a vloží jej na zásobník


Jeden operand
~~~~~~~~~~~~~

::

   Před operací vypadá zásobník takto:

   .   .
   .   .
   +---+
   | a |
   +---+

   Operátory: | Hodnoty v zásobníku
          dup | a a
          chs | -a

Dva operandy
~~~~~~~~~~~~

::

   Před operací vypadá zásobník takto:

   .   .
   .   .
   +---+
   | a |
   +---+
   | b |
   +---+

   Operátory: | Hodnoty v zásobníku
         +    | a+b
         -    | a-b
         *    | a*b
         /    | a/b
         dupc | a b a b (Duplikování souřadnic)

Tři operandy
~~~~~~~~~~~~

::

   Před operací vypadá zásobník takto:

   .   .
   .   .
   +---+
   | a |
   +---+
   | b |
   +---+
   | c |
   +---+

   Operátory: | Hodnoty v zásobníku
          +xy | a+c b+c
          -xy | a-c b-c

Příkazy pro pájecí místa
------------------------

Aby program mohl manipulovat s objektem (tvaru atd.),
musí být přiřazena třída parametrů. ## set-shape
``set-shape [<třída parametrů> <form>]`` Nastaví tvar na zadaný
formulář nebo jej přesune na určenou pozici Platného formuláře:

- ``obdélník``, zobrazí výšku, šířku
- ``kruh``, zobrazí průměr
- ``obround``, zobrazí výšku, šířku
- ``pozice``, zobrazí polohu y, x

Zadání otvoru
~~~~~~~~~~~~~

``set-hole [<třída parametrů> <shape>]`` Nastaví díru na specifikovaný tvar z přednastavených možností:

- ``kulatý``, zobrazí průměr
- ``slot``, zobrazí délku, průměr

Polygonové příkazy (pájecí místa a pouzdra součástek)
-----------------------------------------------------

Zadání polygonu
~~~~~~~~~~~~~~~

``set-polygon [<třída parametrů> <shape> <x0> <y0>]`` Nastaví polygon
před připraveného tvaru se středem na (x0, y0) z vybraných možností:

- ``obdélník``, zobrazí výšku, šířku
- ``kruh``, zobrazí průměr

Zadání vrcholů polygonu
~~~~~~~~~~~~~~~~~~~~~~~

`` set-polygon-vertices [<třída parametrů> <n_vertices>] `` Načte ``n_vertices`` souřadnic vrcholů ze zásobníku a vytvoří z nich mnohoúhelník.

Vytvoření polygonu
~~~~~~~~~~~~~~~~~~

``expand-polygon [<třída parametrů> <x0> <y0> <x1> <y1> ... <xn> <yn>]``
Vytvoří polygon určený hodnotami souřadnic v parametrech načtených ze zásobníku.

Příklad programu (pro SMD obdélníkové pájecí místo)
---------------------------------------------------

::

   get-parameter [ pad_width ]
   get-parameter [ pad_height ]
   dupc dupc
   set-shape [ pad rectangle ]
   get-parameter [ solder_mask_expansion ]
   2 *
   +xy
   set-shape [ mask rectangle ]

   get-parameter [ paste_mask_contraction ]
   2 *
   -xy
   set-shape [ paste rectangle ]

