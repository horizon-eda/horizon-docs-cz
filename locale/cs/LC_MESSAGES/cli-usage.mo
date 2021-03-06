��          �               \  �   ]     �  	     h        z     �  =   �     �     �  �   �  2   �  "   �  <     0   >  !   o      �     �     �     �  �  �  �   �     8  =   F  }   �            D   %     j       �   �  N   _	  .   �	  @   �	  3   
  /   R
  $   �
     �
     �
     �
   All of the commands below require the environment variable ``HORIZON_POOL`` to point to the pool’s directory (the one with the pool.json and pool.db in it) Board mode: CLI usage Most of the -edit and -create commands will spawn $EDITOR with the file to be edited serialized as YAML. Package mode: Padstack mode: Remember to run ``horizon-pool update`` after creating things Schematic mode: Symbol mode: The project and the pool manager have pretty much eliminated the need to run the interactive manipulator and other tools directly from a shell, but it’s still useful for development. Use these to create empty blocks, schematics, etc. ``horizon-imp -a <padstack file>`` ``horizon-imp -b <board file> <block file> <via directory>`` ``horizon-imp -c <schematic file> <block file>`` ``horizon-imp -k <package file>`` ``horizon-imp -y <symbol file>`` horizon-imp horizon-pool horizon-prj Project-Id-Version: horizon-eda 
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
 Všechny níže uvedené příkazy vyžadují proměnnou prostředí ``HORIZON_POOL``, nastavenou na složku fondu (obsahující soubor pool.json a pool.db) Režim desky: Použití příkazového řádku (CLI Command Line Interface) Většina příkazů -edit a -create spustí příslušný $EDITOR, který vytvoří odpovídající soubor ve formátu YAML. Režim balíčku: Režim padstack: Po vytvoření souborů nezapomeňte spustit ``horizon-pool update`` Schematický režim: Režim symbolů: Správce projektu a správce fondu do značné míry eliminovali potřebu spouštět interaktivní manipulátor a další nástroje přímo z příkazového řádku, ale je to stále užitečné pro vývoj. Pomocí těchto příkazů můžete vytvářet prázdné bloky, schémata atd. ``horizon-imp -a <soubor pájecího obrazce>`` ``horizon-imp -b <soubor desky> <soubor bloku> <přes složku>`` ``horizon-imp -c <soubor schematu> <soubor bloku>`` ``horizon-imp -k <soubor pouzdra součástky>`` ``horizont-imp -y <soubor symbolu>`` Použití horizon-imp Použití horizont-pool Použití horizont-prj 