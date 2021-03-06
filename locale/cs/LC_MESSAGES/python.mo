��          �                               :     G  I   d     �     �     �     �  �     v        y     �  Q   �  �  �     �     �  	   �  '   �  Y        o     |  !   �     �  7  �          �  	   �  `   �   3D rendering usage :py:class:`cairo.Surface` Installation Loads 3D models if available Parts of Horzion EDA are available as a python module for use in scripts. Python module Render to png image Render to pycairo surface Resets view to top side The python module isn't included in the :code:`all` target.  To build it, run :code:`make build/horizon.so`. This requires the python 3 headers to be installed. You can then place it in python's :code:`sys.path` and import it using :code:`import horizon`. To further adjust the export settings, have a look at the dicts returned by the :code:`get_*_export_settings` methods. Typ návratové hodnoty Usage use :code:`brd.export_3d(1920, 1080)` or similar to get an Image3DExporter object Project-Id-Version: horizon-eda 
Report-Msgid-Bugs-To: https://github.com/horizon-eda/horizon-docs/issues
POT-Creation-Date: 2020-05-03 18:58+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: cs
Language-Team: CZECH
Plural-Forms: nplurals=3; plural=((n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Použití 3D vykreslování :py:class:`cairo.Surface` instalace Načte 3D modely pokud jsou k dispozici Některé funkce Horzion EDA jsou k dispozici v modulu Python pro použití ve skriptech. Modul python Vykreslit obrázek formátu png Vykreslit plochu formátu pycairo Obnoví pohled na horní stranu Modul python není zahrnut v překladu pomocí :code:`build all`. Chcete-li jej sestavit, spusťte překlad pomocí :code:`make build/horizon.so`. To vyžaduje mít instalovány hlavičkové soubory Pythonu veze 3. Potom můžete použít v Pythonu :code:`sys.path` a importovat pomocí :code:`import horizon`.  Chcete-li dále upravit nastavení exportu, podívejte se na vrácené příkazy. pomocí metody :code:`get_*_export_settings`. Typ návratové hodnoty Použití Použijte :code:`brd.export_3d(1920, 1080)` nebo podobně pro vytvořeníImage3DExporter objektu 