��          �               �   
   �   �   �   �  �  '   H  	   p     z  �  �  	   1  �  ;  
   �  F   �  �     �  �  $   �	  �   �	  u  �
  %        )     /  �  A     �  �  �     �  M   �  �   �   Autorouter JSON has been chosen as a serialization format as it directly maps to common data structures such as maps and arrays (opposed to XML) and is easily manipulated in almost every environment. Many people complain that there's no commonly agreed on standard format for schematics and boards in the industry. The file formats for these are application files formats, meaning that they'll need to support each and every knob and button the application has. Adopting another application's file format for horzion EDA would therefore result in horizon EDA being a bad clone of the other application. Next: :doc:`Installation<installation>` Non-Goals On File formats Other EDA applications recently gained a custom raytracer for rendering pretty 3D visualisations of circuit boards. For horizon that's out of scope as the OpenGL-based 3D view is pretty enough for checking for the board for issues such as forgotten solder mask and getting an idea of what it'll look like assembled. Any more pretty visualisation is best taken care of by exporting to 3D modelling software such as blender. Raytracer Schematic design for PCBs and schematic design for SPICE-type simulation are very different as in that schematics for simulation will often simplify aspects of the real world such as replacing an ADC input with it's equivalent circuit. On a personal side I'm perfectly happy with LTSpice in terms of user interface and SPICE core and don't see much scope for new developments in that space. Simulation To limit the project's focus, some things are explicitly out of scope. Writing a good autorouter is a lot of work that's more well spent on other aspects of the application as experience has show that an autorouter is rarely useful for small to medium-sized boards. Project-Id-Version: horizon-eda 
Report-Msgid-Bugs-To: https://github.com/horizon-eda/horizon-docs/issues
POT-Creation-Date: 2020-04-18 15:34+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: cs
Language-Team: CZECH
Plural-Forms: nplurals=3; plural=((n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Automatický router (trasér spojů) JSON byl vybrán jako formát serializace, protože přímo mapuje na běžné datové struktury, jako jsou mapy a pole (na rozdíl od XML) a jsou snadno manipulovatelné téměř v každém prostředí.  Mnoho lidí si stěžuje, že zde neexistuje žádný průmyslový standardní formát pro schémata a desky. Formáty souborů proto jsou vlastní formáty aplikací, což znamená, že musí podporovat každé tlačítko, které aplikace má. Přijetí formátu jiné aplikace v Horzionu EDA by proto vedlo k tomu, že by Horizon EDA byl špatným klonem jiné aplikace.  Dále: :doc:`Instalace<installation>` Cíle Formáty souborů Jiné aplikace EDA nedávno získaly vlastní raytracer pro vykreslování realistické 3D vizualizace desek s obvody. Rozsah 3D zobrazení založené na OpenGL je dostačující pro kontrolu desky s problémy, jako je zapomenutá pájecí maska a získání představy o tom jak bude vypadat sestava desky. Jakoukoli lepší vizualizaci je možné zařídit exportem do 3D modelovacího softwaru, jako je Blender.  Vykreslování Návrh schemat pro desky plošných spojů a návrh schemat pro simulaci typu SPICE jsou velmi odlišné, protože ve schématu simulace se často zjednodušují aspekty skutečného světa, jako je nahrazení vstupu ADC náhradním obvodem. Za mě mohu říct, že jsem naprosto spokojený s LTSpice z hlediska uživatelského rozhraní a jádra SPICE a moc nevidím prostor pro nový vývoj v tomto směru.  Simulace Abychom zúžili zaměření projektu, některé věci zde záměrně nejsou. Napsaní programu dobrého autorouteru je spousta práce, která zabere spoustu času a přitom není tak důležitá, protože zkušenosti ukazují, že autorouter je málokdy užitečný pro malé a střední desky.  