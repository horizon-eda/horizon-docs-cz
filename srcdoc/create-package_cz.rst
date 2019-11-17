Vytvoření pouzdra součástky
===========================
.. create-package.rst


Rozložení desky plošných spojů může být tak dobré jak dobře jsou vytvořeny pájecí obrazce (footprints) pro jednotlivá pouzdra součástek, které program používá, proto je důležité vytvořit vysoce kvalitní podklady obrazců těchto obrazců (footprints).

V Horizonu-EDA se pouzdro součástky se skládá z těchto částí:

- Pájecí místa (pads), na které se součást připájí

   - Spoje - měděné vrstvy tras jednotlivých propojení v jednotlivých (horní / dolní / vnitřní) vrstvách
   - Otvory (pro díly TH)
   - Vynechání nepájivé masky
   - Maska pájecí pasty

- Obrys pouzdra součástky (Package outline)
- Montážní obrys a referenční označení (Assembly outline)
- Textový popis součástek (Silkscreen)
- Obrys zástavby součástky (Courtyard outline)

Pájecí obrazce (pads)
---------------------

Každý pájecí obrazec je definován několika pájecími místy (padstack) uspořádanými do různéh tvarů a parametry aplikovanými na na tento tvar. Podrobnosti o pájecích místech viz. 
:doc:`Pájecí místa / plošky (Padstacks)<padstacks_cz>`. Tyto pájecí obrazce jsou pravděpodobně nejdůležitější vlastností pouzdra součástky, je vhodné s nimi začít. Pájecí místa můžete umístit ručně pomocí příkazu „Place pad“ nebo je nechejte umístit automaticky podle běžně používaných vzorů pomocí příkazu „Footprint gen.“, který je k dispozici na horním panelu. Po umístění pájecích míst mají stále svou výchozí velikost, která patrně není ta, co potřebujete. Chcete-li velikost změnit, vyberte parametry, které chcete upravit a pomocí nástroje „Edit pad“ přidejte parametry do pájecího místa. V závislosti na vybraném tvaru pájecího místa jsou přiřazeny určité parametry. Nejčastěji se používají šířka a výška pájecího místa. Použijte tlačítko zaškrtnutí vedle parametru pro parametry, které se mají použít na všechny vybrané podložky.

Obrys pouzdra součástky
-----------------------

Obrys pouzdra se používá k vizualizaci obrysu součásti
Dá se říct, že by tedy měla sledovat jmenovité rozměry součásti. Můžete použít nástroj „import DXF“ pro import výkresu DXF získaného ze STEP modelu nebo jinak. Protože účel obrysu součásti je čistě
vizuální, můžete použít buď čáry, nebo mnohoúhelníky. Vývody přidejte, pouze pokud
výrazně přispívají ke vzhledu součásti.

Montážní obrys
--------------

Montážní obrys končí na výkresu sestavy (zatím není implementováno) a jeho účelem je pomoc při montáži a kontrole PCA. Montážní obrysová vrstva tedy obsahuje pouze tyto položky: Mnohoúhelník označující obrys součásti, volitelně vývody, pokud se výrazně přispívají ke vzhledu součásti a referenční označení součásti. Na rozdíl od obrysu pouzdra je montáž pouze hrubá náhrada tvaru součásti. Musí zahrnovat nějaký druh vizuálního označení umístění prvního vývodu součásti. Použijte příkazy  „Draw polygon rectangle” a jeho možnosti dekorace pro kreslení takového obrysu. Pro referenční označení, vložte text obsahující „$ RD“ v takové velikosti, aby se vešel do obrysu sestavy, i když je předpona o 4 číslice delší.

Textový popis součástek
-----------------------

Účelem textového popisu je objasnit umístění dílů a orientace při ruční montáži a vizuální kontrole, také by měla pomoct pokud je součást citlivá na orientaci, použijte nějakou značku prvního vývodu. Nepoužívejte tečku pro označení prvního vývodu, místo toho sklopte nebo prodlužte grafickou značku. Doporučená tloušťka čáry je 0,15 mm. Také vložte text „$ RD“, s tloušťkou čáry 0,15 mm do hladiny popisu.

Obrys zástavby součástky
------------------------

Obrys zástavby označuje prostor potřebný pro plochu kolem součástky, která nesmí být obsazeno jinými součástkami, aby byl ponechán dostatečný prostor pro montáž. Vzhledem k tomu, že velikost obrysu zástavby je třeba upravit v závislosti na uživatelských výrobních požadavcích, musí být nastaven pomocí parametru
programu. Při zvětšení obrysu zástavby 0 mm je obrys zástavby (obdélníkový) kolem pájecích míst a obrysu pouzdra součástky. Chcete-li vytvořit obdélníkový obrys zástavby, který lze parametrizovat, proveďte toto:

Pomocí příkazu „Generate courtyard“ vygenerujete počáteční obrys zástavby na
0 mm rozšíření. Pokud to nemá za následek požadovaný mnohoúhelník, použijte
příkaz „Draw polygon rectangle“ pro nakreslení počátečního obrysu a nastavení
jeho skupiny parametrů na „courtyard“ pomocí editoru vlastností na
pravé straně okna.

Otevřete okno „Parameters“ a klikněte na „Insert courtyard program“. Je-li
vše jde správně, měl by se přidat program obrysu zástavby a jeho
parametr „Courtyard expansion“ nastavený na 0,25 mm.

