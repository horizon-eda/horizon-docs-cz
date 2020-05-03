��          |               �   �  �      b     y  5  �  �  �     \  �   q  �   f  a       q	     ~	  �  �	  �  `     �  B     6  H  �       ,  '  @  �   h  �       �     �   Adding parts is a great thing, but checking parts other people made could be a good thing as well. More eyes that crosscheck a part against its datasheet will decrease the chance of something that works. If you successfully produced a PCB with certain parts on it, you can say something about solderability as well and this is a stronger indicator, that the part has no critical mistakes. Contribute to the Pool Create pull request First, add the Parts/Entities/etc. to the "items to be merged" list, then fill in Pull Request title and body. The pool manager will automatically add items that are needed to not break references. So if you create an all-new Part with new Unit, Entity and Package, these will get added to the list when you add the Part. Don't forget to add the new symbols. After making sure that this is what you want, click the "Create pull request" button. You'll be prompted for your GitHub credentials as well as your name and email address for the commit author information. For the GitHub integration to work, the pool has to be downloaded using the "Download..." button on the start Page of the pool manager. The pool manager will clone the global pool into the ``.remote`` directory in your local pool. If all goes right, you should never need to touch that directory. Two operations are available for keeping your local copy up-to-date and merging your parts into the global pool Helping by reviewing The official pool at `https://github.com/horizon-eda/horizon-pool/ <https://github.com/horizon-eda/horizon-pool/>`__ lives from it's user contributions. There are multiple ways you can help. The most obvious one is by submitting parts you made. This will update your copy of the global pool in the ``.remote`` directory to the latest commit and ask you which changes you'd like to have applied to your local pool. To keep the pool nice an clean, only add parts you can actually buy with their corresponding symbols, entities, etc. So don't add some part called 7805, instead add a MC7805BDTRKG manufactured by ON Semiconductor. Once you created something you'd like to share, you can use the :doc:`Pool Manager <pool-mgr>` to upload your creation to the offical pool: Upgrade pool Using the GitHub integration. Project-Id-Version: horizon-eda 
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
 Přidávání součástek je skvělá věc, ale kontrola součástek, které ostatní vytvořit je také dobrá věc. Více očí, které porovnají součástku s jejím datovým listem sníží šanci na chybu. Pokud jste úspěšně vyrobili DPS s konkrétními součástkami, můžete také informovat o pájitelnosti a to je silný ukazatel toho, že součást nemá žádné kritické chyby.  Contribute to the Pool Vytvoření žádosti o zahrnutí součástek do veřejného fondu Nejprve přidejte součástky / entity / atd. do seznamu "items to be merged", poté vyplňte název a tělo žádosti o zahrnutí. Správce fondu bude automaticky přidávat položky, které jsou nutné, aby nebyly porušeny závislosti. Takže když vytvoříte zcela novou částku s novou jednotkou, entitou a pouzdrem přidejte ji do seznamu pro přidání součásti. Nezapomeňte přidat nové symboly. Poté, co se ujistíte, že to je to, co chcete, klikněte na "Create pull request". Budete vyzváni k zadání přihlašovacích údajů pro server GitHub. Aby integrace GitHub fungovala, musí být fond stažen pomocí tlačítka "Download..." na úvodní stránce správce fondu. Správce fondu naklonuje veřejný fond do složky ``.remote`` v systému vašeho místního fondu. Pokud vše půjde dobře, neměli byste nikdy zasahovat do této složky. K dispozici jsou dvě operace pro správu vaší místní kopie aktualizace a zahrnutí vašich součástek do veřejného fondu Pomoc při kontrole Oficiální fond je uložen na adrese `https://github.com/horizon-eda/horizon-pool/ <https://github.com/horizon-eda/horizon-pool/>`__ do fondu přispívají jeho uživatelé Existuje několik způsobů, jak můžete pomoci. Nejpřínosnější je odesláním součástek, které jste vytvořili. Tento příkaz aktualizuje vaše kopie globálního fondu ve složce ``.remote`` od posledního potvrzení a zeptá se vás, jaké změny chcete použít ve vašem místním fondu. Aby byl ve fondu pořádek, přidávejte pouze díly, které můžete skutečně koupit. jejich odpovídající symboly, entity atd. Takže nepřidávejte část nazvanou 7805, místo toho přidejte MC7805BDTRKG od ON Semiconductor. Když jste vytvořili něco, co byste chtěli sdílet, můžete použít :doc:`Pool Manager <pool-mgr>` a nahrát svůj výtvor do oficiálního fondu:  Aktualizace fondu Používání Integrace GitHub 