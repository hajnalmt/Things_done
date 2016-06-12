<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1465397811030" ID="ID_1674655376" MODIFIED="1465399010558" TEXT="SzamLatRend">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1465399011850" FOLDED="true" ID="ID_1281635146" MODIFIED="1465448322849" POSITION="right" TEXT="I. A 2D k&#xe9;pfeldolgoz&#xe1;s alapjai">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1465399035722" FOLDED="true" ID="ID_432972438" MODIFIED="1465427444016" TEXT="1. Sz&#xe1;m&#xed;t&#xf3;g&#xe9;pes l&#xe1;t&#xe1;s alapok">
<node CREATED="1465399397279" FOLDED="true" ID="ID_824510851" MODIFIED="1465419647821" TEXT="1. Ismertesse a k&#xe9;p fogalm&#xe1;t: mire vagyunk k&#xed;v&#xe1;ncsiak? Mit nevez&#xfc;nk k&#xe9;pnek? Milyen k&#xe9;ple&#xed;r&#xe1;si lehet&#x151;s&#xe9;gek &#xe1;llnak rendelkez&#xe9;s&#xfc;nkre? Mit jelent a videofolyam?">
<node CREATED="1465405752294" ID="ID_1880057329" MODIFIED="1465405759471" TEXT="K&#xe9;p: Vizu&#xe1;lis inform&#xe1;ci&#xf3;kat tartalmaz&#xf3; &#xf6;sszef&#xfc;gg&#x151; adathalmaz."/>
<node CREATED="1465405765043" ID="ID_290119153" MODIFIED="1465405769319" TEXT="Vide&#xf3;folyam: Tipikusan k&#xe9;pek sorozata, mozg&#xe1;sle&#xed;r&#xe1;s (pl. MPEG4 t&#xf6;m&#xf6;r&#xed;t&#xe9;s) c&#xed;mesem&#xe9;nyek sorozata. &#xc1;ltal&#xe1;ban ezt dolgozzuk fel, van (a priori) ismeret&#xfc;nk az el&#x151;z&#x151; k&#xe9;pr&#x151;l, v&#xe1;ltoz&#xe1;st elemezz&#xfc;k."/>
<node CREATED="1465414596240" FOLDED="true" ID="ID_629190622" MODIFIED="1465419646725" TEXT="Le&#xed;r&#xe1;s &#xe1;ltal&#xe1;ban pixel/voxel t&#xf6;mbk&#xe9;nt t&#xf6;rt&#xe9;nik. 2 (pixel) vagy 3 (voxel, volume pixel) dimenzi&#xf3;s k&#xe9;ppontokat haszn&#xe1;lunk, vonalkamera eset&#xe9;n 1 dimenzi&#xf3;sakat.">
<node CREATED="1465414605155" FOLDED="true" ID="ID_1708284243" MODIFIED="1465419645702" TEXT="Egy&#xe9;b le&#xed;r&#xe1;si form&#xe1;k">
<node CREATED="1465414615298" ID="ID_482352633" MODIFIED="1465414619349" TEXT="L&#xe1;ncok (RLE"/>
<node CREATED="1465414620699" ID="ID_387430196" MODIFIED="1465414657096" TEXT="Topol&#xf3;giai le&#xed;r&#xe1;sok (gr&#xe9;fok)"/>
<node CREATED="1465414660227" ID="ID_1657191194" MODIFIED="1465414669529" TEXT="Rel&#xe1;ci&#xf3;s strukt&#xfa;r&#xe1;k"/>
<node CREATED="1465414671291" ID="ID_1356695699" MODIFIED="1465414686514" TEXT="Hierarchikus le&#xed;r&#xe1;sok"/>
</node>
</node>
</node>
<node CREATED="1465414707290" FOLDED="true" ID="ID_1091074755" MODIFIED="1465420620311" TEXT="2. Ismertesse a f&#xe9;ny&#xe9;rz&#xe9;kel&#xe9;s fontosabb eszk&#xf6;zeit. R&#xe9;szletezze a CCD &#xe9;s a CMOS &#xe9;rz&#xe9;kel&#x151;k m&#x171;k&#xf6;d&#xe9;s&#xe9;t, t&#xed;pusait, el&#x151;nyeit &#xe9;s h&#xe1;tr&#xe1;nyait.">
<node CREATED="1465414723403" FOLDED="true" ID="ID_520064853" MODIFIED="1465420619424" TEXT="F&#xe9;ny&#xe9;rz&#xe9;kel&#xe9;s">
<node CREATED="1465414740987" FOLDED="true" ID="ID_6863655" MODIFIED="1465420137421" TEXT="CCD">
<node CREATED="1465414804803" FOLDED="true" ID="ID_906354637" MODIFIED="1465420136222" TEXT="1969-ben fejlesztett&#xe9;k ki a Bell Labsn&#xe1;l, anal&#xf3;g l&#xe9;ptet&#x151;regiszternek. M&#x171;k&#xf6;d&#xe9;s&#xe9;nek l&#xe9;nyege, hogy adott &#xf3;rajel hat&#xe1;s&#xe1;ra a bemeneti oldalon lev&#x151; t&#xf6;lt&#xe9;st mozg&#xe1;sra lehet b&#xed;rni, azaz l&#xe9;ptetni lehet a kimeneti oldal fele. Gyorsan kider&#xfc;lt, hogy nem csak elektronikusan lehet felt&#xf6;lteni a regisztereket, hanem a f&#xe9;ny fotonjaival is. 1970-re k&#xe9;pesek voltak k&#xe9;pet l&#xe9;trehozni az &#xfa;j eszk&#xf6;zzel, s &#xed;gy megsz&#xfc;letett a CCD. A fent le&#xed;rt eszk&#xf6;z hivatalos neve a Full-Frame Transfer (FFT) CCD. Gyakran a sebess&#xe9;g n&#xf6;vel&#xe9;se &#xe9;rdek&#xe9;ben nem egy kiolvas&#xe1;si vonalat (kiolvas&#xf3; regisztert) haszn&#xe1;lnak, hanem t&#xf6;bbet, ennek neve a Frame Transfer CCD. Ezekn&#xe9;l az &#xe9;rz&#xe9;kel&#x151;kn&#xe9;l nincs lehet&#x151;s&#xe9;g elektronikus z&#xe1;r alkalmaz&#xe1;s&#xe1;ra. A m&#xe1;sik, elterjedtebb CCD t&#xed;pus az interline CCD. A f&#x151; k&#xfc;l&#xf6;nbs&#xe9;g a kett&#x151; k&#xf6;zt, hogy a Full-Frame Transfer CCD nem tud addig &#xfa;jabb k&#xe9;pet k&#xe9;sz&#xed;teni, am&#xed;g a kiolvas&#xe1;s v&#xe9;gre nem hajt&#xf3;dik, ami az&#xe9;rt id&#x151;be telik. Ez egy t&#xfc;k&#xf6;rreflexes, &#xe9;l&#x151;k&#xe9;p n&#xe9;lk&#xfc;li g&#xe9;pn&#xe9;l m&#xe9;g nem probl&#xe9;ma, de mi van akkor, ha folyamatos k&#xe9;pet szeretn&#xe9;nk l&#xe1;tni, pl. kompakt f&#xe9;nyk&#xe9;pez&#x151;g&#xe9;pekn&#xe9;l vagy videokamer&#xe1;kn&#xe1;l? Ilyenkor j&#xf6;n az interline CCD a k&#xe9;pbe.">
<node CREATED="1465414973923" FOLDED="true" ID="ID_479668338" MODIFIED="1465420132077" TEXT="&#xd6;sszefoglal&#xe1;s">
<node CREATED="1465414993458" ID="ID_1129156010" MODIFIED="1465415001961" TEXT="Fullframe-Transfer CCD: pixelenk&#xe9;nt olvas&#xe1;s (k&#xfc;ls&#x151; z&#xe1;r sz&#xfc;ks&#xe9;ges, am&#xed;g shiftelget&#xfc;nk)"/>
<node CREATED="1465415007859" ID="ID_1537063150" MODIFIED="1465415008472" TEXT="Frame-transfer CCD: k&#xfc;l&#xf6;n f&#xe9;ny&#xe9;rz&#xe9;kel&#x151; &#xe9;s CCD r&#xe9;teg (dr&#xe1;ga), foto&#xe9;rz&#xe9;kel&#x151;k egyszerre dobj&#xe1;k &#xe1;t a CCD-re"/>
<node CREATED="1465415016827" ID="ID_1379188356" MODIFIED="1465415017200" TEXT="Interline CCD: egy Si-r&#xe9;teg, CCD a fotoakt&#xed;v oszlopok k&#xf6;z&#xf6;tt (olcs&#xf3;bb, de rosszabb felbont&#xe1;s)"/>
</node>
<node CREATED="1465414980987" FOLDED="true" ID="ID_300770393" MODIFIED="1465420132974" TEXT="El&#x151;nye">
<node CREATED="1465415020891" ID="ID_961357152" MODIFIED="1465415032210" TEXT="Nagy &#xe9;rz&#xe9;kenys&#xe9;g"/>
<node CREATED="1465415033363" ID="ID_983967588" MODIFIED="1465415036616" TEXT="Kev&#xe9;s zaj"/>
<node CREATED="1465415046923" ID="ID_1426317036" MODIFIED="1465415047434" TEXT="Interline fel&#xe9;p&#xed;t&#xe9;s eset&#xe9;n elektronikus z&#xe1;r megval&#xf3;s&#xed;that&#xf3; (ezt ki is haszn&#xe1;lt&#xe1;k pl. a Nikon D70-n&#xe9;l is, ahol 1/500s-t&#xf3;l m&#xe1;r nem a mechanikus, hanem az elektronikus z&#xe1;r m&#x171;k&#xf6;dik)."/>
</node>
<node CREATED="1465414986643" FOLDED="true" ID="ID_1180724201" MODIFIED="1465420133942" TEXT="H&#xe1;tr&#xe1;nya">
<node CREATED="1465415055891" ID="ID_60796839" MODIFIED="1465415056232" TEXT="Bonyolult el&#x151;&#xe1;ll&#xed;t&#xe1;s, emiatt dr&#xe1;ga"/>
<node CREATED="1465415064643" ID="ID_425104178" MODIFIED="1465415064857" TEXT="A kiolvas&#xe1;si elektronik&#xe1;nak t&#xf6;bb kiolvas&#xe1;si csatorna eset&#xe9;n t&#xf6;k&#xe9;letesen megegyez&#x151;nek kell lennie, egy&#xe9;bk&#xe9;nt s&#xe1;vosod&#xe1;s l&#xe9;p fel (banding)"/>
<node CREATED="1465415076154" ID="ID_1596111307" MODIFIED="1465415076664" TEXT="K&#xf6;nnyen l&#xe9;tre j&#xf6;het az &#xfa;n. Blooming effektus: ha egy elektr&#xf3;d&#xe1;n t&#xfa;l sok t&#xf6;lt&#xe9;s halmoz&#xf3;dik fel, egyszer&#x171;en &#xe1;tfolyik a mellette lev&#x151; elektr&#xf3;da ter&#xfc;let&#xe9;re (ez ellen sz&#xe1;mos anti-blooming elj&#xe1;r&#xe1;s l&#xe9;tezik, &#xe1;ltal&#xe1;ban a CCD-k adatlapj&#xe1;n szerepel ennek a hat&#xe9;konys&#xe1;ga)"/>
<node CREATED="1465415105098" ID="ID_575389865" MODIFIED="1465415105503" TEXT="Magas fogyaszt&#xe1;s, emiatt nagyobb meleged&#xe9;s (&#xe9;s nagyobb termikus zaj)"/>
</node>
</node>
</node>
<node CREATED="1465414742952" FOLDED="true" ID="ID_207407338" MODIFIED="1465420138902" TEXT="CMOS (f&#x151;k&#xe9;nt APS)">
<node CREATED="1465415117291" ID="ID_585967496" MODIFIED="1465415117810" TEXT="A CMOS-n&#xe1;l a megnevez&#xe9;s csak &#xe9;s kiz&#xe1;r&#xf3;lag a gy&#xe1;rt&#xe1;stechnol&#xf3;gi&#xe1;t jel&#xf6;li. Ahogy a le&#xed;r&#xe1;sb&#xf3;l is l&#xe1;tszik, az els&#x151; esetben akt&#xed;v pixelekr&#x151;l besz&#xe9;l&#xfc;nk, azaz minden egyes k&#xe9;ppont saj&#xe1;t er&#x151;s&#xed;t&#x151;vel rendelkezik (t&#xf6;lt&#xe9;s-fesz&#xfc;lts&#xe9;g konverter, amely a CCD-n&#xe9;l a kiolvas&#xf3; egys&#xe9;gben volt megtal&#xe1;lhat&#xf3;). A kiolvas&#xe1;s m&#xe1;trix elven t&#xf6;rt&#xe9;nik, minden k&#xe9;ppontot k&#xfc;l&#xf6;n-k&#xfc;l&#xf6;n meg lehet c&#xed;mezni. Mivel minden egyes pixel k&#xfc;l&#xf6;n c&#xed;mezhet&#x151;, illetve a vezet&#xe9;kh&#xe1;l&#xf3;zaton kereszt&#xfc;l b&#xe1;rmilyen sorrendben &#xf6;sszekapcsolhat&#xf3; a chip tov&#xe1;bbi er&#x151;s&#xed;t&#x151;fokozataival, nagyon k&#xf6;nny&#x171; a k&#xe9;p egy r&#xe9;szlet&#xe9;t vagy &#xe9;ppen egy alacsonyabb felbont&#xe1;s&#xfa; k&#xe9;pet is kiolvasni. A CMOS &#xe9;rz&#xe9;kel&#x151;re nagyon k&#xf6;nny&#x171; integr&#xe1;lni egy&#xe9;b &#xe1;ramk&#xf6;ri elemeket. &#xc1;ltal&#xe1;ban a CMOS &#xe9;rz&#xe9;kel&#x151;k tartalmazz&#xe1;k az anal&#xf3;g-digit&#xe1;lis &#xe1;talak&#xed;t&#xf3;kat is (m&#xed;g ez a CCD-n&#xe9;l k&#xfc;l&#xf6;n &#xe1;ramk&#xf6;r volt), s&#x151;t egyes esetben el&#x151;-feldolgoz&#xe1;st is v&#xe9;geznek (szenzor szint&#x171; zajsz&#x171;r&#xe9;s p&#xe9;ld&#xe1;ul). A nagyobb integr&#xe1;l&#xe1;snak k&#xf6;sz&#xf6;nhet&#x151;en alacsonyabb az el&#x151;&#xe1;ll&#xed;t&#xe1;si k&#xf6;lts&#xe9;g&#xfc;k, mint CCD t&#xe1;rsaiknak.">
<node CREATED="1465415223922" ID="ID_538768944" MODIFIED="1465415226958" TEXT="El&#x151;ny&#xf6;k">
<node CREATED="1465415236379" ID="ID_546737886" MODIFIED="1465415236673" TEXT="A nagy integr&#xe1;lhat&#xf3;s&#xe1;g miatt alacsony &#xe1;r,"/>
<node CREATED="1465415244801" ID="ID_11954311" MODIFIED="1465415255366" TEXT="Kis fogyaszt&#xe1;s, kisebb h&#x151;termel&#xe9;s (alacsonyabb termikus zaj)."/>
<node CREATED="1465415238523" ID="ID_1080144713" MODIFIED="1465415263777" TEXT="Kisebb k&#xe9;sleltet&#xe9;s"/>
<node CREATED="1465415269195" ID="ID_1752499229" MODIFIED="1465415269416" TEXT="Nagyobb sebess&#xe9;g"/>
</node>
<node CREATED="1465415219178" ID="ID_95740912" MODIFIED="1465415333798" TEXT="H&#xe1;tr&#xe1;nyok">
<node CREATED="1465415280433" ID="ID_1836095165" MODIFIED="1465415280650" TEXT="Nagyobb zaj: a pixelek egyedi er&#x151;s&#xed;t&#x151;it nem lehet pontosan be&#xe1;ll&#xed;tani, ez&#xe9;rt ezek extra zajt adnak a k&#xe9;phez (pix-pattern noise). Erre a probl&#xe9;m&#xe1;ra a Canon tal&#xe1;lt t&#xf6;k&#xe9;letes megold&#xe1;st hardver szinten (&#xe9;s lassan minden gy&#xe1;rt&#xf3; alkalmaz hasonl&#xf3; megold&#xe1;sokat),"/>
<node CREATED="1465415302499" ID="ID_1527633035" MODIFIED="1465415304121" TEXT="Interferencia &#xe9;rz&#xe9;kenys&#xe9;g: a nagysz&#xe1;m&#xfa; akt&#xed;v elem sokkal &#xe9;rz&#xe9;kenyebb a k&#xf6;rnyezetb&#x151;l &#xe9;rkez&#x151; elektrom&#xe1;gneses zavarokra, mint a CCD,"/>
<node CREATED="1465415333799" ID="ID_1535891147" MODIFIED="1465415333976" TEXT="Az elektronikus z&#xe1;r nem, vagy nehezen val&#xf3;s&#xed;that&#xf3; meg. J&#xf3;l l&#xe1;that&#xf3; a CMOS &#xe9;rz&#xe9;kel&#x151;kkel k&#xe9;sz&#xfc;lt videofelv&#xe9;teleken ennek a hat&#xe1;sa: a kiolvas&#xe1;si sebess&#xe9;g miatt j&#xf3;l &#xe9;rz&#xe9;kelhet&#x151;en elcs&#xfa;szik a k&#xe9;p (nem azonos id&#x151;pillanatban t&#xf6;rt&#xe9;nik a teljes k&#xe9;p kiolvas&#xe1;sa meg, mint a CCD-kn&#xe9;l), &#xe9;s ha pl. egy mozg&#xf3; aut&#xf3;t f&#xe9;nyk&#xe9;pez&#xfc;nk, akkor az eredetileg kb. t&#xe9;glatest forma sz&#xe9;tcs&#xfa;szik paralelogramm&#xe1;v&#xe1;"/>
</node>
</node>
<node CREATED="1465415164587" ID="ID_1856341627" MODIFIED="1465415165057" TEXT="Complementary Metal-Oxide Semiconductor, jelent&#xe9;se: komplementer f&#xe9;m-oxid f&#xe9;lvezet&#x151;."/>
</node>
</node>
<node CREATED="1465414762571" ID="ID_1232098003" MODIFIED="1465414766336" TEXT="Fotoellen&#xe1;ll&#xe1;s"/>
<node CREATED="1465414767699" ID="ID_1906485995" MODIFIED="1465414774058" TEXT="Kvantumeszk&#xf6;z&#xf6;k"/>
<node CREATED="1465414775387" ID="ID_1102788647" MODIFIED="1465414783329" TEXT="K&#xe9;miai &#xe9;rz&#xe9;kel&#x151;k"/>
<node CREATED="1465414784475" ID="ID_1162488490" MODIFIED="1465414794705" TEXT="H&#x151;m&#xe9;rs&#xe9;kletm&#xe9;r&#xe9;sen alapul&#xf3; eszk&#xf6;z&#xf6;k"/>
</node>
<node CREATED="1465415372227" FOLDED="true" ID="ID_1441698541" MODIFIED="1465420164494" TEXT="3. Ismertesse a sz&#xed;nl&#xe1;t&#xe1;s alapjait. Milyen m&#xf3;dszereket haszn&#xe1;lunk t&#xf6;bbm&#xf3;dus&#xfa; (sz&#xed;nes) &#xe9;rz&#xe9;kel&#xe9;sre? Mit jelent a Sz&#xed;nh&#x151;m&#xe9;rs&#xe9;klet?">
<node CREATED="1465415381523" ID="ID_927174930" MODIFIED="1465415382471" TEXT="Az idegrendszer a retin&#xe1;n tal&#xe1;lhat&#xf3; k&#xfc;l&#xf6;nb&#xf6;z&#x151; t&#xed;pus&#xfa; csapok f&#xe9;nyre adott v&#xe1;laszainak egy&#xfc;ttes eredm&#xe9;nyek&#xe9;nt k&#xfc;l&#xf6;n&#xed;ti el a sz&#xed;neket, &#xed;gy okozva a sz&#xed;n&#xe9;rzetet az &#xe9;l&#x151;l&#xe9;nyek sz&#xe1;m&#xe1;ra. A csapok a l&#xe1;that&#xf3; f&#xe9;nytartom&#xe1;ny bizonyos szeleteire &#xe9;rz&#xe9;kenyek, viszont csak a be&#xe9;rkez&#x151; f&#xe9;ny mennyis&#xe9;g&#xe9;r&#x151;l adnak inform&#xe1;ci&#xf3;t az idegrendszernek, a be&#xe9;rkez&#x151; f&#xe9;ny hull&#xe1;mhossz&#xe1;r&#xf3;l nem. Az emberek sz&#xe1;m&#xe1;ra a l&#xe1;that&#xf3; sz&#xed;ntartom&#xe1;nyt hozz&#xe1;vet&#x151;legesen a 380 - 740 nm hull&#xe1;mhossz&#xfa; elektrom&#xe1;gneses sug&#xe1;rz&#xe1;s jelenti. Ezt a sz&#xed;ntartom&#xe1;nyt az emberi szem h&#xe1;rom k&#xfc;l&#xf6;nb&#xf6;z&#x151; t&#xed;pus&#xfa; csappal fedi le, m&#xe1;s fajokn&#xe1;l mind a l&#xe1;that&#xf3; sz&#xed;ntartom&#xe1;ny, mind a csapok sz&#xe1;ma elt&#xe9;r&#x151;. Emberi szem: 3 sz&#xed;n szenzor + 1 f&#xe9;nyer&#x151;ss&#xe9;g szenzor. A sz&#xed;n&#xe9;rz&#xe9;kel&#x151;k s&#xf6;t&#xe9;tben rosszul m&#x171;k&#xf6;dnek, ilyen fontosak a f&#xe9;nyer&#x151;ss&#xe9;g &#xe9;rz&#xe9;kel&#x151;k. Perif&#xe9;ri&#xe1;n alig l&#xe1;tunk sz&#xed;nt, az agy kompenz&#xe1;l, ahogy a vakfoltn&#xe1;l is. A sz&#xe1;m&#xed;t&#xf3;g&#xe9;pes rendszerek erre m&#xe9;g nem k&#xe9;pesek."/>
<node CREATED="1465415634619" ID="ID_1692692269" MODIFIED="1465415635473" TEXT="Sz&#xed;nh&#x151;m&#xe9;rs&#xe9;klet: A l&#xe1;that&#xf3; f&#xe9;ny egy jellegzetess&#xe9;ge. Egy f&#xe9;nyforr&#xe1;s sz&#xed;nh&#x151;m&#xe9;rs&#xe9;klet&#xe9;t az &#xe1;ltala okozott sz&#xed;n&#xe9;rzet &#xe9;s egy hipotetikus feketetest-sug&#xe1;rz&#xf3; &#xe1;ltal l&#xe9;trehozott sz&#xed;n&#xe9;rzet alapj&#xe1;n hat&#xe1;rozz&#xe1;k meg. Izz&#xf3;l&#xe1;mp&#xe1;k eset&#xe9;ben, l&#xe9;v&#xe9;n, hogy a f&#xe9;ny izz&#xe1;sb&#xf3;l sz&#xe1;rmazik, a sz&#xed;nh&#x151;m&#xe9;rs&#xe9;klet j&#xf3;l egybe esik az izz&#xf3;sz&#xe1;l h&#x151;m&#xe9;rs&#xe9;klet&#xe9;vel. A nem h&#x151;m&#xe9;rs&#xe9;kleti sug&#xe1;rz&#xe1;s elv&#xe9;n m&#x171;k&#xf6;d&#x151; f&#xe9;nyforr&#xe1;sok, mint p&#xe9;ld&#xe1;ul a f&#xe9;nycs&#xf6;vek eset&#xe9;ben k&#xf6;zvetlen fizikai jelent&#xe9;se nincsen. Ez&#xe9;rt ilyenkor ink&#xe1;bb korrel&#xe1;lt sz&#xed;nh&#x151;m&#xe9;rs&#xe9;kletr&#x151;l besz&#xe9;l&#xfc;nk. Elterjedt jel&#xf6;l&#xe9;se: CCT (Correlated Color Temperature)"/>
</node>
<node CREATED="1465416070899" FOLDED="true" ID="ID_1884125720" MODIFIED="1465420191454" TEXT="4. Ismertesse a k&#xe9;pi tartalom fontosabb jellemz&#x151;it, korl&#xe1;tait: felbont&#xe1;s, bitm&#xe9;lys&#xe9;g, interlace, mozg&#xe1;s, digit&#xe1;lis zaj, t&#xf6;m&#xf6;r&#xed;t&#xe9;si probl&#xe9;m&#xe1;k.">
<node CREATED="1465416080994" ID="ID_50309544" MODIFIED="1465416081192" TEXT="Felbont&#xe1;s: A k&#xe9;pfelbont&#xe1;s megmutatja, hogy a k&#xe9;p&#xfc;nk h&#xe1;ny pixelb&#x151;l &#xe1;ll (pl. 1920x1080). Nagyobb felbont&#xe1;s eset&#xe9;n jobb a k&#xe9;p min&#x151;s&#xe9;ge, azaz t&#xf6;bb r&#xe9;szlet jelenik meg rajta. A megjelen&#xed;tett k&#xe9;p min&#x151;s&#xe9;ge viszont f&#xfc;gg a megjelen&#xed;t&#x151; fel&#xfc;let nagys&#xe1;g&#xe1;t&#xf3;l. Ugyanaz a k&#xe9;p sokkal &#xe9;lesebbnek t&#x171;nik, ha kisebb m&#xe9;retben jelen&#xed;tj&#xfc;k meg. A k&#xe9;perny&#x151;k pixels&#x171;r&#x171;s&#xe9;g&#xe9;nek m&#xe9;rt&#xe9;kegys&#xe9;ge a k&#xe9;ppont/h&#xfc;velyk."/>
<node CREATED="1465416110106" ID="ID_1497778867" MODIFIED="1465416112494" TEXT="Bitm&#xe9;lys&#xe9;g: A bitm&#xe9;lys&#xe9;g adja meg, hogy a k&#xe9;p egyes k&#xe9;ppontjaihoz mennyi sz&#xed;ninform&#xe1;ci&#xf3; &#xe1;ll rendelkez&#xe9;sre. Min&#xe9;l t&#xf6;bb a k&#xe9;ppontonk&#xe9;nti inform&#xe1;ci&#xf3;, ann&#xe1;l t&#xf6;bb sz&#xed;n jelen&#xed;thet&#x151; meg a k&#xe9;pen, &#xe9;s ann&#xe1;l pontosabb a sz&#xed;nmegjelen&#xed;t&#xe9;s. Az 1-es bitm&#xe9;lys&#xe9;ggel rendelkez&#x151; k&#xe9;phez p&#xe9;ld&#xe1;ul k&#xe9;t lehets&#xe9;ges &#xe9;rt&#xe9;k tartozik: a fekete &#xe9;s a feh&#xe9;r. A 8-as bitm&#xe9;lys&#xe9;ggel rendelkez&#x151; k&#xe9;p lehets&#xe9;ges &#xe9;rt&#xe9;keinek sz&#xe1;ma 2 8 , vagyis 256. A 8-as bitm&#xe9;lys&#xe9;ggel rendelkez&#x151;, sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pen 256 sz&#xfc;rke&#xe1;rnyalat szerepelhet. A RGB rendszer&#x171; k&#xe9;pek h&#xe1;rom sz&#xed;ncsatorn&#xe1;b&#xf3;l &#xe1;llnak. Egy (csatorn&#xe1;nk&#xe9;nt) 8 bites RGB-k&#xe9;p eset&#xe9;n 256 &#xe9;rt&#xe9;k tartozik minden csatorn&#xe1;hoz, ami azt jelenti, hogy a k&#xe9;p t&#xf6;bb mint 16 milli&#xf3; lehets&#xe9;ges sz&#xed;n&#xe9;rt&#xe9;kkel rendelkezik. A csatorn&#xe1;nk&#xe9;nt 8 bites (8 bpc) RGB k&#xe9;peket szokt&#xe1;k 24 bites k&#xe9;peknek is h&#xed;vni."/>
<node CREATED="1465416272883" ID="ID_1406756296" MODIFIED="1465416273387" TEXT="Interlace: A telev&#xed;zi&#xf3;z&#xe1;sban a s&#xe1;vsz&#xe9;less&#xe9;g kihaszn&#xe1;l&#xe1;sa, optim&#xe1;lis kit&#xf6;lt&#xe9;se nagy feladat. A s&#xe1;vsz&#xe9;less&#xe9;g ig&#xe9;ny cs&#xf6;kkent&#xe9;s&#xe9;nek egyik megold&#xe1;sak&#xe9;nt hozt&#xe1;k l&#xe9;tre az interlaced (sorv&#xe1;ltott, &#xf6;sszef&#x171;z&#xf6;tt) megjelen&#xed;t&#xe9;st. Az elj&#xe1;r&#xe1;s c&#xe9;lja, hogy min&#x151;s&#xe9;gveszt&#xe9;s n&#xe9;lk&#xfc;l (vagy minim&#xe1;lis vesztes&#xe9;g mellett) a lehet&#x151; legkisebb s&#xe1;vsz&#xe9;less&#xe9;g felhaszn&#xe1;l&#xe1;s&#xe1;val lehessen az ad&#xe1;sokat tov&#xe1;bb&#xed;tani. Az elgondol&#xe1;s azon az alapon nyugszik, hogy amennyiben egy teljes k&#xe9;pkock&#xe1;t (keret, frame) felbontunk k&#xe9;t f&#xe9;l keretre, &#xed;gy egy id&#x151;egys&#xe9;g alatt csup&#xe1;n egy f&#xe9;l keretet kell &#xe1;tvinni, amit azt&#xe1;n a vev&#x151; k&#xe9;sz&#xfc;l&#xe9;k t&#xf6;bbsz&#xf6;ri villogtat&#xe1;ssal &#xe9;p&#xed;t egybe a m&#xe1;sodik f&#xe9;l kerettel, &#xed;gy szem&#xfc;nk nem veszi &#xe9;szre az elt&#xe9;r&#xe9;st &#xe9;s eg&#xe9;szk&#xe9;nt &#xe9;rz&#xe9;keli a k&#xe9;pet. Els&#x151; k&#xf6;rben csup&#xe1;n minden p&#xe1;ratlan pixelsort k&#xfc;ldenek &#xe1;t, majd a p&#xe1;rosakat. A hagyom&#xe1;nyos CRT TV-k, monitorok k&#xe9;pesek megjelen&#xed;teni az ilyen jeleket, &#xe1;tlagosan 50-60 f&#xe9;lk&#xe9;p/m&#xe1;sodperc sebess&#xe9;ggel, &#xed;gy a teljes k&#xe9;p 25-30 fps sebess&#xe9;g&#x171; lesz."/>
<node CREATED="1465416405587" ID="ID_1943492812" MODIFIED="1465416406327" TEXT="Mozg&#xe1;s: Id&#x151;ben egym&#xe1;s ut&#xe1;n k&#xf6;vetkez&#x151; k&#xe9;peken bek&#xf6;vetkez&#x151; elmozdul&#xe1;s, pixelv&#xe1;ltoz&#xe1;s?"/>
<node CREATED="1465416422499" FOLDED="true" ID="ID_645928326" MODIFIED="1465420189774" TEXT="Digit&#xe1;lis zaj: A digit&#xe1;lis f&#xe9;nyk&#xe9;pez&#x151;g&#xe9;pek &#xe9;rz&#xe9;kel&#x151;inek alapvet&#x151; &#xe9;p&#xed;t&#x151;eleme a photosite. A szenzornak ezen r&#xe9;sze &#xe9;rz&#xe9;keli val&#xf3;j&#xe1;ban a f&#xe9;nyt. Minden pixelre legal&#xe1;bb egy photosite jut (van ahol kett&#x151;). Ezek az elemi egys&#xe9;gek a f&#xe9;nyt olyan m&#xf3;don &#xe9;rz&#xe9;kelik, hogy az expoz&#xed;ci&#xf3; ideje alatt r&#xe1;juk es&#x151; fotonokat elektronokk&#xe1; (t&#xf6;lt&#xe9;ss&#xe9;) alak&#xed;tj&#xe1;k. Ez a t&#xf6;lt&#xe9;s az expoz&#xed;ci&#xf3; ideje alatt halmoz&#xf3;dik fel &#xe9;s meg&#x151;rz&#x151;dik az expoz&#xed;ci&#xf3; ut&#xe1;n. Ha az expoz&#xed;ci&#xf3; befejez&#x151;d&#xf6;tt, akkor minden egyes photosite t&#xf6;lt&#xe9;s&#xe9;t megm&#xe9;rik, majd a m&#xe9;rt &#xe9;rt&#xe9;ket digit&#xe1;lis &#xe9;rt&#xe9;kk&#xe9; alak&#xed;tj&#xe1;k (digitaliz&#xe1;lj&#xe1;k). Ezt a m&#xe9;r&#xe9;si folyamatot nevezz&#xfc;k kiolvas&#xe1;snak. A digit&#xe1;lis f&#xe9;nyk&#xe9;pez&#x151;g&#xe9;pekkel k&#xe9;sz&#xed;tett k&#xe9;pek zaja t&#xf6;bb k&#xfc;l&#xf6;nb&#xf6;z&#x151; forr&#xe1;sb&#xf3;l ered:">
<node CREATED="1465416452594" ID="ID_954729743" MODIFIED="1465416453194" TEXT="S&#xf6;t&#xe9;t zaj: A S&#xf6;t&#xe9;t Zaj (Dark Noise) a szenzorban (pontosabban a szil&#xed;cium-szil&#xed;ciumdioxid &#xe1;tmenetekn&#xe9;l) a h&#x151;t&#x151;l keletkezett szabad elektronok felhalmoz&#xf3;d&#xe1;sa a szenzor photosite-jaiban. Ez jellegzetes &quot;gr&#xed;zes&quot; zajk&#xe9;nt jelentkezik a k&#xe9;pen. Az ehhez kapcsol&#xf3;d&#xf3; kifejez&#xe9;s m&#xe9;g a &quot;dark current&quot;, amely ezeknek az elektronoknak a keletkez&#xe9;si sebess&#xe9;g&#xe9;t jelenti"/>
<node CREATED="1465416491515" ID="ID_1415107902" MODIFIED="1465416492192" TEXT="Kiolvas&#xe1;si zaj (Bias Noise): Ahhoz hogy k&#xe9;pet alkossunk a szenzor photosite-jaiban t&#xe1;rolt t&#xf6;lt&#xe9;sekb&#x151;l, minden egyes photosite t&#xf6;lt&#xe9;s&#xe9;t meg kell m&#xe9;rni &#xe9;s a m&#xe9;rt &#xe9;rt&#xe9;ket digitaliz&#xe1;lni kell. Ez a m&#xe9;r&#xe9;s a szenzor kiolvas&#xe1;si folyamat&#xe1;nak r&#xe9;sze. Azonban az elj&#xe1;r&#xe1;s t&#xe1;volr&#xf3;l sem t&#xf6;k&#xe9;letes. Az egyes photosite-ok t&#xf6;lt&#xe9;se t&#xfa;ls&#xe1;gosan kicsi ahhoz, hogy er&#x151;s&#xed;t&#xe9;s n&#xe9;lk&#xfc;l meg lehessen m&#xe9;rni, &#xe9;s ez az er&#x151;s&#xed;t&#xe9;s a probl&#xe9;ma (zaj) forr&#xe1;sa. A kiolvas&#xe1;st v&#xe9;gz&#x151; er&#x151;s&#xed;t&#x151;k valamennyi zajt elengedhetetlen&#xfc;l hozz&#xe1;adnak a photosite &#xe1;ltal t&#xe1;rolt &#xe9;s &#xe1;ltaluk feler&#x151;s&#xed;tett t&#xf6;lt&#xe9;shez."/>
<node CREATED="1465416530954" ID="ID_933914447" MODIFIED="1465416531336" TEXT="Foton zaj: A foton zajt a szenzorra &#xe9;rkez&#x151; fotonok egyenetlen &quot;&#xe9;rkez&#xe9;si ideje&quot; okozza. Ha a fotonok konstans r&#xe1;t&#xe1;ban &#xe9;rkezn&#xe9;nek, (mintha csak egy sz&#xe1;ll&#xed;t&#xf3;szalag sz&#xe1;ll&#xed;tan&#xe1; &#x151;ket a photosite-okba) akkor nem lenne foton zaj. Azonban a val&#xf3;s&#xe1;gban a fotonok rendszertelen&#xfc;l &#xe9;rkeznek. Az egyik photosite el&#xe9;g szerencs&#xe9;s ahhoz, hogy az expoz&#xed;ci&#xf3; ideje alatt 100 foton tal&#xe1;lja el, addig el&#x151;fordulhat, hogy a mellette l&#xe9;v&#x151;t, ugyanazon id&#x151; alatt csak 80 foton &#xe9;ri el. Ha egy egyenletesen megvil&#xe1;g&#xed;tott fel&#xfc;letet f&#xe9;nyk&#xe9;pez&#xfc;nk, akkor a foton zaj, a szomsz&#xe9;dj&#xe1;hoz viszony&#xed;tva, rendellenesen s&#xf6;t&#xe9;t pixelek form&#xe1;j&#xe1;ban jelentkezik."/>
<node CREATED="1465416775074" ID="ID_1724530449" MODIFIED="1465416775649" TEXT="A fenti zaj t&#xed;pusok Gauss zajok, mivel l&#xe9;nyeg&#xe9;ben korrel&#xe1;latlan val&#xf3;sz&#xed;n&#x171;s&#xe9;gi v&#xe1;ltoz&#xf3;kb&#xf3;l erednek. &#xc9;rdemes m&#xe9;g megeml&#xed;teni a s&#xf3;-bors zajt, amely v&#xe9;letlenszer&#x171; helyeken fekete vagy feh&#xe9;r pixeleket jelent. Nem Gauss jelleg&#x171; hiba, nem is jav&#xed;that&#xf3; azokhoz hasonl&#xf3;an, hanem medi&#xe1;n sz&#x171;r&#x151;vel &#xe9;rdemes. Jellemz&#x151;en az ADC &#xe9;s az &#xe1;tvitel hib&#xe1;i okozz&#xe1;k"/>
</node>
<node CREATED="1465416798491" ID="ID_607644050" MODIFIED="1465416802936" TEXT="T&#xf6;m&#xf6;r&#xed;t&#xe9;si probl&#xe9;m&#xe1;k">
<node CREATED="1465416809740" ID="ID_732223665" MODIFIED="1465416810097" TEXT="T&#xf6;m&#xf6;r&#xed;t&#xe9;si hiba: A vesztes&#xe9;ges t&#xf6;m&#xf6;r&#xed;t&#xe9;se sor&#xe1;n fell&#xe9;p&#x151; &#xe9;szrevehet&#x151; min&#x151;s&#xe9;groml&#xe1;s. &#xc1;ltal&#xe1;ban a vesztes&#xe9;ges t&#xf6;m&#xf6;r&#xed;t&#xe9;s kvant&#xe1;l&#xe1;si l&#xe9;p&#xe9;se sor&#xe1;n fell&#xe9;p&#x151; probl&#xe9;ma. Transzform&#xe1;ci&#xf3;s kodekekn&#xe9;l &#xe1;ltal&#xe1;ban a k&#xf3;dol&#xf3; transzform&#xe1;ci&#xf3;s ter&#xe9;nek b&#xe1;zis&#xe1;ra jellemz&#x151; a hiba. A blokk-alap&#xfa; DCT transzform&#xe1;ci&#xf3; sor&#xe1;n, amit p&#xe9;ld&#xe1;ul az elterjedt JPEG t&#xf6;m&#xf6;r&#xed;t&#xe9;s haszn&#xe1;l, t&#xf6;bbfajta t&#xf6;m&#xf6;r&#xed;t&#xe9;si hiba szokott el&#x151;fordulni. Ezek k&#xf6;z&#xe9; tartozik az elmos&#xf3;dott ter&#xfc;leten kont&#xfa;rosod&#xe1;s megjelen&#xe9;se, a g&#xf6;rbe vonalak ment&#xe9;n l&#xe9;pcs&#x151;zetes zaj megjelent&#xe9;se, &#x201e;l&#xe9;gypiszkok&#x201d; a sz&#xe9;lek ment&#xe9;n, sakkt&#xe1;blaszer&#x171; hiba (m&#xe1;sk&#xe9;ppen blokkoss&#xe1;g) a k&#xe9;p &#x201e;mozgalmas&#x201d; r&#xe9;szein. Lehet, hogy egy t&#xf6;m&#xf6;r&#xed;tett k&#xe9;p az ember sz&#xe1;m&#xe1;ra m&#xe9;g teljesen sz&#xe9;p, de az algoritmusok megbolondulnak t&#x151;le (pl. jpeg t&#xf6;m&#xf6;r&#xed;tett k&#xe9;pen &#xe9;lkeres&#xe9;s). Lehet&#x151;leg ne t&#xf6;m&#xf6;r&#xed;tett k&#xe9;pet dolgozzunk fel!"/>
</node>
</node>
<node CREATED="1465417056427" FOLDED="true" ID="ID_305759460" MODIFIED="1465420316414" TEXT="5. Mit jelent a sz&#xed;nt&#xe9;r? Mi&#xe9;rt van sz&#xfc;ks&#xe9;g t&#xf6;bbf&#xe9;le sz&#xed;nt&#xe9;rre? Mit jelent a sz&#xfc;rke&#xe1;rnyalatos&#xed;t&#xe1;s? R&#xf6;viden ismertesse a fontosabb sz&#xed;ntereket, azok feladat&#xe1;t.">
<node CREATED="1465417072699" ID="ID_172512047" MODIFIED="1465417072893" TEXT="Sz&#xed;nt&#xe9;r: A sz&#xed;nterek a sz&#xed;nek &#xe1;br&#xe1;zol&#xe1;s&#xe1;ra haszn&#xe1;lhat&#xf3; virtu&#xe1;lis t&#xe9;rbeli koordin&#xe1;ta-rendszer, ahol az egyes sz&#xed;nek tulajdons&#xe1;gait azok koordin&#xe1;t&#xe1;i fejezik ki. Sz&#xed;ness&#xe9;gi koordin&#xe1;t&#xe1;kb&#xf3;l &#xe9;p&#xfc;l fel a CIE XYZ sz&#xed;nt&#xe9;r. Valamennyi tov&#xe1;bbi sz&#xed;nt&#xe9;r k&#xfc;l&#xf6;nb&#xf6;zik ett&#x151;l; koordin&#xe1;t&#xe1;i &#xe1;ltal&#xe1;ban: &#xf0b7; egy sz&#xed;nezeti &#xf0b7; egy vil&#xe1;goss&#xe1;gi &#xf0b7; egy sz&#xed;ntel&#xed;tetts&#xe9;gi jellemz&#x151;. A sz&#xed;nt&#xe9;rben az &#xe1;br&#xe1;zolhat&#xf3; sz&#xed;nek valamilyen rend szerint ker&#xfc;lnek elhelyez&#xe9;sre (p&#xe9;ld&#xe1;ul az alapj&#xe1;n, hogy a sz&#xed;nt&#xe9;r alapsz&#xed;neinek milyen ar&#xe1;ny&#xfa; kever&#xe9;s&#xe9;vel &#xe1;ll&#xed;that&#xf3;k el&#x151;), &#xe9;s a poz&#xed;ci&#xf3;jukat meghat&#xe1;roz&#xf3; koordin&#xe1;t&#xe1;kkal ker&#xfc;lnek azonos&#xed;t&#xe1;sra (p&#xe9;ld&#xe1;ul az RGB sz&#xed;nt&#xe9;rben a (255,0,128) koordin&#xe1;t&#xe1;n a maxim&#xe1;lis v&#xf6;r&#xf6;s, nulla z&#xf6;ld, &#xe9;s a maxim&#xe1;lis fel&#xe9;nek megfelel&#x151; k&#xe9;k komponensek &#xf6;sszead&#xe1;s&#xe1;b&#xf3;l keletkez&#x151; sz&#xed;n tal&#xe1;lhat&#xf3;). A kamer&#xe1;k &#xe1;ltal r&#xf6;gz&#xed;tett sz&#xed;nes k&#xe9;p &#xe1;ltal&#xe1;ban RGB sz&#xed;nt&#xe9;rben k&#xe9;sz&#xfc;l, mivel az elt&#xe9;r&#x151; hull&#xe1;mhosszokhoz tartoz&#xf3; &#xe9;rz&#xe9;kel&#xe9;s gy&#xe1;rt&#xe1;stechnol&#xf3;giailag megoldhat&#xf3;. Az emberi szem az R, G &#xe9;s B komponenseket nem azonos s&#xfa;llyal/felbont&#xe1;ssal &#xe9;rz&#xe9;keli. Ezt t&#xf6;m&#xf6;r&#xed;t&#xe9;si &#xe9;s adat&#xe1;tviteli elj&#xe1;r&#xe1;sok el&#x151;szeretettel ki is haszn&#xe1;lj&#xe1;k. A sz&#xe1;m&#xed;t&#xf3;g&#xe9;pes k&#xe9;pfeldolgoz&#xe1;s tipikusan nem RGB-ben oldhat&#xf3; meg. A (f&#xe9;nyess&#xe9;g, sz&#xed;nezet, tel&#xed;tetts&#xe9;g) lek&#xe9;pez&#xe9;sek az alkalmaz&#xe1;sok jelent&#x151;s r&#xe9;sz&#xe9;ben jobban haszn&#xe1;lhat&#xf3;k. A lek&#xe9;pez&#xe9;st t&#xf6;bbf&#xe9;lek&#xe9;ppen meg lehet val&#xf3;s&#xed;tani, ez&#xe9;rt l&#xe9;tezik HSL, HSI, HSV, L*u*v stb. A mai TV-k tartalmazz&#xe1;k az alkalmazott LED-ek/LCD stb karakterisztik&#xe1;inak megfelel&#x151; transzform&#xe1;ci&#xf3;hoz sz&#xfc;ks&#xe9;ges adatokat (Chromaticity coordinates), hogy a bemen&#x151; jelet a forr&#xe1;s minden kijelz&#x151;n a lehet&#x151;s&#xe9;gekhez m&#xe9;rten azonosan jelen&#xed;thesse meg. Ehhez is sz&#xfc;ks&#xe9;ges t&#xf6;bbf&#xe9;le sz&#xed;nt&#xe9;r, minden kijelz&#x151; t&#xed;pushoz l&#xe9;nyeg&#xe9;ben saj&#xe1;t."/>
<node CREATED="1465417085418" ID="ID_920050464" MODIFIED="1465417086831" TEXT="Sz&#xfc;rke&#xe1;rnyalatos&#xed;t&#xe1;s: Pixelenk&#xe9;nt az RGB komponensekb&#x151;l intenzit&#xe1;st, vil&#xe1;goss&#xe1;got k&#xe9;pez&#xfc;nk. Az egyes sz&#xed;ncsatorn&#xe1;k k&#xfc;l&#xf6;nb&#xf6;z&#x151; s&#xfa;lyoz&#xe1;s&#xfa;ak lehetnek, &#xed;gy egy sz&#xed;nes k&#xe9;pb&#x151;l t&#xf6;bbf&#xe9;le sz&#xfc;rke&#xe1;rnyalatos is el&#x151;&#xe1;ll&#xed;that&#xf3;. Leggyakoribb a 0.30 0.59 0.11 s&#xfa;lyoz&#xe1;s, ebben az esetben I=0.30R+0.59G+0.11B."/>
<node CREATED="1465417090779" ID="ID_1423870427" MODIFIED="1465417094296" TEXT="Sz&#xed;nterek">
<node CREATED="1465417440459" ID="ID_822574582" MODIFIED="1465417441801" TEXT="A telev&#xed;zi&#xf3;s technik&#xe1;ban az RGB komponenseket veszi fel a kamera, ebb&#x151;l egy olyan vil&#xe1;goss&#xe1;gi &#xe9;rt&#xe9;ket (jele Y, neve luma) k&#xe9;peznek, amely kompatibilis a fekete&#x2013;feh&#xe9;r telev&#xed;zi&#xf3; vil&#xe1;goss&#xe1;gi &#xe9;rt&#xe9;k&#xe9;vel. Ezek ut&#xe1;n k&#xe9;pezik az R-Y &#xe9;s a B-Y sz&#xed;nkomponenseket. &#xcd;gy az anal&#xf3;g telev&#xed;zi&#xf3; egy vil&#xe1;goss&#xe1;gi &#xe9;s k&#xe9;t sz&#xed;ness&#xe9;gi (chroma) jelet tov&#xe1;bb&#xed;t (ez h&#xe1;rom mer&#x151;leges t&#xe9;rbeli vektor). Megjegyz&#xe9;s: a sz&#xed;nkomponenseket magasabb frekvenci&#xe1;n modul&#xe1;lj&#xe1;k a vil&#xe1;goss&#xe1;g f&#xf6;l&#xf6;tt, ami a fekete-feh&#xe9;r megjelen&#xed;t&#x151;n nem l&#xe1;tszik). Az alap&#xf6;tlet egy&#xe9;bk&#xe9;nt a mai digit&#xe1;lis rendszerekben is haszn&#xe1;latos, pl. YCbCr sz&#xed;nt&#xe9;rn&#xe9;l a sz&#xed;nezeti adatokat 2-4 pixelre &#xf6;sszevonhatj&#xe1;k, hogy cs&#xf6;kkenjen a sz&#xfc;ks&#xe9;ges s&#xe1;vsz&#xe9;less&#xe9;g (az emberi szem pedig alig veszi &#xe9;szre az elt&#xe9;r&#xe9;st)."/>
<node CREATED="1465417449675" ID="ID_602467335" MODIFIED="1465417449977" TEXT="A k&#xe9;pfeldolgoz&#xe1;s technik&#xe1;j&#xe1;ban a HSL, a HSV (f&#xe9;nyer&#x151;, sz&#xed;nezet, tel&#xed;tetts&#xe9;g) &#xe9;s m&#xe9;g tov&#xe1;bbi sz&#xed;nterek 1970 ut&#xe1;n."/>
<node CREATED="1465417460044" ID="ID_991796670" MODIFIED="1465417461279" TEXT="Sz&#xe1;m&#xed;t&#xe1;stechnik&#xe1;ban: RGB &#xe9;s v&#xe1;ltozatai (sRGB, AdobeRGB). A digit&#xe1;lis f&#xe9;nyk&#xe9;pez&#x151;g&#xe9;pek legt&#xf6;bbje az sRGB (standard RGB) rendszert haszn&#xe1;lja. Az ADOBE virtu&#xe1;lis alapsz&#xed;ningerek seg&#xed;ts&#xe9;g&#xe9;vel kiterjeszett sz&#xed;nteret (wide gamut) haszn&#xe1;l. Az RGB addit&#xed;v sz&#xed;nkever&#xe9;si elj&#xe1;r&#xe1;s, amely azzal defini&#xe1;lja a sz&#xed;nt, hogy a 3 alapsz&#xed;n&#x171; f&#xe9;nyb&#x151;l mennyit kell &#xf6;sszekeverni a k&#xed;v&#xe1;nt sz&#xed;n el&#xe9;r&#xe9;s&#xe9;hez. Alapb&#xf3;l s&#xf6;t&#xe9;t van &#xe9;s f&#xe9;nyeket adok hozz&#xe1;."/>
<node CREATED="1465417579244" ID="ID_725118219" MODIFIED="1465417579873" TEXT="Nyomdatechnik&#xe1;ban: CMYK. N&#xe9;gy alapsz&#xed;nnel dolgoz&#xf3; szubtrakt&#xed;v sz&#xed;nkever&#xe9;si technika."/>
<node CREATED="1465417594795" ID="ID_865706379" MODIFIED="1465417595081" TEXT="T&#xf6;m&#xf6;r&#xed;t&#xe9;si sz&#xed;nterek: pl. YCbCr-t haszn&#xe1;l a JPEG"/>
</node>
</node>
<node CREATED="1465417615340" FOLDED="true" ID="ID_533012110" MODIFIED="1465420346433" TEXT="6. Mit jelent a sz&#xed;nkorrekci&#xf3;? Ismertesse a fontosabb sz&#xed;n &#xe9;s f&#xe9;nyess&#xe9;gkorrekci&#xf3;s elj&#xe1;r&#xe1;sokat: Gamma korrekci&#xf3;, kontraszt, f&#xe9;nyess&#xe9;g. Mi&#xe9;rt van ezekre sz&#xfc;ks&#xe9;g, mire j&#xf3;k?">
<node CREATED="1465417765850" ID="ID_1681036880" MODIFIED="1465417767065" TEXT="Sz&#xed;nkorrekci&#xf3;: A k&#xe9;p sz&#xed;neinek m&#xf3;dos&#xed;t&#xe1;sa, valamilyen szempontb&#xf3;l jobb&#xe1; t&#xe9;tele, tipikusan az emberi szem sz&#xe1;m&#xe1;ra &#xe9;s nem a g&#xe9;p sz&#xe1;m&#xe1;ra. A sz&#xe1;m&#xed;t&#xf3;g&#xe9;pen t&#xe1;rolt k&#xe9;p sz&#xed;neivel, tel&#xed;tetts&#xe9;g&#xe9;vel, kontrasztj&#xe1;val, az egyes sz&#xed;n&#xf6;sszetev&#x151;k ar&#xe1;nyaival t&#xf6;rt&#xe9;n&#x151; m&#x171;veletek sorozata, melynek sor&#xe1;n kik&#xfc;sz&#xf6;b&#xf6;lik a digitaliz&#xe1;l&#xe1;skor keletkezett sz&#xed;nelt&#xe9;r&#xe9;seket &#xe9;s sz&#xed;negyens&#xfa;lyi elt&#xe9;r&#xe9;seket az eredeti k&#xe9;phez k&#xe9;pest."/>
<node CREATED="1465417936507" ID="ID_844718781" MODIFIED="1465417936736" TEXT="Gamma korrekci&#xf3;: Nemline&#xe1;risan l&#xe1;tunk, de line&#xe1;risan t&#xe1;rolunk, kompenz&#xe1;lni kell. A kontraszt &#xe9;rt&#xe9;keket optimaliz&#xe1;l&#xf3; elj&#xe1;r&#xe1;s. A Gamma-korrekci&#xf3;val a k&#xe9;p f&#xe9;nyess&#xe9;ge &#xe9;s sz&#xed;neinek &#xe9;less&#xe9;ge szab&#xe1;lyozhat&#xf3;. Ez&#xe1;ltal a pontos r&#xe9;szletek a s&#xf6;t&#xe9;tben j&#xe1;tsz&#xf3;d&#xf3; jelenetekn&#xe9;l jobban l&#xe1;that&#xf3;k, &#xe9;s a k&#xe9;p m&#xe9;lys&#xe9;ge is megmarad. Ha a Gamma korrekci&#xf3; &#xe9;rt&#xe9;ke magas, a k&#xe9;p vil&#xe1;gosabb t&#xf3;nus&#xfa; lesz kev&#xe9;sb&#xe9; telt sz&#xed;nekkel, m&#xed;g ellenkez&#x151; esetben s&#xf6;t&#xe9;tebb &#xe1;rnyalatok &#xe9;s valamivel teltebb sz&#xed;nek jellemzik a k&#xe9;pet."/>
<node CREATED="1465417944204" ID="ID_681638869" MODIFIED="1465418392575" TEXT="Kontraszt: A k&#xe9;p vil&#xe1;gos &#xe9;s s&#xf6;t&#xe9;t r&#xe9;szei k&#xf6;z&#xf6;tti t&#xf3;nusk&#xfc;l&#xf6;nbs&#xe9;g. Ha k&#xe9;t k&#xe9;p azonos mot&#xed;vumot &#xe1;br&#xe1;zol &#xe9;s az egyiken k&#xe9;t adott r&#xe9;szlet t&#xf3;nus&#xe1;nak k&#xfc;l&#xf6;nbs&#xe9;ge nagyobb mint a m&#xe1;sikon, akkor ennek nagyobb a kontrasztja. A leggyakrabban haszn&#xe1;lt algoritmus a hisztogram kiegyenl&#xed;t&#xe9;se (histogram equalization- HE). A m&#xf3;dszer az intenzit&#xe1;sok el&#x151;fordul&#xe1;si gyakoris&#xe1;g&#xe1;nak f&#xfc;ggv&#xe9;ny&#xe9;ben &#xfa;gy ny&#xfa;jtja a hisztogramot, hogy az kit&#xf6;ltse a rendelkez&#xe9;s&#xe9;re &#xe1;ll&#xf3; intenzit&#xe1;startom&#xe1;nyt &#xe9;s a szomsz&#xe9;dos intenzit&#xe1;sok t&#xe1;vols&#xe1;ga azok el&#x151;fordul&#xe1;si gyakoris&#xe1;g&#xe1;nak f&#xfc;ggv&#xe9;ny&#xe9;ben alakuljon. Magyarul, nagyobb lesz a kontraszt, ha a vil&#xe1;gosabb sz&#xed;neket tov&#xe1;bb vil&#xe1;gos&#xed;tjuk, a s&#xf6;t&#xe9;t sz&#xed;neket tov&#xe1;bb s&#xf6;t&#xe9;t&#xed;tj&#xfc;k."/>
<node CREATED="1465418383883" ID="ID_853907117" MODIFIED="1465418384173" TEXT="F&#xe9;nyess&#xe9;g: Relat&#xed;v vil&#xe1;goss&#xe1;g&#xe9;rzet, a fel&#xfc;let becs&#xfc;lt reflektanci&#xe1;ja vagy transzmittanci&#xe1;ja. Ha n&#xf6;velj&#xfc;k egy k&#xe9;p f&#xe9;nyess&#xe9;g&#xe9;t, akkor minden sz&#xed;nt egyform&#xe1;n vil&#xe1;gos&#xed;tunk."/>
</node>
<node CREATED="1465418404899" FOLDED="true" ID="ID_1593607293" MODIFIED="1465420597568" TEXT="7. Ismertesse a k&#xe9;pi tartalom t&#xe1;rol&#xe1;s&#xe1;nak fontosabb probl&#xe9;m&#xe1;it, lehet&#x151;s&#xe9;geit, m&#xf3;dszereit. Hogyan haszn&#xe1;ljuk a k&#xe9;pi adatb&#xe1;zisokat?">
<node CREATED="1465418410291" ID="ID_957274324" MODIFIED="1465418415778" TEXT="K&#xe9;pek t&#xe1;rol&#xe1;sa">
<node CREATED="1465418416539" ID="ID_428566503" MODIFIED="1465418425541" TEXT="T&#xf6;m&#xf6;r&#xed;tetlen: BMP, PNM"/>
<node CREATED="1465418426778" ID="ID_1241844753" MODIFIED="1465418444115" TEXT="Vesztes&#xe9;g n&#xe9;lk&#xfc;l: GIF, JPEG-LS/2000, PNG, TIFF, H.264 lossless..."/>
<node CREATED="1465418456123" ID="ID_101955758" MODIFIED="1465418471683" TEXT="Vesztes&#xe9;ges: JPEG, PNG, H.264..."/>
<node CREATED="1465418482100" ID="ID_861836662" MODIFIED="1465418482462" TEXT="Kont&#xe9;ner form&#xe1;tumok: (PNG), TIFF, AVI, MOV, MP4, OGG, WMV... A konkr&#xe9;t t&#xf6;m&#xf6;r&#xed;t&#xe9;si elj&#xe1;r&#xe1;s a fejl&#xe9;cben t&#xe1;rolva, a codec az, ami dek&#xf3;dolni tudja."/>
</node>
<node CREATED="1465418490611" ID="ID_1833880197" MODIFIED="1465418492312" TEXT="K&#xe9;pek &#xe9;s f&#x151;leg a vide&#xf3;k t&#xf6;m&#xf6;r&#xed;tetlen t&#xe1;rol&#xe1;sa hatalmas t&#xe1;rter&#xfc;letet ig&#xe9;nyel, &#xed;gy rendk&#xed;v&#xfc;l dr&#xe1;ga &#xe9;s n&#xe9;h&#xe1;ny speci&#xe1;lis esetet lesz&#xe1;m&#xed;tva f&#xf6;l&#xf6;sleges is. Egy 24 bites 1920x1080 felbont&#xe1;s&#xfa; t&#xf6;m&#xf6;r&#xed;tetlen k&#xe9;p kb. 6 MB helyet foglal, m&#xe1;sodpercenk&#xe9;nt 60 k&#xe9;pkock&#xe1;val sz&#xe1;molva egy 1 &#xf3;r&#xe1;s vide&#xf3; t&#xe1;rhely ig&#xe9;nye 1 TB felett van, valamint m&#xe1;r a h&#xe1;tt&#xe9;rt&#xe1;r &#xed;r&#xe1;si sebess&#xe9;ge is sz&#x171;k keresztmetszet lehet."/>
<node CREATED="1465418544668" ID="ID_109640078" MODIFIED="1465418545274" TEXT="A vesztes&#xe9;gmentes t&#xf6;m&#xf6;r&#xed;t&#xe9;s a k&#xe9;pben lev&#x151; sok pontosan azonos sz&#xed;n&#x171; pixel jelenl&#xe9;t&#xe9;t haszn&#xe1;lja ki, azok helyett egy &quot;r&#xf6;vid&#xed;t&#xe9;st&quot; alkalmaz, &#xed;gy a k&#xe9;pf&#xe1;jl m&#xe9;rete jelent&#x151;sen cs&#xf6;kkenthet&#x151; lehet. A t&#xf6;m&#xf6;r&#xed;t&#xe9;s lehet&#x151;v&#xe9; teszi a t&#xf6;m&#xf6;r&#xed;tett adatb&#xf3;l az eredeti adatok pontos rekonstrukci&#xf3;j&#xe1;t. A vesztes&#xe9;gmentes t&#xf6;m&#xf6;r&#xed;t&#xe9;s nem tud valamilyen t&#xf6;m&#xf6;r&#xed;t&#xe9;si ar&#xe1;nyt garant&#xe1;lni minden lehets&#xe9;ges bemeneti adatra. M&#xe1;s szavakkal kifejezve, b&#xe1;rmely (vesztes&#xe9;gmentes) adatt&#xf6;m&#xf6;r&#xed;t&#xe9;si algoritmus eset&#xe9;ben lesz olyan bemeneti adathalmaz, aminek a m&#xe9;ret&#xe9;t az algoritmus nem k&#xe9;pes cs&#xf6;kkenteni, s&#x151;t ak&#xe1;r n&#xf6;velheti is."/>
<node CREATED="1465418589620" ID="ID_237594678" MODIFIED="1465418590920" TEXT="A vesztes&#xe9;ges t&#xf6;m&#xf6;r&#xed;t&#xe9;s nem teszi lehet&#x151;v&#xe9; a t&#xf6;m&#xf6;r&#xed;tett adatb&#xf3;l az eredeti adatok pontos rekonstrukci&#xf3;j&#xe1;t, &#xe1;m (az emberi szem sz&#xe1;m&#xe1;ra) egy &#x201e;el&#xe9;g j&#xf3;&#x201d; rekonstrukci&#xf3;t igen. Vide&#xf3;k eset&#xe9;n ak&#xe1;r 1:100 t&#xf6;m&#xf6;r&#xed;t&#xe9;si ar&#xe1;ny is el&#xe9;rhet&#x151; l&#xe1;that&#xf3; min&#x151;s&#xe9;groml&#xe1;s n&#xe9;lk&#xfc;l. Az emberi szem nem k&#xe9;pes t&#xf6;bb milli&#xf3; sz&#xed;n&#xe1;rnyalat megk&#xfc;l&#xf6;nb&#xf6;ztet&#xe9;s&#xe9;re, &#xed;gy &#xe1;ltal&#xe1;ban cs&#xf6;kkentik a bitm&#xe9;lys&#xe9;get. A vesztes&#xe9;ges predikt&#xed;v kodekekben az adott mint&#xe1;t megel&#x151;z&#x151; &#xe9;s/vagy k&#xf6;vet&#x151; mint&#xe1;k seg&#xed;ts&#xe9;g&#xe9;vel pr&#xf3;b&#xe1;lj&#xe1;k megj&#xf3;solni az aktu&#xe1;lis hangmint&#xe1;t vagy k&#xe9;pkock&#xe1;t. A megj&#xf3;solt adat &#xe9;s a val&#xf3;s adat k&#xf6;zti elt&#xe9;r&#xe9;st (a j&#xf3;sl&#xe1;s reproduk&#xe1;l&#xe1;s&#xe1;hoz sz&#xfc;ks&#xe9;ges egy&#xe9;b inform&#xe1;ci&#xf3;kkal egy&#xfc;tt) kvant&#xe1;lj&#xe1;k &#xe9;s k&#xf3;dolj&#xe1;k. Ha egy vide&#xf3;ban csak a k&#xe9;p k&#xf6;zep&#xe9;n van mozg&#xe1;s, felesleges az eg&#xe9;szet elt&#xe1;rolni &#xfa;jra. A g&#xe9;pnek nem mindig j&#xf3;, pl. hib&#xe1;san &#xe9;leket tal&#xe1;l a t&#xf6;m&#xf6;r&#xed;t&#xe9;si n&#xe9;gyzetek sz&#xe9;l&#xe9;n."/>
<node CREATED="1465418646355" ID="ID_57939332" MODIFIED="1465418653250" TEXT="K&#xe9;pi adatb&#xe1;zisok">
<node CREATED="1465418658628" ID="ID_483649556" MODIFIED="1465418658833" TEXT="A k&#xe9;pekhez rendelhet&#x151;k k&#xfc;l&#xf6;nb&#xf6;z&#x151; adatok, melyek megk&#xf6;nny&#xed;tik az ut&#xf3;lagos rendez&#xe9;st, keres&#xe9;st. Ilyen adatok:">
<node CREATED="1465418675020" ID="ID_592322864" MODIFIED="1465418675593" TEXT="Alapadatok: m&#xe9;ret, felv&#xe9;tel/m&#xf3;dos&#xed;t&#xe1;s id&#x151;pontja, felv&#xe9;tel helye, kamera be&#xe1;ll&#xed;t&#xe1;sok (metadata)"/>
<node CREATED="1465418690442" ID="ID_351592844" MODIFIED="1465418691665" TEXT="M&#xe9;r&#xe9;seken alapul&#xf3; adatok (pl. objektumok sz&#xe1;ma, sz&#xed;nek, m&#xe9;retek)"/>
<node CREATED="1465418702452" ID="ID_1516968117" MODIFIED="1465418704757" TEXT="Intelligens felismer&#xe9;s (pl. ember, vir&#xe1;g, g&#xe9;pj&#xe1;rm&#x171;)"/>
<node CREATED="1465418711652" ID="ID_386623408" MODIFIED="1465418711858" TEXT="Jogosults&#xe1;gok"/>
<node CREATED="1465418717124" ID="ID_1660225248" MODIFIED="1465418719017" TEXT="Felhaszn&#xe1;l&#xf3;i kulcsszavak (google)"/>
<node CREATED="1465418723116" ID="ID_1320190643" MODIFIED="1465418724746" TEXT="Miniat&#x171;r&#xf6;k"/>
</node>
</node>
</node>
</node>
<node CREATED="1465399053255" FOLDED="true" ID="ID_1697754014" MODIFIED="1465427446993" TEXT="2. Jav&#xed;t&#xe1;s k&#xe9;ptartom&#xe1;nyban">
<node CREATED="1465420623853" FOLDED="true" ID="ID_395228508" MODIFIED="1465427284560" TEXT="8. Mit jelent a hisztogram? Ismertesse a hisztogramtranszform&#xe1;ci&#xf3; m&#x171;k&#xf6;d&#xe9;s&#xe9;t &#xe9;s felhaszn&#xe1;l&#xe1;si lehet&#x151;s&#xe9;geit.">
<node CREATED="1465420821644" ID="ID_1274302584" MODIFIED="1465420821857" TEXT="Hisztogram: A k&#xe9;p hisztogramja a f&#xe9;nyess&#xe9;g&#xe9;rt&#xe9;kek vagy az egyes sz&#xed;ncsatorn&#xe1;kon felvett &#xe9;rt&#xe9;keinek eloszl&#xe1;s&#xe1;t (s&#x171;r&#x171;s&#xe9;gf&#xfc;ggv&#xe9;ny&#xe9;t) mutatja. A lehets&#xe9;ges sz&#xed;n&#xe9;rt&#xe9;kek tengely&#xe9;re az egyes sz&#xed;n&#xe9;rt&#xe9;kek gyakoris&#xe1;g&#xe1;t viszik fel. Min&#xe9;l magasabb ez, ann&#xe1;l t&#xf6;bbsz&#xf6;r fordul el&#x151; az adott sz&#xed;n&#xe9;rt&#xe9;k a k&#xe9;pen."/>
<node CREATED="1465420831060" ID="ID_416010753" MODIFIED="1465420831463" TEXT="A digit&#xe1;lis k&#xe9;pfeldolgoz&#xe1;sban a hisztogram a k&#xe9;p sz&#xed;n&#xe9;rt&#xe9;keir&#x151;l vagy sz&#xfc;rkes&#xe9;gi fokozat&#xe1;r&#xf3;l k&#xe9;sz&#xfc;l. Ez alapj&#xe1;n adatok nyerhet&#x151;k az el&#x151;fordul&#xf3; sz&#xed;nekr&#x151;l, kontrasztokr&#xf3;l &#xe9;s f&#xe9;nyess&#xe9;gekr&#x151;l. Egy sz&#xed;nes k&#xe9;pr&#x151;l t&#xf6;bb hisztogram is k&#xe9;sz&#xed;thet&#x151; az egyes sz&#xed;ncsatorn&#xe1;k, vagy az &#xf6;sszes sz&#xed;n szerint. Mivel a legt&#xf6;bb elj&#xe1;r&#xe1;s a fekete-feh&#xe9;r k&#xe9;peket t&#xe1;mogatja, ez&#xe9;rt ink&#xe1;bb az egyes sz&#xed;ncsatorn&#xe1;k hisztogramj&#xe1;t haszn&#xe1;lj&#xe1;k, ami lehet&#x151;v&#xe9; teszi a k&#xe9;p feldolgoz&#xe1;s&#xe1;nak azonnali folytat&#xe1;s&#xe1;t. A sz&#xed;ncsatorn&#xe1;k sz&#xe1;ma az alapsz&#xed;nek sz&#xe1;m&#xe1;t&#xf3;l f&#xfc;gg: RGB est&#xe9;n h&#xe1;rom, CMYK eset&#xe9;n n&#xe9;gy."/>
<node CREATED="1465420882877" ID="ID_945843073" MODIFIED="1465420883195" TEXT="A digit&#xe1;lis k&#xe9;pfeldolgoz&#xe1;sban a hisztogram a k&#xe9;p sz&#xed;n&#xe9;rt&#xe9;keir&#x151;l vagy sz&#xfc;rkes&#xe9;gi fokozat&#xe1;r&#xf3;l k&#xe9;sz&#xfc;l. Ez alapj&#xe1;n adatok nyerhet&#x151;k az el&#x151;fordul&#xf3; sz&#xed;nekr&#x151;l, kontrasztokr&#xf3;l &#xe9;s f&#xe9;nyess&#xe9;gekr&#x151;l. Egy sz&#xed;nes k&#xe9;pr&#x151;l t&#xf6;bb hisztogram is k&#xe9;sz&#xed;thet&#x151; az egyes sz&#xed;ncsatorn&#xe1;k, vagy az &#xf6;sszes sz&#xed;n szerint. Mivel a legt&#xf6;bb elj&#xe1;r&#xe1;s a fekete-feh&#xe9;r k&#xe9;peket t&#xe1;mogatja, ez&#xe9;rt ink&#xe1;bb az egyes sz&#xed;ncsatorn&#xe1;k hisztogramj&#xe1;t haszn&#xe1;lj&#xe1;k, ami lehet&#x151;v&#xe9; teszi a k&#xe9;p feldolgoz&#xe1;s&#xe1;nak azonnali folytat&#xe1;s&#xe1;t. A sz&#xed;ncsatorn&#xe1;k sz&#xe1;ma az alapsz&#xed;nek sz&#xe1;m&#xe1;t&#xf3;l f&#xfc;gg: RGB est&#xe9;n h&#xe1;rom, CMYK eset&#xe9;n n&#xe9;gy."/>
<node CREATED="1465420949356" ID="ID_1221408137" MODIFIED="1465420949629" TEXT="A digit&#xe1;lis f&#xe9;nyk&#xe9;p&#xe9;szet gyakran haszn&#xe1;l hisztogramot. A j&#xf3;l felszerelt digit&#xe1;lis f&#xe9;nyk&#xe9;pez&#x151;g&#xe9;pek val&#xf3;s id&#x151;ben mutatnak hisztogramokat, hogy &#xed;gy seg&#xed;ts&#xe9;k a k&#xe9;pi egyens&#xfa;ly megtal&#xe1;l&#xe1;s&#xe1;t. Ez pontosabb k&#xe9;pszerkeszt&#xe9;st tesz lehet&#x151;v&#xe9;, mint ami a kamerak&#xe9;p alapj&#xe1;n tehets&#xe9;ges lehetne. Felismerhet&#x151;k &#xe9;s jav&#xed;that&#xf3;k p&#xe9;ld&#xe1;ul a vil&#xe1;g&#xed;t&#xe1;s hib&#xe1;i, ha a k&#xe9;p t&#xfa;l s&#xf6;t&#xe9;t vagy t&#xfa;l vil&#xe1;gos lenne. A k&#xe9;p k&#xe9;s&#x151;bbi feldolgoz&#xe1;s&#xe1;ban sokat sz&#xe1;m&#xed;tanak a rajta lev&#x151; kontrasztok &#xe9;s a f&#xe9;nyess&#xe9;gek, ez&#xe9;rt &#xe9;rdemes a hisztogramokat figyelni."/>
<node CREATED="1465420981213" ID="ID_331455001" MODIFIED="1465420991448" TEXT="A hisztogramok egy klasszikus felhaszn&#xe1;l&#xe1;sa a sz&#xed;negyens&#xfa;ly be&#xe1;ll&#xed;t&#xe1;sa (equalizing), l&#xe1;sd az &#xe1;br&#xe1;t. A hisztogramot &#xe9;s a megfelel&#x151; sz&#xed;neket egy alkalmas f&#xfc;ggv&#xe9;nnyel transzform&#xe1;lj&#xe1;k. Jobban kiegyens&#xfa;lyozza a sz&#xed;neket, mint a kontrasztok er&#x151;s&#xed;t&#xe9;se. Az &#xe1;br&#xe1;n bal als&#xf3; sarokban l&#xe1;that&#xf3; n&#xe9;h&#xe1;ny sz&#xed;n a korrekci&#xf3; param&#xe9;tereinek be&#xe1;ll&#xed;t&#xe1;s&#xe1;hoz haszn&#xe1;lhat&#xf3; referencia, az err&#x151;l k&#xe9;sz&#xfc;lt f&#xe9;nyk&#xe9;pet &#xfa;gy kell korrig&#xe1;lni, hogy a k&#xe9;pen az eredeti &#xe9;rt&#xe9;keket kapjuk vissza (persze ilyen komolys&#xe1;gn&#xe1;l m&#xe1;r arra is vigy&#xe1;zni kell hogy a minta megfakul id&#x151;vel stb.)."/>
</node>
<node CREATED="1465420637652" FOLDED="true" ID="ID_1605577648" MODIFIED="1465427285705" TEXT="9. Milyen fontosabb zajok jellemezhetik a k&#xe9;peket? Sorolja fel a lehets&#xe9;ges elj&#xe1;r&#xe1;sokat ezek elt&#xfc;ntet&#xe9;s&#xe9;re? Ismertesse a konvol&#xfa;ci&#xf3;s ablakkal t&#xf6;rt&#xe9;n&#x151; k&#xe9;pjav&#xed;t&#xe1;s m&#xf3;dszer&#xe9;t.">
<node CREATED="1465421106821" ID="ID_1105401324" MODIFIED="1465421107003" TEXT="Gauss zaj: Az er&#x151;s&#xed;t&#x151; k&#xe9;pzaja. Gyenge megvil&#xe1;g&#xed;t&#xe1;s, magas h&#x151;m&#xe9;rs&#xe9;klet &#xe9;s a f&#xe9;nyk&#xe9;pez&#x151; elektronik&#xe1;ja &#xe1;ltal okozott zaj."/>
<node CREATED="1465421117732" ID="ID_741008587" MODIFIED="1465421118236" TEXT="S&#xf3;-bors zaj: A k&#xe9;p fekete &#xe9;s feh&#xe9;r pixelekkel van &quot;megsz&#xf3;rva&quot;. A/D konverzi&#xf3;, &#xe1;tviteli hib&#xe1;k okozz&#xe1;k."/>
<node CREATED="1465421135733" ID="ID_233033312" MODIFIED="1465421148256" TEXT="Elj&#xe1;r&#xe1;sok a zajok elt&#x171;ntet&#xe9;s&#xe9;re">
<node CREATED="1465421153364" ID="ID_109171482" MODIFIED="1465421153610" TEXT="Egyszer&#x171; &#xe1;tlagol&#xe1;s"/>
<node CREATED="1465421158237" ID="ID_910727446" MODIFIED="1465421161131" TEXT="Konvol&#xfa;ci&#xf3;"/>
<node CREATED="1465421162324" ID="ID_999123661" MODIFIED="1465421164958" TEXT="Gauss sz&#x171;r&#xe9;s "/>
<node CREATED="1465421166035" ID="ID_1263579807" MODIFIED="1465421189187" TEXT="Sim&#xed;t&#xf3; sz&#x171;r&#x151;k"/>
<node CREATED="1465421190549" ID="ID_1735056901" MODIFIED="1465421195937" TEXT="&#xc9;les&#xed;t&#x151; sz&#x171;r&#x151;k"/>
<node CREATED="1465421198196" ID="ID_1198749255" MODIFIED="1465421202802" TEXT="Rank sz&#x171;r&#x151;k"/>
<node CREATED="1465421204180" ID="ID_369515771" MODIFIED="1465421205378" TEXT="Median"/>
</node>
<node CREATED="1465421242909" ID="ID_1800825607" MODIFIED="1465421246242" TEXT="Konvol&#xfa;ci&#xf3;s ablak">
<node CREATED="1465421261132" ID="ID_728777478" MODIFIED="1465421261458" TEXT="A k&#xe9;p adott pixel&#xe9;t a k&#xf6;rnyezet&#xe9;ben l&#xe9;v&#x151; pixelek f&#xfc;ggv&#xe9;ny&#xe9;ben m&#xf3;dos&#xed;tjuk. Pixelr&#x151;l pixelre haladunk. Az ablak (kernel, maszk) egy m&#xe1;trix, elemei a s&#xfa;lyok. Line&#xe1;ris esetben minden pixelt a k&#xf6;rnyezet&#xe9;nek line&#xe1;ris kombin&#xe1;ci&#xf3;j&#xe1;val helyettes&#xed;tj&#xfc;k. A line&#xe1;ris kombin&#xe1;ci&#xf3;val t&#xf6;rt&#xe9;n&#x151; le&#xed;r&#xe1;st konvol&#xfa;ci&#xf3;s kernelnek nevezz&#xfc;k. A k&#xe9;pjav&#xed;t&#xe1;s menete:">
<node CREATED="1465421324765" ID="ID_1858496209" MODIFIED="1465421325438" TEXT="1. Az input minden pixel&#xe9;re egy ablakot/kernelt helyez&#xfc;nk &#xfa;gy, hogy annak orig&#xf3;ja az adott pixelre essen."/>
<node CREATED="1465421333453" ID="ID_297643359" MODIFIED="1465421334178" TEXT="2. Az input k&#xe9;p kernel&#xe9;ben l&#xe9;v&#x151; pixeleit megszorozzuk a kernelben szerepl&#x151; s&#xfa;lyokkal."/>
<node CREATED="1465421344156" ID="ID_1695061697" MODIFIED="1465421344354" TEXT="3. Az eredm&#xe9;ny: az input helyzet&#xe9;nek megfelel&#x151; pixel &#xe9;rt&#xe9;ke a s&#xfa;lyozott &#xe9;rt&#xe9;kek &#xf6;sszege (esetleg sk&#xe1;l&#xe1;zva)."/>
</node>
</node>
</node>
<node CREATED="1465420645164" FOLDED="true" ID="ID_1370256314" MODIFIED="1465427288480" TEXT="10. Hogyan tudunk sim&#xed;t&#xf3; sz&#x171;r&#x151;t k&#xe9;sz&#xed;teni? Hogyan hat a k&#xe9;pre a konvol&#xfa;ci&#xf3;s kernel m&#xe9;rete &#xe9;s a kernelen bel&#xfc;li &#xe9;rt&#xe9;kek elrendez&#xe9;se? Milyen el&#x151;nyei vannak az al&#xe1;bbi kernelnek: [ 1 2 1 ; 2 4 2 ; 1 2 1 ]? Ismertesse a Gauss sz&#x171;r&#x151; l&#xe9;nyeg&#xe9;t.">
<node CREATED="1465421397452" ID="ID_1780173533" MODIFIED="1465421397652" TEXT="Sim&#xed;t&#xf3; sz&#x171;r&#x151;: A sim&#xed;t&#xe1;s l&#xe9;nyege, hogy a k&#xe9;ppontok k&#xf6;zelebb ker&#xfc;lnek k&#xf6;rnyezet&#xfc;k &#xe1;tlag&#xe1;hoz, azaz a k&#xe9;p &#x201e;sim&#xe1;bb&#x201d; lesz. Vessz&#xfc;k a sima &#xe1;tlagol&#xf3; sz&#x171;r&#x151; kernel&#xe9;t, de k&#xfc;l&#xf6;nb&#xf6;z&#x151; s&#xfa;lyoz&#xe1;sokat haszn&#xe1;lunk. A kernel elemei pozit&#xed;vak."/>
<node CREATED="1465421531812" ID="ID_23502233" MODIFIED="1465421533787" TEXT="Konvol&#xfa;ci&#xf3;s kernel m&#xe9;rete: Min&#xe9;l nagyobb a kernel, az apr&#xf3;bb dolgok ann&#xe1;l ink&#xe1;bb elt&#x171;nnek, elmos&#xf3;dnak."/>
<node CREATED="1465421508053" ID="ID_1837765897" MODIFIED="1465421508243" TEXT="[ 1 2 1 ; 2 4 2 ; 1 2 1 ] kernel el&#x151;nyei FPGA-ban nagyon k&#xf6;nny&#x171; megval&#xf3;s&#xed;tani, mivel 2-vel &#xe9;s 4-gyel kell szorozni, 16-tal kell osztani a v&#xe9;g&#xe9;n. Ezek a m&#x171;veletek a 2-hatv&#xe1;nyok miatt eltol&#xe1;sok, FPGA-ban csup&#xe1;n huzaloz&#xe1;ssal megoldhat&#xf3;k, gyors!"/>
<node CREATED="1465421564045" ID="ID_1709458803" MODIFIED="1465421564306" TEXT="Gauss sz&#x171;r&#x151; Kernelm&#xe9;ret 3&#x3c3;. Kernel: [1 4 1; 4 16 4 ; 1 4 1]. Egyenl&#x151; s&#xfa;ly helyett &#xe9;rdemesebb a k&#xf6;zelebbi pixeleket nagyobb s&#xfa;llyal sz&#xe1;molni. A Gauss sz&#x171;r&#x151; sim&#xed;t&#xf3; jelleg&#x171;. Sz&#xe9;pen elkeni a k&#xe9;pet, viszont nem t&#xfa;l gyors (36-tal oszt&#xe1;s). Algoritmusokban van szerepe, pl. a Canny-f&#xe9;le &#xe9;ldetektorban haszn&#xe1;ljuk."/>
</node>
<node CREATED="1465420654244" FOLDED="true" ID="ID_1653403008" MODIFIED="1465427289464" TEXT="11. Hogyan m&#x171;k&#xf6;dnek az &#xe9;les&#xed;t&#x151; sz&#x171;r&#x151;k? Miben k&#xfc;l&#xf6;nb&#xf6;zik egy &#xe9;les&#xed;t&#x151; &#xe9;s egy &#xe9;lkeres&#x151; sz&#x171;r&#x151;? Milyen v&#xe1;ltoztat&#xe1;st hajt v&#xe9;gre a k&#xe9;pen az al&#xe1;bbi sz&#x171;r&#x151;: [ -2 -1 0 ; -1 1 1 ; 0 1 2 ]?">
<node CREATED="1465421636413" ID="ID_654164857" MODIFIED="1465421636605" TEXT="&#xc9;les&#xed;t&#x151; sz&#x171;r&#x151;: Kiemeli a k&#xf6;rnyezeti &#xe1;tlagt&#xf3;l val&#xf3; elt&#xe9;r&#xe9;st (azaz az &#xe9;leket). A kernelben vannak pozit&#xed;v &#xe9;s negat&#xed;v s&#xfa;lyok is. Min&#xe9;l nagyobb a k&#xf6;z&#xe9;ps&#x151; &#xe9;rt&#xe9;k ann&#xe1;l ink&#xe1;bb hasonl&#xed;t az eredeti k&#xe9;pre az &#xfa;j. H&#xe1;tr&#xe1;ny: a zajokat is kiemeli."/>
<node CREATED="1465421656805" ID="ID_1797269499" MODIFIED="1465421657186" TEXT="&#xc9;les&#xed;t&#x151; &#xe9;s &#xe9;lkeres&#x151;: &#xc9;lkeres&#x151; sz&#x171;r&#x151; eset&#xe9;n a kernel s&#xfa;lyainak &#xf6;sszege nulla, m&#xed;g &#xe9;les&#xed;t&#x151;n&#xe9;l nem. A null&#xe1;val nem osztunk, hanem eltoljuk egy f&#xe9;lsz&#xfc;rke&#xe1;rnyalattal."/>
<node CREATED="1465421781365" ID="ID_948246271" MODIFIED="1465421781781" TEXT="[ -2 -1 0 ; -1 1 1 ; 0 1 2 ] sz&#x171;r&#x151; Ez t&#xe9;rbeli kiemel&#xe9;sre haszn&#xe1;latos. Gyakorlatilag azonban ez is &#xe9;lkiemel&#xe9;s. Csak &#xf6;nmag&#xe1;ban, mint &#xe9;les&#xed;t&#xe9;s nem haszn&#xe1;lj&#xe1;k."/>
</node>
<node CREATED="1465420663125" FOLDED="true" ID="ID_970429780" MODIFIED="1465427291065" TEXT="12. Milyen rank-sz&#x171;r&#x151;ket ismer&#xfc;nk, ismertesse ezek haszn&#xe1;lat&#xe1;t. Milyen el&#x151;nyei vannak a median sz&#x171;r&#x151;nek. Hogyan hat a sz&#x171;r&#xe9;sre a kernelm&#xe9;ret &#xe9;s a kernel t&#xf6;bbsz&#xf6;r&#xf6;s v&#xe9;grehajt&#xe1;sa?">
<node CREATED="1465421812981" ID="ID_1162438696" MODIFIED="1465421813243" TEXT="Rank-sz&#x171;r&#x151;k">
<node CREATED="1465421829829" ID="ID_516289572" MODIFIED="1465421831117" TEXT="A sim&#xed;t&#xf3; sz&#x171;r&#x151;k a zajhat&#xe1;sokat csak sz&#xe9;tosztj&#xe1;k (sz&#xe9;tkenik, ki&#xe1;tlagolj&#xe1;k), ezzel szemben a Rank-sz&#x171;r&#x151;k szinte teljesen k&#xe9;pesek megszabad&#xed;tani a k&#xe9;pet ezekt&#x151;l a pontszer&#x171; hib&#xe1;kt&#xf3;l."/>
<node CREATED="1465421847765" ID="ID_356226693" MODIFIED="1465421848025" TEXT="M&#x171;k&#xf6;d&#xe9;si elv: Vessz&#xfc;k minden pixel meghat&#xe1;rozott k&#xf6;rnyezet&#xe9;t. A pixel &#xe9;s a k&#xf6;rnyezet intenzit&#xe1;s&#xe9;rt&#xe9;keit nagys&#xe1;g szerinti n&#xf6;vekv&#x151; sorrendbe &#xe1;ll&#xed;tjuk. E sorb&#xf3;l vegy&#xfc;k az n-edik elemet; ez lesz a pixel &#xfa;j vil&#xe1;goss&#xe1;g&#xe9;rt&#xe9;ke. Ha n=1, akkor mindig a minim&#xe1;lis &#xe9;rt&#xe9;ket v&#xe1;lasztottuk, ha n=k, akkor mindig a k-adikat. Median sz&#x171;r&#xe9;sr&#x151;l akkor besz&#xe9;l&#xfc;nk, ha n=k/2, vagyis a sorba rendezett vil&#xe1;goss&#xe1;g&#xe9;rt&#xe9;kek k&#xf6;z&#xfc;l &#xe9;ppen a k&#xf6;z&#xe9;ps&#x151;t v&#xe1;lasztjuk. A vizsg&#xe1;lt pixelk&#xf6;rnyezet m&#xe9;rete, alakja sokf&#xe9;lek&#xe9;ppen v&#xe1;laszthat&#xf3;.">
<node CREATED="1465421857389" ID="ID_1931918598" MODIFIED="1465421865187" TEXT="k-adik szomsz&#xe9;d"/>
<node CREATED="1465421871596" ID="ID_914658991" MODIFIED="1465421871843" TEXT="Minimum sz&#x171;r&#x151;"/>
<node CREATED="1465421876261" ID="ID_515777181" MODIFIED="1465421876514" TEXT="Maximum sz&#x171;r&#x151;"/>
<node CREATED="1465421881581" ID="ID_110179729" MODIFIED="1465421882075" TEXT="Median sz&#x171;r&#x151;"/>
</node>
</node>
<node CREATED="1465421891125" ID="ID_1686336396" MODIFIED="1465421896091" TEXT="Median sz&#x171;r&#x151; el&#x151;nyei">
<node CREATED="1465424308225" ID="ID_853915565" MODIFIED="1465424309196" TEXT="Ez a sz&#x171;r&#xe9;s a kiugr&#xf3; zajcs&#xfa;csokat teljesen elt&#x171;nteti, &#xe9;s nem csak elkeni, mint a line&#xe1;ris sz&#x171;r&#xe9;s. (pl. s&#xf3;-bors) Az &#xe9;lek megmaradnak, a hib&#xe1;k elsimulnak."/>
</node>
<node CREATED="1465424317149" ID="ID_791805904" MODIFIED="1465424317781" TEXT="Kernelm&#xe9;ret, kernel t&#xf6;bbsz&#xf6;r&#xf6;s v&#xe9;grehajt&#xe1;sa">
<node CREATED="1465424326917" ID="ID_659728666" MODIFIED="1465424327133" TEXT="&#xc1;ltal&#xe1;ban 3x3, 5x5-&#xf6;s kernelm&#xe9;reteket haszn&#xe1;lnak. Van 7x7-es is, de ez val&#xf3;s id&#x151;ben nem mindig haszn&#xe1;lhat&#xf3;, lass&#xfa;. A nagyobb kernelm&#xe9;rettel v&#xe9;grehajtott sz&#x171;r&#xe9;s hasonl&#xf3; eredm&#xe9;nyt okoz, mint egy kisebb m&#xe9;ret&#x171; kernel egym&#xe1;s ut&#xe1;ni t&#xf6;bbsz&#xf6;ri v&#xe9;grehajt&#xe1;sa, viszont ut&#xf3;bbi gyorsabb. A medi&#xe1;n sz&#x171;r&#x151;t p&#xe9;ld&#xe1;ul sokszor egym&#xe1;s ut&#xe1;n hajtj&#xe1;k v&#xe9;gre, &#xed;gy teljesen elt&#x171;nnek a zajcs&#xfa;csok."/>
</node>
<node CREATED="1465424334254" ID="ID_1234828690" MODIFIED="1465424334506" TEXT="Olimpiai sz&#x171;r&#x151;">
<node CREATED="1465424340070" ID="ID_495543605" MODIFIED="1465424341540" TEXT="Az olimpiai sz&#x171;r&#x151;, a medi&#xe1;n sz&#x171;r&#x151;h&#xf6;z hasonl&#xf3;an, a kiugr&#xf3; intenzit&#xe1;s &#xe9;rt&#xe9;keket zajforr&#xe1;sb&#xf3;l sz&#xe1;rmaz&#xf3;nak tekinti. Egyes sportok olimpiai pontoz&#xe1;si m&#xf3;dszer&#xe9;t k&#xf6;veti. Sorba rendezi a kernel alatti elemeket, majd a k&#xf6;z&#xe9;ps&#x151;t&#x151;l legjobban el&#xfc;t&#x151;ket eldobja. Param&#xe9;terk&#xe9;nt megadhat&#xf3;, hogy a legnagyobb &#xe9;s legkisebb elemekb&#x151;l mennyit hagy figyelmen k&#xed;v&#xfc;l."/>
</node>
</node>
<node CREATED="1465420677196" FOLDED="true" ID="ID_334525379" MODIFIED="1465427293139" TEXT="13. Ismertesse az &#xe9;lkeres&#xe9;s alapvet&#x151; m&#xf3;dszereit: DoG, els&#x151; &#xe9;s m&#xe1;sodik deriv&#xe1;ltak, Canny, Frei &amp; Chen (a konkr&#xe9;t kernelek nem sz&#xfc;ks&#xe9;gesek). Hogyan lehet az &#xe9;lkeres&#xe9;s eredm&#xe9;ny&#xe9;n jav&#xed;tani ha t&#xf6;bb-f&#xe9;le elj&#xe1;r&#xe1;sra is lehet&#x151;s&#xe9;g&#xfc;nk ny&#xed;lik (pl. Sobel)? Hogyan hat a kernelm&#xe9;ret az &#xe9;lkeres&#xe9;sre?">
<node CREATED="1465424360845" ID="ID_513470917" MODIFIED="1465424361205" TEXT="DoG(Gaussok k&#xfc;l&#xf6;nbs&#xe9;ge)">
<node CREATED="1465424379286" ID="ID_81308964" MODIFIED="1465424379486" TEXT="Az eredeti k&#xe9;pen k&#xe9;t k&#xfc;l&#xf6;nb&#xf6;z&#x151; Gauss sz&#x171;r&#xe9;st v&#xe9;gz&#xfc;nk. (Az egyik nagyobb m&#xe9;rt&#xe9;kben sim&#xed;t, mint a m&#xe1;sik.) A v&#xe9;gs&#x151; k&#xe9;pet &#xfa;gy kapjuk meg, hogy az eredeti k&#xe9;pben minden pixelt a k&#xe9;t Gauss sz&#x171;rt k&#xe9;p k&#xfc;l&#xf6;nbs&#xe9;g&#xe9;vel (pixelenk&#xe9;nt term&#xe9;szetesen) helyettes&#xed;t&#xfc;nk. A null&#xe1;tmenetek (ahol a pozit&#xed;v &#xe9;rt&#xe9;kekb&#x151;l negat&#xed;v lesz &#xe9;s ford&#xed;tva) fontosak a sz&#xe1;munkra, ezek gyakorlatilag az &#xe9;lek."/>
</node>
<node CREATED="1465424781950" ID="ID_1027936293" MODIFIED="1465424788460" TEXT="Deriv&#xe1;ltak">
<node CREATED="1465424789213" ID="ID_1327646680" MODIFIED="1465424800778" TEXT="Ha a deriv&#xe1;lt nagy &#x2192; &#xe9;l"/>
<node CREATED="1465424807405" ID="ID_1356849590" MODIFIED="1465424809372" TEXT="Els&#x151; deriv&#xe1;lt: &#xe9;ln&#xe9;l cs&#xfa;cs">
<node CREATED="1465424814558" ID="ID_1074547446" MODIFIED="1465424814767" TEXT="[ X X X ; -1 0 1 ; X X X ]"/>
<node CREATED="1465424820293" ID="ID_660146318" MODIFIED="1465424820877" TEXT="[ -1 X X ; X 0 X ; X X 1 ]"/>
</node>
<node CREATED="1465424827198" ID="ID_662745560" MODIFIED="1465424827491" TEXT="M&#xe1;sodik deriv&#xe1;lt: &#xe9;ln&#xe9;l dupla cs&#xfa;cs">
<node CREATED="1465424832686" ID="ID_1248731882" MODIFIED="1465424832937" TEXT="[ X X X ; -1 2 -1 ; X X X ]"/>
<node CREATED="1465424838502" ID="ID_780180747" MODIFIED="1465424838907" TEXT="[ -1 X X ; X 2 X ; X X -1 ]"/>
</node>
<node CREATED="1465424844533" ID="ID_561396169" MODIFIED="1465424844780" TEXT="X: don&apos;t care"/>
</node>
<node CREATED="1465424855077" ID="ID_1230791113" MODIFIED="1465424855483" TEXT="Canny &#xe9;ldetektor">
<node CREATED="1465424863054" ID="ID_579802799" MODIFIED="1465424910344" TEXT="Els&#x151;sorban l&#xe9;pcs&#x151;s &#xe9;lekre, a k&#xe9;p Gauss zajjal terhelt. L&#xe9;p&#xe9;sek:">
<node CREATED="1465424867797" ID="ID_1612064334" MODIFIED="1465424873643" TEXT="1. Gauss sz&#x171;r&#xe9;s"/>
<node CREATED="1465424874350" ID="ID_1822288997" MODIFIED="1465424881363" TEXT="2.Derivat&#xed;v sz&#x171;r&#xe9;s">
<node CREATED="1465424887262" ID="ID_1053566161" MODIFIED="1465424891116" TEXT=" 2/4 ir&#xe1;nyban"/>
</node>
<node CREATED="1465424882349" ID="ID_1555429507" MODIFIED="1465424907548" TEXT="3. Nem maximumok t&#xf6;rl&#xe9;se (gradiens ir&#xe1;nyban)"/>
<node CREATED="1465424912598" ID="ID_1549328835" MODIFIED="1465424926444" TEXT="4.K&#xfc;sz&#xf6;b&#xf6;z&#xe9;s er&#x151;s &#xe9;lek/gyenge &#xe9;lek"/>
</node>
<node CREATED="1465424933998" ID="ID_981662446" MODIFIED="1465424969929" TEXT="Pontatlanabb eredm&#xe9;ny, nem szubpixeles. K&#xfc;nny&#x171; megtal&#xe1;lni rajta az &#xe9;leket, sokan haszn&#xe1;lj&#xe1;k."/>
</node>
<node CREATED="1465424974670" ID="ID_975802392" MODIFIED="1465424978926" TEXT="Frei &amp; Chen">
<node CREATED="1465424985294" ID="ID_966264553" MODIFIED="1465424985542" TEXT="T&#xf6;bbf&#xe9;le &#xe9;lkeres&#xe9;si m&#xf3;dszert &#xe1;tlagol. Kev&#xe9;sb&#xe9; &#xe9;rz&#xe9;keny a zajokra mint m&#xe1;s &#xe9;lkeres&#x151; elj&#xe1;r&#xe1;sok. &#xd6;sszesen 9 konvol&#xfa;ci&#xf3;s ablakot/kernelt haszn&#xe1;l(3x3 m&#xe9;ret), ezek a legfontosabb ir&#xe1;ny&#xfa; kernelek."/>
</node>
<node CREATED="1465424993166" ID="ID_297978773" MODIFIED="1465424993363" TEXT="T&#xf6;bbf&#xe9;le &#xe9;lkeres&#xe9;si elj&#xe1;r&#xe1;s Sobel">
<node CREATED="1465424998501" ID="ID_1680157892" MODIFIED="1465424998708" TEXT="T&#xf6;bb m&#xf3;dszer eredm&#xe9;ny&#xe9;b&#x151;l:">
<node CREATED="1465425004332" ID="ID_1129015990" MODIFIED="1465425004604" TEXT="- maximum kiv&#xe1;laszt&#xe1;sa"/>
<node CREATED="1465425010526" ID="ID_1627540007" MODIFIED="1465425010787" TEXT="- eredm&#xe9;nyek &#xf6;sszegz&#xe9;se"/>
<node CREATED="1465425016718" ID="ID_1546239667" MODIFIED="1465425017125" TEXT="- eredm&#xe9;nyek norm&#xe1;ja (n&#xe9;gyzet&#xf6;sszegb&#x151;l vont n&#xe9;gyzetgy&#xf6;k)"/>
<node CREATED="1465425024350" ID="ID_825485521" MODIFIED="1465425024774" TEXT="Pl: adot k&#xe9;pen horizont&#xe1;lis &#xe9;s vertik&#xe1;lis deriv&#xe1;l&#xe1;s, majd ezek maximum&#xe1;nak meghat&#xe1;roz&#xe1;sa, v&#xe9;g&#xfc;l a v&#xe1;lasztott &#xf6;sszegz&#xe9;si m&#xf3;dszer haszn&#xe1;lata."/>
</node>
</node>
<node CREATED="1465425032126" ID="ID_1437944052" MODIFIED="1465425032325" TEXT="Kernelm&#xe9;ret &#xe9;s az &#xe9;lkeres&#xe9;s">
<node CREATED="1465425040094" ID="ID_1604494999" MODIFIED="1465425040251" TEXT="A kernelm&#xe9;ret f&#xfc;gg a keresend&#x151; objektum m&#xe9;ret&#xe9;t&#x151;l. A kernelm&#xe9;ret cs&#xf6;kken&#xe9;se lehet&#x151;s&#xe9;get ad az apr&#xf3;bb t&#xe1;rgyak &#xe9;leinek meghat&#xe1;roz&#xe1;s&#xe1;ra is. N&#xf6;veked&#xe9;s&#xe9;vel az apr&#xf3; t&#xe1;rgyak elt&#x171;nnek az &#xe9;ldetekt&#xe1;l&#xe1;s sor&#xe1;n."/>
</node>
</node>
<node CREATED="1465420684476" FOLDED="true" ID="ID_177948511" MODIFIED="1465427295160" TEXT="14. Milyen jelleg&#x171; geometriai torz&#xed;t&#xe1;sok terhelhetik a k&#xe9;pet? Ismertesse a perspekt&#xed;v ill. a radi&#xe1;lis &#xe9;s tangenci&#xe1;lis torz&#xed;t&#xe1;s hat&#xe1;s&#xe1;t &#xe9;s kezel&#xe9;s&#xe9;nek m&#xf3;dj&#xe1;t. Hogyan tudjuk vissza&#xe1;ll&#xed;tani az eredeti ar&#xe1;nyokat egy ferde kamer&#xe1;val k&#xf6;vetett s&#xed;kbeli k&#xe9;pen?">
<node CREATED="1465425052846" ID="ID_1315451400" MODIFIED="1465425053094" TEXT="Perspekt&#xed;v">
<node CREATED="1465425073054" ID="ID_312408868" MODIFIED="1465425073534" TEXT="Gyakorlatban: Ha egy &#xe9;p&#xfc;letet az utc&#xe1;n &#xe1;llva fot&#xf3;zunk, gyakran azt tapasztaljuk, hogy a k&#xe9;pen a f&#xfc;gg&#x151;leges vonalak &#xf6;sszefutnak. Ez a perspektivikus torz&#xed;t&#xe1;s, ami &#xe1;ltal&#xe1;ban hib&#xe1;nak sz&#xe1;m&#xed;t. M&#xe9;g er&#x151;teljesebb a hat&#xe1;s, ha nagy l&#xe1;t&#xf3;sz&#xf6;g&#x171; objekt&#xed;vvel, viszonylag k&#xf6;zelr&#x151;l f&#xe9;nyk&#xe9;pez&#xfc;nk. B&#xe1;r az ut&#xf3;munka sor&#xe1;n ezt a hib&#xe1;t elvben korrig&#xe1;lni lehet, de az &#xfa;jabb torzul&#xe1;sokkal j&#xe1;rhat. Ez&#xe9;rt a legjobb a felv&#xe9;telkor elv&#xe9;gezni a korrekci&#xf3;t. A g&#xe9;p nem tudja j&#xf3;l elk&#xfc;l&#xf6;n&#xed;teni az el&#x151;l &#xe9;s h&#xe1;tul l&#xe9;v&#x151; dolgokat."/>
</node>
<node CREATED="1465425056869" ID="ID_1419131463" MODIFIED="1465425061940" TEXT="Radi&#xe1;lis (hord&#xf3;)">
<node CREATED="1465425080014" ID="ID_1311155297" MODIFIED="1465425080266" TEXT="Ezt a fajta torz&#xed;t&#xe1;st az okozza, hogy az eszk&#xf6;z&#xf6;kben az olcs&#xf3;bb kivitelezhet&#x151;s&#xe9;g miatt ide&#xe1;lis parabolikus lencs&#xe9;k helyett g&#xf6;mbszer&#x171; lencs&#xe9;ket alkalmaznak, valamint a k&#xe9;palkot&#xf3; &#xe1;ltal&#xe1;ban nem a lencse f&#xf3;kuszpontj&#xe1;ban helyezkedik el. Ez a torz&#xed;t&#xe1;s okozza az &#xfa;n. hord&#xf3;, vagy halszem effektust. A lencse k&#xf6;zep&#xe9;t&#x151;l t&#xe1;volabb es&#x151; f&#xe9;nysugarak jobban elhajlanak, mint a lencse k&#xf6;zep&#xe9;n. Ez olcs&#xf3; webkamer&#xe1;k eset&#xe9;n j&#xf3;l megfigyelhet&#x151;, dr&#xe1;ga, cs&#xfa;cskateg&#xf3;ri&#xe1;s eszk&#xf6;z&#xf6;kn&#xe9;l igyekeznek a matematikailag ide&#xe1;list jobban megk&#xf6;zel&#xed;t&#x151; lencs&#xe9;t el&#x151;&#xe1;ll&#xed;tani, illetve a k&#xe9;palkot&#xf3;t a f&#xf3;kuszpontba helyezni. A radi&#xe1;lis torz&#xed;t&#xe1;s a k&#xe9;p k&#xf6;zep&#xe9;n 0, &#xe9;s a k&#xe9;p sz&#xe9;lei fel&#xe9; haladva n&#xf6;vekszik."/>
</node>
<node CREATED="1465425063230" ID="ID_828860070" MODIFIED="1465425065732" TEXT="Tangenci&#xe1;lis">
<node CREATED="1465425272838" ID="ID_1388277722" MODIFIED="1465425273180" TEXT="Ez a fajta torz&#xed;t&#xe1;s a gy&#xe1;rt&#xe1;s hib&#xe1;ib&#xf3;l ad&#xf3;dik, a lencse nem p&#xe1;rhuzamos a k&#xe9;palkot&#xf3;val. Ez a torz&#xed;t&#xe1;s k&#xe9;t param&#xe9;terrel adhat&#xf3; meg."/>
</node>
</node>
<node CREATED="1465420696968" FOLDED="true" ID="ID_1337219711" MODIFIED="1465427296456" TEXT="15. Milyen interpol&#xe1;ci&#xf3;s technik&#xe1;kat ismer? Ismertesse a legk&#xf6;zelebbi szomsz&#xe9;d, a biline&#xe1;ris &#xe9;s a bik&#xf6;b&#xf6;s interpol&#xe1;ci&#xf3;s technik&#xe1;k alapelv&#xe9;t (k&#xe9;pletek nem sz&#xfc;ks&#xe9;gesek).">
<node CREATED="1465425280190" ID="ID_764317971" MODIFIED="1465425280519" TEXT="Ebben az &#xe9;rtelemben az adott mennyis&#xe9;g&#x171; k&#xe9;ppontb&#xf3;l nagyobb (vagy kisebb) felbont&#xe1;s&#xfa;, t&#xf6;bb (vagy kevesebb) k&#xe9;ppontot tartalmaz&#xf3; k&#xe9;pet &#xe1;ll&#xed;tunk el&#x151;. Motiv&#xe1;lhatja p&#xe9;ld&#xe1;ul a k&#xe9;p nagy&#xed;t&#xe1;s&#xe1;nak ig&#xe9;nye. Nagy&#xed;t&#xe1;sn&#xe1;l egy&#xe9;rtelm&#x171;en hi&#xe1;nyz&#xf3; inform&#xe1;ci&#xf3;t p&#xf3;tolunk, kicsiny&#xed;t&#xe9;skor viszont a pixelek elhelyezked&#xe9;s&#xe9;nek v&#xe1;ltoz&#xe1;sa miatt sz&#xfc;ks&#xe9;ges interpol&#xe1;lni (azonos k&#xe9;ptartalmat kevesebb, jellemz&#x151;en m&#xe1;s poz&#xed;ci&#xf3;ba ker&#xfc;l&#x151; adatponttal &#xe1;br&#xe1;zolunk)."/>
<node CREATED="1465425292622" ID="ID_404013127" MODIFIED="1465425293172" TEXT="Legk&#xf6;zelebbi szomsz&#xe9;d: A nagy&#xed;tott k&#xe9;p egyes pixeleinek &#xe9;rt&#xe9;keit az alapj&#xe1;n hat&#xe1;rozzuk meg, hogy melyik eredeti pixelhez vannak legk&#xf6;zelebb, azzal tessz&#xfc;k &#x151;ket egyenl&#x151;v&#xe9;. Pixeles k&#xe9;pet eredm&#xe9;nyez."/>
<node CREATED="1465425431702" ID="ID_1151925274" MODIFIED="1465425432196" TEXT="Biline&#xe1;ris: Az &#xfa;j pixelek &#xe9;rt&#xe9;k&#xe9;t mindk&#xe9;t ir&#xe1;nyban line&#xe1;risan interpol&#xe1;ljuk (n&#xe9;v innen), azaz egyenest illeszt&#xfc;nk a k&#xe9;t k&#xf6;zeli eredeti pixel &#xe9;rt&#xe9;k k&#xf6;z&#xe9;, &#xe9;s a keresett &#xe9;rt&#xe9;k az egyenes pixelnek megfelel&#x151; hely&#xe9;n felvett &#xe9;rt&#xe9;ke lesz. Az egyenesilleszt&#xe9;st teh&#xe1;t a legk&#xf6;zelebbi 4 pixel alapj&#xe1;n hajtjuk v&#xe9;gre. Furcsa artifact-okat tud okozni, viszont nagyon gyors. Grafikus k&#xe1;rty&#xe1;k ezt t&#xe1;mogatj&#xe1;k."/>
<node CREATED="1465425648141" ID="ID_1208606440" MODIFIED="1465425648900" TEXT="L&#xe1;nczos (j&#xf3;l k&#xf6;zel&#xed;ti a vonalakat)"/>
<node CREATED="1465425655166" ID="ID_1218655099" MODIFIED="1465425655508" TEXT="Komplex megold&#xe1;sok">
<node CREATED="1465425664814" ID="ID_818702244" MODIFIED="1465425665057" TEXT="G&#xf6;rbeilleszt&#xe9;s"/>
<node CREATED="1465425676318" ID="ID_364825008" MODIFIED="1465425676988" TEXT="Scale 2x, 3x, 4x"/>
<node CREATED="1465425678326" ID="ID_1698443144" MODIFIED="1465425680772" TEXT="Frakt&#xe1;l"/>
</node>
</node>
<node CREATED="1465425700534" FOLDED="true" ID="ID_1930336128" MODIFIED="1465427298857" TEXT="16. Mit jelent a k&#xe9;pi matematika? Milyen m&#x171;veleteket alkalmazhatunk a gyakorlatban? Adja meg, hogy melyik elj&#xe1;r&#xe1;s milyen feladatra haszn&#xe1;lhat&#xf3;.">
<node CREATED="1465425723286" ID="ID_1813521902" MODIFIED="1465425724069" TEXT="K&#xe9;pi matematika eset&#xe9;n v&#xe9;gezhet&#xfc;nk m&#x171;veleteket k&#xe9;p-&#xe9;rt&#xe9;k vagy k&#xe9;p-k&#xe9;p k&#xf6;z&#xf6;tt."/>
<node CREATED="1465425737238" ID="ID_1839957476" MODIFIED="1465425738229" TEXT="Lehets&#xe9;ges m&#x171;veletek">
<node CREATED="1465425756358" ID="ID_1858427156" MODIFIED="1465425756766" TEXT="&#xf6;sszead&#xe1;s/kivon&#xe1;s/&#xe1;tlagol&#xe1;s"/>
<node CREATED="1465425776630" ID="ID_915346187" MODIFIED="1465425777058" TEXT="szorz&#xe1;s/oszt&#xe1;s/normaliz&#xe1;l&#xe1;s"/>
<node CREATED="1465425782278" ID="ID_1943763935" MODIFIED="1465425782675" TEXT="maximum/minimum"/>
<node CREATED="1465425788566" ID="ID_865302001" MODIFIED="1465425790140" TEXT="logikai m&#x171;veletek (f&#x151;leg bin&#xe1;ris k&#xe9;pekn&#xe9;l)"/>
</node>
<node CREATED="1465425747998" ID="ID_1199758620" MODIFIED="1465425748283" TEXT="Gyakorlati alkalmaz&#xe1;s">
<node CREATED="1465425798542" ID="ID_774870990" MODIFIED="1465425798908" TEXT="K&#xe9;p-&#xe9;rt&#xe9;k esetben az &#xf6;sszead&#xe1;s f&#xe9;nyer&#x151; &#xe1;ll&#xed;t&#xe1;st jelent, a szorz&#xe1;s brightness/contrast &#xe1;ll&#xed;t&#xe1;st."/>
<node CREATED="1465425807310" ID="ID_1944505770" MODIFIED="1465425807800" TEXT="A szorz&#xe1;s m&#x171;velet haszn&#xe1;lhat&#xf3; text&#xfa;r&#xe1;z&#xe1;sra (maszkol&#xe1;sra)."/>
<node CREATED="1465425815142" ID="ID_308546982" MODIFIED="1465425815556" TEXT="Az &#xf6;sszead&#xe1;s/&#xe1;tlagol&#xe1;s haszn&#xe1;lhat&#xf3; zajcs&#xf6;kkent&#xe9;sre."/>
<node CREATED="1465425821726" ID="ID_947315211" MODIFIED="1465425823187" TEXT="A kivon&#xe1;s haszn&#xe1;lhat&#xf3; k&#xfc;l&#xf6;nbs&#xe9;gk&#xe9;pz&#xe9;sre, a h&#xe1;tt&#xe9;r elt&#xe1;vol&#xed;t&#xe1;s&#xe1;ra (mozg&#xf3;/elmozdult objektumok keres&#xe9;s&#xe9;re)."/>
</node>
</node>
</node>
<node CREATED="1465399065088" FOLDED="true" ID="ID_1333460539" MODIFIED="1465427448000" TEXT="3. Frekvenciatartom&#xe1;nyban">
<node CREATED="1465425999526" FOLDED="true" ID="ID_1408204921" MODIFIED="1465427300167" TEXT="17. Mutassa be, hogy mit jelent egy k&#xe9;p frekvenciataere, hogyan kell &#xe9;rtelmezni? (K&#xe9;pletekre nincs sz&#xfc;ks&#xe9;g). Hogyan hat egy objektum poz&#xed;ci&#xf3;ja &#xe9;s orient&#xe1;ci&#xf3;ja a frekvenciatartom&#xe1;nybeli k&#xe9;pre?">
<node CREATED="1465426146558" ID="ID_1336984055" MODIFIED="1465426146878" TEXT="A k&#xe9;p frekvenciatere megadja azon komplex exponenci&#xe1;lis komponensek egy&#xfc;tthat&#xf3;j&#xe1;t, amelyekb&#x151;l a k&#xe9;p el&#x151;&#xe1;ll&#xed;that&#xf3;. K&#xe9;t dimenzi&#xf3;s k&#xe9;p eset&#xe9;n a frekvenciatartom&#xe1;ny is k&#xe9;t dimenzi&#xf3;s lesz. Mivel egy k&#xe9;p diszkr&#xe9;t pontokb&#xf3;l &#xe1;ll, ez&#xe9;rt a frekvenciatartom&#xe1;ny periodikus lesz, azonban ennek csak az els&#x151; peri&#xf3;dus&#xe1;t &#xe1;br&#xe1;zoljuk, mivel a t&#xf6;bbi nem tartalmaz plusz inform&#xe1;ci&#xf3;t. Tov&#xe1;bb&#xe1; mivel a pixelek a k&#xe9;pen nyilv&#xe1;nval&#xf3;an val&#xf3;s &#xe9;rt&#xe9;k&#x171;ek, ez&#xe9;rt a frekvenciatartom&#xe1;nyban komplex konjug&#xe1;lt p&#xe1;rokat kell kapnunk. Egy k&#xe9;p frekvenciater&#xe9;ben az egyes komponensekhez hasonl&#xf3;an az egy dimenzi&#xf3;s esethez k&#xe9;t jellemz&#x151; tartozik: a f&#xe1;zis &#xe9;s az amplit&#xfa;d&#xf3;. L&#xe9;nyeges k&#xfc;l&#xf6;nbs&#xe9;g azonban, hogy egy komponenst m&#xe1;r k&#xe9;t koordin&#xe1;ta azonos&#xed;tja (k &#xe9;s l). Ezek a koordin&#xe1;t&#xe1;k hat&#xe1;rozz&#xe1;k meg a k&#xe9;ptartom&#xe1;nyban a szinuszos hull&#xe1;mok orient&#xe1;ci&#xf3;j&#xe1;t (ha az egyik nulla, akkor tengelyir&#xe1;ny&#xfa;), illetve peri&#xf3;dus&#xe1;t. Eltol&#xe1;s a k&#xe9;ptartom&#xe1;nyban nincs hat&#xe1;ssal az amplit&#xfa;d&#xf3;karakterisztik&#xe1;ra a frekvenciatartom&#xe1;nyban (csak a f&#xe1;zisra). A forgat&#xe1;s m&#xe1;r hat&#xe1;ssal van mind a k&#xe9;t jellemz&#x151;re, de az amplit&#xfa;d&#xf3; karakterisztika eset&#xe9;n egy k&#xe9;ptartom&#xe1;nybeli forgat&#xe1;s az amplit&#xfa;d&#xf3; karakterisztik&#xe1;ban is egy forgat&#xe1;sk&#xe9;nt jelenik meg."/>
</node>
<node CREATED="1465426008702" FOLDED="true" ID="ID_1190248200" MODIFIED="1465427302304" TEXT="18. Mit jelent az FFT? Hogyan m&#x171;k&#xf6;dik az algoritmus? Mi a DCT, miben k&#xfc;l&#xf6;nb&#xf6;zik a DFT-t&#x151;l? Hogyan m&#x171;k&#xf6;dik a FCT? Mi&#xe9;rt lehet j&#xf3;l alkalmazni ezt az algoritmust t&#xf6;m&#xf6;r&#xed;t&#xe9;s sor&#xe1;n &#xe9;s hogyan?">
<node CREATED="1465426870174" ID="ID_1805439364" MODIFIED="1465426879052" TEXT="FFT: Fast Fourier Transformation">
<node CREATED="1465426945566" ID="ID_949944062" MODIFIED="1465426945868" TEXT="lgoritmus m&#x171;k&#xf6;d&#xe9;se: 2N m&#xe9;ret&#x171; adathalmazon m&#x171;k&#xf6;dik. L&#xe9;nyeg&#xe9;ben a probl&#xe9;m&#xe1;t mindig megfelezi a p&#xe1;ros &#xe9;s p&#xe1;ratlan komponensek ment&#xe9;n, eg&#xe9;szen addig, am&#xed;g m&#xe1;r csak egy p&#xe1;r marad, amire m&#xe1;r trivi&#xe1;lisan sz&#xe1;molhat&#xf3; a feladat. Az &#xed;gy kapott eredm&#xe9;nyeken azonban minden fokozat v&#xe9;g&#xe9;n pillang&#xf3; m&#x171;veleteket kell v&#xe9;gezni. K&#xe9;t dimenzi&#xf3;s esetben el&#x151;sz&#xf6;r v&#xed;zszintes, majd f&#xfc;gg&#x151;leges ir&#xe1;nyban. Megjegyz&#xe9;s az &#xe9;rtelmez&#xe9;shez: Fourirer transzform&#xe1;lni csak periodikus jeleket lehet, ezt &#xfa;gy biztos&#xed;tjuk, hogy a k&#xe9;pet v&#xe9;gtelenszer ism&#xe9;telj&#xfc;k az x &#xe9;s y ir&#xe1;nyokban (puszt&#xe1;n elm&#xe9;leti &#xe9;rtelemben, nyilv&#xe1;n)."/>
</node>
<node CREATED="1465426885030" ID="ID_363192534" MODIFIED="1465426885644" TEXT="DCT(Discrete Cosine Transform) vs DFT(Discrete Fourier Transform):">
<node CREATED="1465426937831" ID="ID_875728699" MODIFIED="1465426938093" TEXT="Koszinusz transzform&#xe1;ci&#xf3; eset&#xe9;n olyan, mintha a k&#xe9;p t&#xfc;k&#xf6;rk&#xe9;pe lenne a k&#xe9;p ut&#xe1;n x &#xe9;s y ir&#xe1;nyban, ennek megfelel&#x151;en, nincsenek olyan hirtelen ugr&#xe1;sok, mint DFT eset&#xe9;n (ez energiat&#xf6;m&#xf6;r&#xed;t&#xe9;s, kisebb lesz a spektrum integr&#xe1;lja). Tov&#xe1;bbi el&#x151;nye, hogy val&#xf3;s &#xe9;rt&#xe9;keket kapunk, jobb t&#xf6;m&#xf6;r&#xed;t&#xe9;st tesz lehet&#x151;v&#xe9; (kevesebb nagyfrekvenci&#xe1;s komponens a sz&#xe9;lek miatt), illetve egyszer&#x171;bb is."/>
</node>
<node CREATED="1465426896062" ID="ID_422693896" MODIFIED="1465426896454" TEXT="FCT: Fast Cosine Transform">
<node CREATED="1465426917278" ID="ID_609020248" MODIFIED="1465426917717" TEXT="1. Szimmetrikus f&#xfc;ggv&#xe9;ny"/>
<node CREATED="1465426923999" ID="ID_1673429706" MODIFIED="1465426924244" TEXT="2. DFT(2N)"/>
<node CREATED="1465426929431" ID="ID_1723323385" MODIFIED="1465426929737" TEXT="3. Pozit&#xed;v tartom&#xe1;ny"/>
</node>
<node CREATED="1465426903622" ID="ID_1124730956" MODIFIED="1465426904012" TEXT="Adatt&#xf6;m&#xf6;r&#xed;t&#xe9;s">
<node CREATED="1465426908798" ID="ID_1814388706" MODIFIED="1465426909124" TEXT="J&#xf3;val kisebb intenzit&#xe1;s&#xfa; nagyfrekvenci&#xe1;s komponensek, mivel nincs hirtelen &#xe1;tmenet a k&#xe9;p sz&#xe9;lein&#xe9;l, mint DFT eset&#xe9;n. (kevesebb inform&#xe1;ci&#xf3;t veszt&#xfc;nk el a nagyfrekvenci&#xe1;s komponensek eldob&#xe1;s&#xe1;val)"/>
</node>
</node>
<node CREATED="1465426017157" FOLDED="true" ID="ID_448623318" MODIFIED="1465427303984" TEXT="19. Hogyan lehet frekvenciatartom&#xe1;nyban sz&#x171;r&#xe9;st v&#xe9;gezni? Mit jelent az alul- &#xe9;s fel&#xfc;l- &#xe1;tereszt&#x151; sz&#x171;r&#xe9;s? Milyen jelleg&#x171; zajok kisz&#x171;r&#xe9;s&#xe9;re van lehet&#x151;s&#xe9;g frekvenciatartom&#xe1;nyban, &#xe9;s hogyan?">
<node CREATED="1465426972726" ID="ID_1768525025" MODIFIED="1465426972961" TEXT="Sz&#x171;r&#xe9;s frekvenciatartom&#xe1;nyban: Az egyes frekvenciatartom&#xe1;nybeli komponenseket meghat&#xe1;rozott &#xe9;rt&#xe9;kekkel szorozzuk meg, att&#xf3;l f&#xfc;gg&#x151;en, hogy milyen ezeknek az &#xe9;rt&#xe9;keknek az eloszl&#xe1;sa (milyen frekvenci&#xe1;kon csillap&#xed;t, &#xe1;tereszt, er&#x151;s&#xed;t) az egyes sz&#x171;r&#x151;ket csoportos&#xed;thatjuk. A sz&#x171;r&#xe9;s frekvenciatartom&#xe1;nyban egy egyszer&#x171; szorz&#xe1;ssal val&#xf3;s&#xed;that&#xf3; meg, ellenben a k&#xe9;ptartom&#xe1;nnyal, ahol az konvol&#xfa;ci&#xf3;val sz&#xe1;m&#xed;that&#xf3;."/>
<node CREATED="1465426993798" ID="ID_964965481" MODIFIED="1465426994989" TEXT="Alul&#xe1;tereszt&#x151; sz&#x171;r&#x151;: Ebben az esetben alacsonyabb frekvenci&#xe1;s komponensek s&#xfa;lya nagyobb, mint a magasabb frekvenci&#xe1;sok&#xe9;."/>
<node CREATED="1465427005799" ID="ID_1918460441" MODIFIED="1465427006068" TEXT="Fel&#xfc;l&#xe1;tereszt&#x151; sz&#x171;r&#x151;: Ebben az esetben magasabb frekvenci&#xe1;s komponensek s&#xfa;lya nagyobb, mint az alacsonyabb frekvenci&#xe1;sok&#xe9;."/>
<node CREATED="1465427022294" ID="ID_1102390834" MODIFIED="1465427022518" TEXT="Zajsz&#x171;r&#xe9;s frekvenciatartom&#xe1;nyban: Periodikus zajok nagyon j&#xf3;l kisz&#x171;rhet&#x151;k, mivel frekvenciatartom&#xe1;nyban j&#xf3;l k&#xf6;r&#xfc;lhat&#xe1;rolhat&#xf3; komponensek okozz&#xe1;k &#x151;ket. Elm&#xe9;letileg ez megoldhat&#xf3; lenne k&#xe9;ptartom&#xe1;nyban is, de t&#xfa;l k&#xf6;lts&#xe9;ges lenne, mert nagyon nagy kernel kellene hozz&#xe1; a sz&#x171;r&#x151; jellege miatt (lyuksz&#x171;r&#x151;). Alul&#xe1;tereszt&#x151; sz&#x171;r&#x151;vel a nagyfrekvenci&#xe1;s zaj is j&#xf3;l kisz&#x171;rhet&#x151;. Fel&#xfc;l&#xe1;tereszt&#x151; sz&#x171;r&#x151;vel az &#xe9;lek, k&#xf6;rvonalak j&#xf3;l meghat&#xe1;rozhat&#xf3;k."/>
</node>
<node CREATED="1465426034238" FOLDED="true" ID="ID_118652277" MODIFIED="1465427304656" TEXT="20. Ismertesse a konvol&#xfa;ci&#xf3; &#xe9;s a frekvenciatartom&#xe1;nybeli m&#x171;veletek kapcsolat&#xe1;t. Mit jelent a dekonvol&#xfa;ci&#xf3;? Mit jelent a Wiener dekonvol&#xfa;ci&#xf3; &#xe9;s mikor haszn&#xe1;ljuk?">
<node CREATED="1465427059086" ID="ID_628258693" MODIFIED="1465427059909" TEXT="Konvol&#xfa;ci&#xf3; a frekvenciatartom&#xe1;nyban: A sz&#x171;r&#xe9;s frekvenciatartom&#xe1;nyban egy egyszer&#x171; szorz&#xe1;ssal val&#xf3;s&#xed;that&#xf3; meg, ellenben a k&#xe9;ptartom&#xe1;nnyal, ahol az konvol&#xfa;ci&#xf3;val sz&#xe1;m&#xed;that&#xf3;."/>
<node CREATED="1465427069806" ID="ID_1053773499" MODIFIED="1465427070078" TEXT="Dekonvol&#xfa;ci&#xf3;: A dekonvol&#xfa;ci&#xf3; sor&#xe1;n adott egy k&#xe9;p, amely valamely kernellel v&#xe9;gzett konvol&#xfa;ci&#xf3; eredm&#xe9;nye. A c&#xe9;l az eredeti k&#xe9;p meghat&#xe1;roz&#xe1;sa. A feladathoz elengedhetetlen a kernel nagys&#xe1;grendi ismerete vagy sejt&#xe9;se. Tipikus felhaszn&#xe1;l&#xe1;si ter&#xfc;let: def&#xf3;kusz&#xe1;lt k&#xe9;p &#xe9;les&#xed;t&#xe9;se."/>
<node CREATED="1465427097879" ID="ID_294705036" MODIFIED="1465427098119" TEXT="Wiener-dekonvol&#xfa;ci&#xf3;: Annyiban nehezebb probl&#xe9;m&#xe1;t old meg, hogy felt&#xe9;telezi, hogy a konvol&#xfa;ci&#xf3; sor&#xe1;n el&#x151;&#xe1;ll&#xf3; k&#xe9;p zajjal terhelt. Teh&#xe1;t nem a konvol&#xfa;ci&#xf3; eredm&#xe9;ny&#xe9;n dolgozik, hanem annak egy addit&#xed;v zajjal terhelt v&#xe1;ltozat&#xe1;n. Egy frekvenciatartom&#xe1;nybeli elj&#xe1;r&#xe1;sr&#xf3;l van sz&#xf3;, amely azokon a frekvenci&#xe1;kon jobban csillap&#xed;t, ahol a jel-zaj viszony rosszabb."/>
</node>
</node>
<node CREATED="1465399072127" ID="ID_928763801" MODIFIED="1465427470862" TEXT="4. Bin&#xe1;ris k&#xe9;pek">
<node CREATED="1465427218094" FOLDED="true" ID="ID_954531938" MODIFIED="1465435111451" TEXT="21. Mit jelent a bin&#xe1;ris k&#xe9;p? Mit jelent a k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s? Milyen lehet&#x151;s&#xe9;geink vannak? Mit jelent a dupla-k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s?">
<node CREATED="1465428730839" ID="ID_1585066497" MODIFIED="1465428731150" TEXT="Bin&#xe1;ris k&#xe9;p: Minden pixel csak k&#xe9;t &#xe9;rt&#xe9;ket vehet fel (megjelen&#xed;t&#xe9;s tipikusan fekete/feh&#xe9;r sz&#xed;nnel). A pixelekhez hozz&#xe1;rendelend&#x151; &#xe9;rt&#xe9;ket valamilyen k&#xe9;pi tulajdons&#xe1;g (f&#xe9;nyer&#x151;, sz&#xed;nintenzit&#xe1;s stb.) k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s&#xe9;vel hat&#xe1;rozzuk meg."/>
<node CREATED="1465428745719" ID="ID_280015807" MODIFIED="1465428746134" TEXT="K&#xfc;sz&#xf6;b&#xf6;z&#xe9;s (thresholding): A legegyszer&#x171;bb elj&#xe1;r&#xe1;s, aminek seg&#xed;ts&#xe9;g&#xe9;vel egy szegment&#xe1;l&#xe1;st (objektum(ok) &#xe9;s a h&#xe1;tt&#xe9;r sz&#xe9;tv&#xe1;laszt&#xe1;sa) v&#xe9;gezhet&#xfc;nk. Egy tulajdons&#xe1;ghoz hozz&#xe1;rendel&#xfc;nk k&#xfc;sz&#xf6;b&#xe9;rt&#xe9;ket, majd a vizsg&#xe1;land&#xf3; k&#xe9;p minden pixel&#xe9;n v&#xe9;gigmegy&#xfc;nk &#xe9;s &#xf6;sszehasonl&#xed;tjuk az &#xe9;rt&#xe9;keket. A v&#xe9;geredm&#xe9;ny egy bin&#xe1;ris k&#xe9;p. P&#xe9;ld&#xe1;ul f&#xe9;nyintenzit&#xe1;s alapj&#xe1;n bizonyos &#xe9;rt&#xe9;k f&#xf6;l&#xf6;tt &#xe9;s alatt sz&#xe9;tv&#xe1;lasztom a k&#xe9;pet."/>
<node CREATED="1465428868759" ID="ID_1997883232" MODIFIED="1465428869204" TEXT="Szegment&#xe1;l&#xe1;si lehet&#x151;s&#xe9;gek">
<node CREATED="1465428877727" ID="ID_1604328436" MODIFIED="1465428878037" TEXT="Hisztogram alap&#xfa; -&gt; K&#xdc;SZ&#xd6;B&#xd6;Z&#xc9;S"/>
<node CREATED="1465428885399" ID="ID_872057790" MODIFIED="1465428885780" TEXT="Oszt&#xe1;lyoz&#xe1;s alap&#xfa;">
<node CREATED="1465428889983" ID="ID_410430544" MODIFIED="1465428896084" TEXT="Sz&#xed;nek"/>
<node CREATED="1465428897375" ID="ID_1380862259" MODIFIED="1465428904509" TEXT="Form&#xe1;k: pl.:egyenes, k&#xf6;r"/>
</node>
<node CREATED="1465428907647" ID="ID_1407511991" MODIFIED="1465428914253" TEXT="K&#xf6;rnyezetf&#xfc;gg&#x151;">
<node CREATED="1465428914927" ID="ID_1516402863" MODIFIED="1465428922133" TEXT="Lok&#xe1;lis: inhmoog&#xe9;n h&#xe1;tt&#xe9;r eset&#xe9;n"/>
</node>
</node>
<node CREATED="1465428930615" ID="ID_1762416264" MODIFIED="1465428952381" TEXT="Dupla k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s">
<node CREATED="1465428952799" ID="ID_1051009077" MODIFIED="1465428959725" TEXT="M&#xe1;s n&#xe9;ven hiszter&#xe9;zises k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s. A probl&#xe9;ma az, hogy elk&#xfc;l&#xf6;n&#xed;tend&#x151; objektumok mellett m&#xe1;s hasonl&#xf3; (kin&#xe9;zet&#x171;, sz&#xed;n&#x171; stb) objektumok is vannak, melyek k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s ut&#xe1;n megmaradnak. Ez&#xe9;rt kett&#x151; k&#xfc;sz&#xf6;b haszn&#xe1;lat&#xe1;val l&#xe9;trehozunk k&#xe9;t k&#xe9;pet, melyet azt&#xe1;n &#xc9;S kapcsolatba helyez&#xfc;nk."/>
<node CREATED="1465429089407" ID="ID_121251514" MODIFIED="1465429091845" TEXT="P&#xe9;lda">
<node CREATED="1465429092591" ID="ID_1995506028" MODIFIED="1465429094294" TEXT="1. Eredeti k&#xe9;p 2. Eredeti k&#xe9;p k&#xfc;sz&#xf6;b&#xf6;z&#xe9;se 3. Eredeti k&#xe9;pen &#xe9;lkeres&#xe9;s 4. &#xc9;lkeresett k&#xe9;p k&#xfc;sz&#xf6;b&#xf6;z&#xe9;se 5. &#x201e;4&#x201d; maszkol&#xe1;sa &#x201e;2&#x201d;-vel"/>
</node>
</node>
</node>
<node CREATED="1465427227534" FOLDED="true" ID="ID_207203279" MODIFIED="1465435109466" TEXT="22. Ismertesse a bin&#xe1;ris k&#xe9;pen v&#xe9;gezhet&#x151; logikai m&#x171;veleteket &#xe9;s azok fontosabb feladatait. Ismertesse az objektum alap&#xfa; logik&#xe1;t &#xe9;s felhaszn&#xe1;l&#xe1;si lehet&#x151;s&#xe9;geit.">
<node CREATED="1465429147527" ID="ID_1638608929" MODIFIED="1465429148142" TEXT="Adott k&#xe9;t k&#xe9;p: A, B">
<node CREATED="1465429160791" ID="ID_1971651785" MODIFIED="1465429161221" TEXT="Neg&#xe1;l&#xe1;s: p&#xe9;ld&#xe1;ul kont&#xfa;rkeres&#xe9;sn&#xe9;l"/>
<node CREATED="1465429169343" ID="ID_1956730079" MODIFIED="1465429170323" TEXT="AND: f&#x151;leg k&#xe9;pek maszkol&#xe1;s&#xe1;n&#xe1;l van jelent&#x151;s&#xe9;ge, k&#xe9;t k&#xe9;p &#xe1;tfed&#xe9;s&#xe9;nek megjelen&#xed;t&#xe9;se (metszet)"/>
<node CREATED="1465429180671" ID="ID_107793055" MODIFIED="1465429181035" TEXT="OR: uni&#xf3; (k&#xe9;t k&#xe9;p &#xe1;ltal az adott k&#xe9;ppont m&#xe1;trixb&#xf3;l egy&#xfc;ttesen elfoglalt k&#xe9;ppontok)"/>
<node CREATED="1465429189303" ID="ID_1443564767" MODIFIED="1465429205272" TEXT="XOR: csup&#xe1;n egyik&#xfc;k &#xe1;ltal elfoglalt k&#xe9;ppontok"/>
</node>
<node COLOR="#ff0000" CREATED="1465429253375" ID="ID_1945951635" MODIFIED="1465429259240" TEXT="Objektum alap&#xfa; logika?"/>
</node>
<node CREATED="1465427235086" FOLDED="true" ID="ID_1030828232" MODIFIED="1465435108059" TEXT="23. Mit jelent az er&#xf3;zi&#xf3; &#xe9;s a dilat&#xe1;ci&#xf3;? Hogyan v&#xe9;gz&#xfc;nk nyit&#xe1;st &#xe9;s z&#xe1;r&#xe1;st? Mire j&#xf3;k ezek a m&#x171;veletek, mit&#x151;l f&#xfc;gg, hogy melyiket alkalmazzuk? Hogyan tudunk e m&#x171;veletekkel kont&#xfa;rt keresni? Mi az olvaszt&#xe1;smentes dilat&#xe1;ci&#xf3;? Sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pen hogy lehet &#xe9;rtelmezni ezeket a m&#x171;veleteket?">
<node CREATED="1465429274864" ID="ID_180730534" MODIFIED="1465429281283" TEXT="Er&#xf3;zi&#xf3;: Cs&#xf6;kkent&#xe9;s (feh&#xe9;r ter&#xfc;letek cs&#xf6;kkent&#xe9;se fekete-feh&#xe9;r &#xe1;tmenetekn&#xe9;l). A pixelszer&#x171; zajok cs&#xf6;kkent&#xe9;se."/>
<node CREATED="1465429288279" ID="ID_1364832500" MODIFIED="1465429288558" TEXT="Dilat&#xe1;ci&#xf3;: Sz&#xe9;les&#xed;t&#xe9;s (feh&#xe9;r ter&#xfc;letek n&#xf6;vel&#xe9;se fekete-feh&#xe9;r &#xe1;tmenetekn&#xe9;l) A v&#xe1;ltoz&#xe1;s m&#xe9;rt&#xe9;ke f&#xfc;gg a felhaszn&#xe1;lt kernel nagys&#xe1;g&#xe1;t&#xf3;l. Nagy sz&#xe1;m&#xed;t&#xe1;sig&#xe9;ny. A nulla zajokat t&#xfc;ntetem el, cser&#xe9;be megn&#x151; az objektum m&#xe9;rete."/>
<node CREATED="1465429329407" ID="ID_1382607002" MODIFIED="1465429330101" TEXT="Z&#xe1;r&#xe1;s Dilat&#xe1;ci&#xf3; + er&#xf3;zi&#xf3;: nullzajok kiszed&#xe9;se (fekete p&#xf6;tty&#xf6;k)"/>
<node CREATED="1465429338303" ID="ID_1603512771" MODIFIED="1465429338709" TEXT="Nyit&#xe1;s Er&#xf3;zi&#xf3; + dilat&#xe1;ci&#xf3;: feh&#xe9;r pixelhib&#xe1;k kiszed&#xe9;s&#xe9;re (Gyakran egy&#xfc;tt haszn&#xe1;lj&#xe1;k a kett&#x151;t.)"/>
<node CREATED="1465429363703" ID="ID_582801732" MODIFIED="1465429367173" TEXT="Felhaszn&#xe1;l&#xe1;s">
<node CREATED="1465429368543" ID="ID_1409217068" MODIFIED="1465429379221" TEXT="pixelhib&#xe1;k, pixelszer&#x171; zajok elt&#xfc;ntet&#xe9;se bin&#xe1;ris k&#xe9;pr&#x151;l"/>
<node CREATED="1465429385871" ID="ID_1738837994" MODIFIED="1465429386341" TEXT="kont&#xfa;rkeres&#xe9;s: Img AND INVERSE( dilate(Img) )"/>
<node CREATED="1465429401535" ID="ID_679952988" MODIFIED="1465429401877" TEXT="&#xe9;lkeres&#xe9;s &#xe9;s lyukak kit&#xf6;lt&#xe9;se"/>
</node>
<node CREATED="1465429412383" ID="ID_1562744145" MODIFIED="1465429412607" TEXT="Olvaszt&#xe1;smentes dilat&#xe1;ci&#xf3;">
<node CREATED="1465429418743" ID="ID_1040705903" MODIFIED="1465429418965" TEXT="Egym&#xe1;ssal &#xe9;rintkez&#x151; objektumok &#xe9;ldetekt&#xe1;l&#xe1;s&#xe1;n&#xe1;l seg&#xed;t ez a m&#xf3;dszer."/>
</node>
<node CREATED="1465429424503" ID="ID_459967325" MODIFIED="1465429424758" TEXT="Sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pen:">
<node CREATED="1465429429767" ID="ID_1744823300" MODIFIED="1465429430002" TEXT="er&#xf3;zi&#xf3;: minimum sz&#x171;r&#x151; (s&#xf6;t&#xe9;t&#xed;t)"/>
<node CREATED="1465429435647" ID="ID_1198344634" MODIFIED="1465429435983" TEXT="dilat&#xe1;ci&#xf3;: maximum sz&#x171;r&#x151; (vil&#xe1;gos&#xed;t)"/>
</node>
</node>
<node CREATED="1465427241583" FOLDED="true" ID="ID_560240410" MODIFIED="1465435106442" TEXT="24. Mit jelent a 4- &#xe9;s 8-szomsz&#xe9;d&#xfa; t&#xe1;vols&#xe1;g? Mik az el&#x151;nyei &#xe9;s h&#xe1;tr&#xe1;nyai az euklid&#xe9;szi t&#xe1;vols&#xe1;ghoz k&#xe9;pest?">
<node CREATED="1465429518127" ID="ID_1922813293" MODIFIED="1465429519754" TEXT="Kernelek eset&#xe9;n a kernel k&#xf6;z&#xe9;ppontj&#xe1;t&#xf3;l a pixelekben m&#xe9;rt t&#xe1;vols&#xe1;g a sz&#xe9;lek fel&#xe9; haladva."/>
<node CREATED="1465429544447" ID="ID_1923475186" MODIFIED="1465429544784" TEXT="4 szomsz&#xe9;d: csak akkor tekintj&#xfc;k szomsz&#xe9;dnak, ha van k&#xf6;z&#xf6;s &#xe9;l, &#xe1;tl&#xf3;san 2 a t&#xe1;vols&#xe1;g."/>
<node CREATED="1465429550503" ID="ID_813924273" MODIFIED="1465429551135" TEXT="8 szomsz&#xe9;d: a cs&#xfa;csn&#xe1;l &#xe9;rintkez&#x151;t is szomsz&#xe9;dnak vessz&#xfc;k"/>
<node CREATED="1465429560119" ID="ID_1969763642" MODIFIED="1465429560572" TEXT="euklid&#xe9;szi: pontos t&#xe1;vols&#xe1;g (pitagorasz)">
<node CREATED="1465429565511" ID="ID_1344272229" MODIFIED="1465429566888" TEXT="4/8 szomsz&#xe9;d: gyors, pontatlan"/>
<node CREATED="1465429571791" ID="ID_635422857" MODIFIED="1465429572196" TEXT="EDM: pontos, sz&#xe1;m&#xed;t&#xe1;sig&#xe9;nyesebb"/>
</node>
</node>
<node CREATED="1465427249182" FOLDED="true" ID="ID_606641494" MODIFIED="1465435104906" TEXT="25. Ismertesse a csontv&#xe1;z defin&#xed;ci&#xf3;j&#xe1;t &#xe9;s a csontv&#xe1;zas&#xed;t&#xe1;s egy lehets&#xe9;ges megval&#xf3;s&#xed;t&#xe1;s&#xe1;t.">
<node CREATED="1465429589639" ID="ID_1676958980" MODIFIED="1465429589855" TEXT="Defin&#xed;ci&#xf3;: Maxim&#xe1;lis k&#xf6;r&#xf6;k orig&#xf3;ja mely egy adott objektumba helyezhet&#x151;."/>
<node CREATED="1465429609023" ID="ID_352526542" MODIFIED="1465429609862" TEXT="Megval&#xf3;s&#xed;t&#xe1;s: iterat&#xed;v er&#xf3;zi&#xf3;, de nincs er&#xf3;zi&#xf3;, ha kett&#xe9;szakadna az objektum vagy ha az objektum v&#xe9;g&#xe9;n vagyunk. Lehet 4/8 szomsz&#xe9;d vagy EDM. Felhaszn&#xe1;l&#xe1;s: ujjlenyomat ellen&#x151;rz&#xe9;s"/>
</node>
<node CREATED="1465427266014" FOLDED="true" ID="ID_1248175120" MODIFIED="1465435105738" TEXT="26. Hogyan tudunk bin&#xe1;ris k&#xe9;pen objektumokat keresni &#xe9;s megsz&#xe1;ml&#xe1;lni? Ismertesse az elj&#xe1;r&#xe1;sokat.">
<node CREATED="1465429653783" ID="ID_1782028279" MODIFIED="1465429654068" TEXT="Objektumkeres&#xe9;s Egy 2x2-es ablakkal v&#xe9;gigp&#xe1;szt&#xe1;zunk minden pixelt &#xe9;s indexelj&#xfc;k az egyes pixeleket."/>
<node CREATED="1465429660351" ID="ID_173041127" MODIFIED="1465429660553" TEXT="Objektumsz&#xe1;ml&#xe1;l&#xe1;s Egy 2x2-es ablakkal v&#xe9;gigp&#xe1;szt&#xe1;zunk minden pixelt &#xe9;s n&#xf6;velj&#xfc;k, vagy cs&#xf6;kkentj&#xfc;k (hogy az algoritmus ne sz&#xe1;moljon egy objektumot t&#xf6;bbsz&#xf6;r) a sz&#xe1;ml&#xe1;l&#xf3;nk &#xe9;rt&#xe9;k&#xe9;t."/>
</node>
</node>
<node CREATED="1465399079943" ID="ID_678498442" MODIFIED="1465427434286" TEXT="5. M&#xe9;r&#xe9;sek">
<node CREATED="1465427321966" FOLDED="true" ID="ID_529769400" MODIFIED="1465435103244" TEXT="27. Hogyan defini&#xe1;lhatjuk egy objektum poz&#xed;ci&#xf3;j&#xe1;t a k&#xe9;pen (pixeltartom&#xe1;nyban)? Ismertessea poz&#xed;ci&#xf3;m&#xe9;r&#xe9;s lehet&#x151;s&#xe9;geit. Mutassa meg, hogy lehet a poz&#xed;ci&#xf3; &#xe9;rt&#xe9;k&#xe9;t meghat&#xe1;rozni bin&#xe1;ris &#xe9;s maszkolt sz&#xfc;rke&#xe1;rnyalatos k&#xe9;peken.">
<node CREATED="1465429831295" ID="ID_1078571568" MODIFIED="1465429831619" TEXT="Egy 2D-s k&#xe9;pet &#xe1;br&#xe1;zolhatunk egy der&#xe9;ksz&#xf6;g&#x171; koordin&#xe1;tarendszerben, ahol az egyes pixelekhez hozz&#xe1;rendelhet&#xfc;nk egy (x,y) eg&#xe9;sz koordin&#xe1;tap&#xe1;rt. A koordin&#xe1;tarendszer k&#xf6;z&#xe9;ppontja tetsz&#x151;legesen, feladatt&#xf3;l f&#xfc;gg&#x151;en megv&#xe1;laszthat&#xf3;, de &#xe1;ltal&#xe1;ban a bal fels&#x151; sarokban l&#xe9;v&#x151; pixelhez rendelj&#xfc;k hozz&#xe1; a (0,0)-t. Egy objektum poz&#xed;ci&#xf3;ja az objektum egy jellegzetes koordin&#xe1;tap&#xe1;rj&#xe1;val jellemezhet&#x151;. Ez a koordin&#xe1;tap&#xe1;r lehet:">
<node CREATED="1465429879295" ID="ID_1960719305" MODIFIED="1465429879540" TEXT="geometriai k&#xf6;z&#xe9;ppont (az objektumot befoglal&#xf3; t&#xe9;glalap/k&#xf6;r k&#xf6;z&#xe9;ppontja)"/>
<node CREATED="1465429892767" ID="ID_492299873" MODIFIED="1465429928855" TEXT="t&#xf6;megk&#xf6;z&#xe9;ppont"/>
</node>
<node CREATED="1465429943543" ID="ID_1470716409" MODIFIED="1465430000865" TEXT="T&#xf6;megk&#xf6;z&#xe9;ppont (x c , y c ) meghat&#xe1;roz&#xe1;sa">
<node CREATED="1465429961631" ID="ID_1464421808" MODIFIED="1465429962308" TEXT="A k&#xe9;p m&#xe9;rete: M*N pixel (M az oszlopok sz&#xe1;ma, N a sorok&#xe9;)">
<node CREATED="1465429970079" ID="ID_1254758513" MODIFIED="1465429970446" TEXT="p x (x) az x koordin&#xe1;t&#xe1;j&#xfa; oszlopban a vizsg&#xe1;lt objektum pixeleinek sz&#xe1;ma"/>
<node CREATED="1465429981143" ID="ID_1018050979" MODIFIED="1465429981406" TEXT="p y (y) az y koordin&#xe1;t&#xe1;j&#xfa; sorban a vizsg&#xe1;lt objektum pixeleinek sz&#xe1;ma"/>
</node>
<node CREATED="1465430002040" ID="ID_332613033" MODIFIED="1465430002533" TEXT="a) Bin&#xe1;ris k&#xe9;pekre"/>
<node CREATED="1465430007447" ID="ID_157890574" MODIFIED="1465430007692" TEXT="b) Sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pekre">
<node CREATED="1465430012391" ID="ID_1630981721" MODIFIED="1465430012598" TEXT="I(x,y): intenzit&#xe1;sf&#xfc;ggv&#xe9;ny"/>
</node>
</node>
<node CREATED="1465430126439" ID="ID_1253914592" MODIFIED="1465430176964" TEXT="Geometriai k&#xf6;z&#xe9;ppont (x g , y g ) meghat&#xe1;roz&#xe1;sa">
<node CREATED="1465430176965" ID="ID_1252192359" MODIFIED="1465430180914" TEXT="a) Meghat&#xe1;roz&#xe1;s a befoglal&#xf3; t&#xe9;glalap alapj&#xe1;n">
<node CREATED="1465430132247" ID="ID_1236655402" MODIFIED="1465430132486" TEXT="x min , x max , y min , y max : az objektum legsz&#xe9;ls&#x151; pixeleinek koordin&#xe1;t&#xe1;i"/>
</node>
<node CREATED="1465430143744" ID="ID_442655397" MODIFIED="1465430144772" TEXT="b) Meghat&#xe1;roz&#xe1;s a befoglal&#xf3; k&#xf6;r alapj&#xe1;n">
<node CREATED="1465430146831" ID="ID_735497320" MODIFIED="1465430156101" TEXT="egy&#xe9;rtelm&#x171;, ha 3 ponton &#xe9;rinti a k&#xf6;rt"/>
<node CREATED="1465430157087" ID="ID_163023015" MODIFIED="1465430169591" TEXT="k&#xf6;r &#xe1;tl&#xf3;j&#xe1;ig egy&#xe9;rtelm&#x171;, ha 2 ponton &#xe9;rinti a k&#xf6;rt"/>
</node>
</node>
</node>
<node CREATED="1465427328262" FOLDED="true" ID="ID_828443661" MODIFIED="1465435102267" TEXT="28. Hogyan defini&#xe1;lhatjuk egy objektum orient&#xe1;ci&#xf3;j&#xe1;t a k&#xe9;pen (pixeltartom&#xe1;nyban)? Sorolja fel az orient&#xe1;ci&#xf3;m&#xe9;r&#xe9;s lehet&#x151;s&#xe9;geit, illetve r&#xf6;viden ismertesse ezek alapelv&#xe9;t.">
<node CREATED="1465430220648" ID="ID_1499358177" MODIFIED="1465430221160" TEXT="Objektum orient&#xe1;ci&#xf3;j&#xe1;n egy objektum egy olyan 1D-s jellemz&#xe9;s&#xe9;t &#xe9;rtj&#xfc;k, mely ir&#xe1;ny-, sz&#xf6;ginform&#xe1;ci&#xf3;kat szolg&#xe1;ltat az adott objektumr&#xf3;l. Objektum orient&#xe1;ci&#xf3;ja megadhat&#xf3; a">
<node CREATED="1465430231879" ID="ID_1002734141" MODIFIED="1465430232602" TEXT="befoglal&#xf3; t&#xe9;glalap ar&#xe1;nyaival &#xe9;s m&#xe9;reteivel"/>
<node CREATED="1465430245375" ID="ID_685461321" MODIFIED="1465430245997" TEXT="legnagyobb t&#xe1;vols&#xe1;ggal az objektumon bel&#xfc;l"/>
<node CREATED="1465430254199" ID="ID_1885517342" MODIFIED="1465430254477" TEXT="k&#xf6;z&#xe9;ppontt&#xf3;l vett legnagyobb t&#xe1;vols&#xe1;ggal"/>
<node CREATED="1465430294375" ID="ID_917928568" MODIFIED="1465430294637" TEXT="r&#xe1; illeszthet&#x151; legkisebb nyomat&#xe9;k&#xfa; tengellyel"/>
</node>
<node CREATED="1465430302287" ID="ID_829476139" MODIFIED="1465430302287" TEXT="Orient&#xe1;ci&#xf3;m&#xe9;r&#xe9;s lehet&#x151;s&#xe9;gei">
<node CREATED="1465430312751" ID="ID_1789123058" MODIFIED="1465430314470" TEXT="P&#xe9;ld&#xe1;ul: Az aut&#xf3; elektronik&#xe1;ban az &#xf6;nj&#xe1;r&#xf3; aut&#xf3;kn&#xe1;l a s&#xe1;vk&#xf6;vet&#xe9;st &#xe9;s az aut&#xf3;k k&#xf6;z&#xf6;tti t&#xe1;vols&#xe1;gtart&#xe1;st is orient&#xe1;ci&#xf3;m&#xe9;r&#xe9;s alapj&#xe1;n hat&#xe1;rozz&#xe1;k meg. S&#xe1;vk&#xf6;vet&#xe9;s: egyenes festett vonalakat &#xe9;lkeres&#xe9;ssel keres az algoritmus &#xe9;s a vonalak a k&#xe9;pen befel&#xe9; haladva sz&#x171;k&#xfc;lnek, ami ir&#xe1;nyt ad az orient&#xe1;ci&#xf3;nak. T&#xe1;vols&#xe1;gtart&#xe1;s: Befogad&#xf3; t&#xe9;glalap vagy trap&#xe9;z ar&#xe1;nyaival meghat&#xe1;rozhat&#xf3; milyen t&#xe1;vol van az el&#x151;l halad&#xf3; objektum."/>
</node>
</node>
<node CREATED="1465427335454" FOLDED="true" ID="ID_1993645939" MODIFIED="1465435101658" TEXT="29. Mit jelent az Euler-sz&#xe1;m? Mire haszn&#xe1;lhat&#xf3;? Adja meg a mell&#xe9;kelt &#xe1;bra Euler-sz&#xe1;m&#xe1;t.">
<node CREATED="1465430393768" ID="ID_681831707" MODIFIED="1465430393974" TEXT="Az Euler-sz&#xe1;m egyike a topol&#xf3;giai tulajdons&#xe1;goknak, melyek egy k&#xe9;p geometriai le&#xed;r&#xe1;s&#xe1;t seg&#xed;tik el&#x151;. Fontos r&#xe9;sze az ilyen tulajdons&#xe1;goknak, hogy rubber-sheet jelleg&#x171; transzorm&#xe1;ci&#xf3;kra invari&#xe1;ns. Az ilyen jelleg&#x171; tulajdons&#xe1;gok j&#xf3;l haszn&#xe1;lhat&#xf3;k form&#xe1;k keres&#xe9;s&#xe9;re, objektumok felismer&#xe9;s&#xe9;re, adatb&#xe1;zisbeli keres&#xe9;sre. Euler-sz&#xe1;m fontos szerepet j&#xe1;tszik p&#xe9;ld&#xe1;ul orvosi k&#xe9;pfeldolgoz&#xe1;sban, fert&#x151;z&#xf6;tt sejtek felismer&#xe9;s&#xe9;ben.">
<node CREATED="1465430447103" ID="ID_1306955306" MODIFIED="1465430447341" TEXT="Euler-sz&#xe1;m = (egybef&#xfc;gg&#x151; r&#xe9;gi&#xf3;k sz&#xe1;ma) &#x2013; (lyukak sz&#xe1;ma)"/>
</node>
</node>
<node CREATED="1465427342751" FOLDED="true" ID="ID_1297159618" MODIFIED="1465435100275" TEXT="30. Mit jelent a l&#xe1;nck&#xf3;d? Mire haszn&#xe1;lhat&#xf3;? Mi a k&#xfc;l&#xf6;nbs&#xe9;g a 4-szomsz&#xe1;dos &#xe9;s 8- szomsz&#xe9;dos l&#xe1;nck&#xf3;d k&#xf6;z&#xf6;tt? Mik az el&#x151;nyei &#xe9;s a h&#xe1;tr&#xe1;nyai az &#xed;gy &#xe1;br&#xe1;zolt objektumoknak? Hogyan tudunk seg&#xed;ts&#xe9;g&#xe9;vel ker&#xfc;let- &#xe9;s hossz-sz&#xe1;m&#xed;t&#xe1;st v&#xe9;gezni? Milyen probl&#xe9;m&#xe1;k ad&#xf3;dnak?">
<node CREATED="1465430471512" ID="ID_340013509" MODIFIED="1465430471756" TEXT="A l&#xe1;nck&#xf3;d egy vesztes&#xe9;gmentes t&#xf6;m&#xf6;r&#xed;t&#xe9;si algoritmus bin&#xe1;ris k&#xe9;pekhez. L&#xe1;nck&#xf3;d seg&#xed;ts&#xe9;g&#xe9;vel alakfelismer&#xe9;st, sarokdetekt&#xe1;l&#xe1;st v&#xe9;gezhet&#xfc;nk. (A k&#xf3;db&#xf3;l egy&#xe9;rtelm&#x171;en l&#xe1;tszik, hol vannak pl.: dudorok, bem&#xe9;lyed&#xe9;sek.) Az objektum egy sz&#xe9;ls&#x151; pixel&#xe9;t&#x151;l elindulva szomsz&#xe9;dos, hat&#xe1;r menti pixelekre l&#xe9;pked&#xfc;nk. Att&#xf3;l f&#xfc;gg&#x151;en, hogy milyen ir&#xe1;nyba l&#xe9;p&#xfc;nk tov&#xe1;bb a pixelhez egy sz&#xe1;mot rendel&#xfc;nk hozz&#xe1;. Ez a sz&#xe1;msorozat alkotja a l&#xe1;nck&#xf3;dot.">
<node CREATED="1465430479855" ID="ID_227981425" MODIFIED="1465430480821" TEXT="4-szomsz&#xe9;dos: csak azok a pixelek sz&#xe1;m&#xed;tanak szomsz&#xe9;dosnak, amiknek van k&#xf6;z&#xf6;s &#xe9;l&#xfc;k">
<node CREATED="1465430587727" ID="ID_936636515" MODIFIED="1465430589415" TEXT="4-szomsz&#xe9;dos l&#xe1;nck&#xf3;d maxim&#xe1;lis hiba: 41% (45&#xb0;-os &#xe1;tl&#xf3;s egyenes)"/>
</node>
<node CREATED="1465430570184" ID="ID_326007066" MODIFIED="1465430582812" TEXT="8-szomsz&#xe9;dos: k&#xf6;z&#xf6;s &#xe9;l, vagy k&#xf6;z&#xf6;s cs&#xfa;cs">
<node CREATED="1465430608199" ID="ID_418632311" MODIFIED="1465430608832" TEXT="8-szomsz&#xe9;dos l&#xe1;nck&#xf3;d maxim&#xe1;lis hiba: 7.9% (~18-27&#xb0;-os &#xe1;tl&#xf3;s egyenes)"/>
</node>
</node>
<node CREATED="1465430668487" ID="ID_31374760" MODIFIED="1465430668749" TEXT="Ker&#xfc;let = k&#xf3;dhossz"/>
<node CREATED="1465430687319" ID="ID_1902034035" MODIFIED="1465430688598" TEXT="Hossz sz&#xe1;m&#xed;t&#xe1;sn&#xe1;l ker&#xfc;l el&#x151; az a probl&#xe9;ma, hogy n&#xe9;gyzetes pixelek eset&#xe9;n egy &#xe1;tl&#xf3;s l&#xe9;p&#xe9;s val&#xf3;s&#xe1;gos hossza sqrt(2) egys&#xe9;g. 4-szomsz&#xe9;dos l&#xe1;nck&#xf3;d 2 egys&#xe9;g hossz&#xfa;nak, m&#xed;g a 8-szomsz&#xe9;dos esetben 1 egys&#xe9;g hossz&#xfa;nak veszi alapb&#xf3;l. Ha sz&#xfc;ks&#xe9;ges akkor ezt kompenz&#xe1;lni kell."/>
</node>
<node CREATED="1465427350655" FOLDED="true" ID="ID_483190349" MODIFIED="1465435099450" TEXT="31. Ismertessen szubpixeles elj&#xe1;r&#xe1;sokat. Hogyan tudunk poz&#xed;ci&#xf3;t, ker&#xfc;letet, ill. ter&#xfc;letet m&#xe9;rni seg&#xed;ts&#xe9;g&#xfc;kkel?">
<node CREATED="1465430713184" ID="ID_890203675" MODIFIED="1465430713573" TEXT="Interpol&#xe1;ci&#xf3; alap&#xfa; elj&#xe1;r&#xe1;s, mely seg&#xed;ts&#xe9;g&#xe9;vel pixel alatti pontoss&#xe1;ggal illeszthet&#xfc;nk g&#xf6;rb&#xe9;t egy objektumra. Megfelel&#x151; algoritmussal ak&#xe1;r 0.1% pontoss&#xe1;g is el&#xe9;rhet&#x151;."/>
<node CREATED="1465430752720" ID="ID_518514954" MODIFIED="1465430753038" TEXT="Elj&#xe1;r&#xe1;s sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pekhez">
<node CREATED="1465430759351" ID="ID_476527667" MODIFIED="1465430759565" TEXT="Sz&#xfc;rke&#xe1;rnyalatos k&#xe9;peket el&#x151;sz&#xf6;r is binariz&#xe1;ljuk."/>
<node CREATED="1465430771767" ID="ID_43914393" MODIFIED="1465430772037" TEXT="Visszat&#xe9;rve az eredeti k&#xe9;phez (fekete-feh&#xe9;r k&#xe9;p alapj&#xe1;n) az &#xe1;tmenetekn&#xe9;l l&#xe9;v&#x151; pixelekhez egy s&#xfa;lyt&#xe9;nyez&#x151;t (&#xe9;rt&#xe9;ke lehet t&#xf6;rt, megadja az interpol&#xe1;ci&#xf3; finoms&#xe1;g&#xe1;t) rendel&#xfc;nk att&#xf3;l f&#xfc;gg&#x151;en, hogy mennyire vil&#xe1;gos/s&#xf6;t&#xe9;t az adott pixel."/>
</node>
</node>
<node CREATED="1465427356471" FOLDED="true" ID="ID_1371132170" MODIFIED="1465435098563" TEXT="32. Ismertesse az egyenesekre vonatkoz&#xf3; Hough-transzform&#xe1;ci&#xf3; m&#x171;k&#xf6;d&#xe9;s&#xe9;t.">
<node CREATED="1465430882399" ID="ID_1515353738" MODIFIED="1465430888711" TEXT="Hough-transzform&#xe1;ci&#xf3;">
<node CREATED="1465430894848" ID="ID_8632809" MODIFIED="1465430895316" TEXT="A Hough-transzform&#xe1;ci&#xf3; seg&#xed;ts&#xe9;g&#xe9;vel a k&#xe9;pen &#xe1;ltal&#xe1;ban az f(x, y; a 1 , a 2 , ... , a n ) = 0, ahol a 1 , a 2 , ... , a n param&#xe9;terekkel explicit alakban megadhat&#xf3; g&#xf6;rb&#xe9;ket keress&#xfc;k. A Hough-transzform&#xe1;ci&#xf3; alkalmaz&#xe1;sa c&#xe9;lravezet&#x151;, ha ismert alak&#xfa; (&#xe9;s m&#xe9;ret&#x171;) objektumokat keres&#xfc;nk a k&#xe9;pen. Akkor is c&#xe9;lszer&#x171;, ha az egyenesek r&#xe9;szben takartak vagy zajosak."/>
</node>
<node CREATED="1465430905063" ID="ID_1162964521" MODIFIED="1465430905306" TEXT="&#xc1;tt&#xe9;r&#xe9;s a Hough-t&#xe9;rbe">
<node CREATED="1465430911039" ID="ID_1910320352" MODIFIED="1465430911255" TEXT="Az input (k&#xe9;p)t&#xe9;r egy (x i , y i ) pontj&#xe1;nak az r = x i &#x2219; cos&#x3c6; + y i &#x2219; sin&#x3c6; szinuszos g&#xf6;rbe felel meg a Hough-t&#xe9;rben. Az egy egyenesbe es&#x151; pontokhoz tartoz&#xf3; szinuszos g&#xf6;rb&#xe9;k egy pontban metszik egym&#xe1;st."/>
</node>
<node CREATED="1465430919055" ID="ID_905683487" MODIFIED="1465430919356" TEXT="Egyenesek meghat&#xe1;roz&#xe1;sa">
<node CREATED="1465430926287" ID="ID_198363246" MODIFIED="1465430926517" TEXT="Egy (&#xe9;l)pont a k&#xe9;pt&#xe9;rben megfelel egy szinuszos g&#xf6;rb&#xe9;nek a Hough-t&#xe9;rben. K&#xe9;t pontnak k&#xe9;t g&#xf6;rbe felel meg."/>
<node CREATED="1465431255168" ID="ID_561398627" MODIFIED="1465431255513" TEXT="K&#xe9;t (vagy t&#xf6;bb) ilyen g&#xf6;rbe metsz&#xe9;spontja &#xe1;ltal reprezent&#xe1;lt egyenesre ekkor kett&#x151; (vagy t&#xf6;bb) szavazat esett."/>
<node CREATED="1465431264855" ID="ID_1660881418" MODIFIED="1465431265206" TEXT="Az &#xed;gy kapott egyenes valamennyi r&#xe1; szavaz&#xf3; ponton &#xe1;tmegy a k&#xe9;pt&#xe9;rben."/>
<node CREATED="1465431272733" MODIFIED="1465431272733" TEXT="A Hough-t&#xe9;r k&#xfc;sz&#xf6;b&#xf6;l&#xe9;s&#xe9;vel megkapjuk a k&#xe9;pt&#xe9;r egyeneseit."/>
</node>
</node>
</node>
<node CREATED="1465427310103" ID="ID_1871098806" MODIFIED="1465427440165" TEXT="6. Szegment&#xe1;l&#xe1;s">
<node CREATED="1465427365319" FOLDED="true" ID="ID_1077856890" MODIFIED="1465435096819" TEXT="33. Mit jelent a szegment&#xe1;l&#xe1;s? Mikor van r&#xe1; sz&#xfc;ks&#xe9;g? Mik a f&#x151;bb neh&#xe9;zs&#xe9;gei? Mit jelent a szegment&#xe1;l&#xe1;s sor&#xe1;n az id&#x151;-konzisztencia? A Szegment&#xe1;l&#xe1;s param&#xe9;terter&#xe9;ben milyen &#xf6;sszetev&#x151;ket alkalmazhatunk?">
<node CREATED="1465431300848" ID="ID_272133917" MODIFIED="1465431301189" TEXT="Szegment&#xe1;l&#xe1;s: A k&#xe9;pszegment&#xe1;l&#xe1;s a k&#xe9;pfeldolgoz&#xe1;s egyik legfontosabb alapprobl&#xe9;m&#xe1;ja, mely a hasonl&#xf3; tulajdons&#xe1;g&#xfa; pixelek homog&#xe9;n ter&#xfc;letekbe t&#xf6;rt&#xe9;n&#x151; csoportos&#xed;t&#xe1;s&#xe1;val foglalkozik."/>
<node CREATED="1465431335064" ID="ID_1370372891" MODIFIED="1465431335349" TEXT="Sz&#xfc;ks&#xe9;ges/Felhaszn&#xe1;l&#xe1;s">
<node CREATED="1465431345648" ID="ID_1813139209" MODIFIED="1465431346054" TEXT="Fel&#xfc;letle&#xed;r&#xe1;s"/>
<node CREATED="1465431352632" ID="ID_1502933099" MODIFIED="1465431353069" TEXT="Sztere&#xf3; l&#xe1;t&#xe1;s (&#xe9;lek megfeleltet&#xe9;se =&gt; 3D rekonstrukci&#xf3;)"/>
<node CREATED="1465431358703" ID="ID_1568658058" MODIFIED="1465431359037" TEXT="Alakfelismer&#xe9;s"/>
<node CREATED="1465431365216" ID="ID_138012037" MODIFIED="1465431365613" TEXT="K&#xe9;pi adatb&#xe1;zis indexel&#xe9;se, keres&#xe9;s"/>
</node>
<node CREATED="1465431370032" ID="ID_790194679" MODIFIED="1465431377094" TEXT="Neh&#xe9;zs&#xe9;gek">
<node CREATED="1465431383368" ID="ID_776704416" MODIFIED="1465431383632" TEXT="sz&#xed;nhasonl&#xf3;s&#xe1;g"/>
<node CREATED="1465431390904" ID="ID_473432866" MODIFIED="1465431398005" TEXT="mozg&#xe1;s (elmos&#xf3;dott &#xe9;lek)"/>
<node CREATED="1465431400936" ID="ID_511459798" MODIFIED="1465431405227" TEXT="def&#xf3;kusz&#xe1;lts&#xe1;g"/>
<node CREATED="1465431407760" ID="ID_1851402853" MODIFIED="1465431412198" TEXT="hasonl&#xf3; text&#xfa;r&#xe1;k"/>
</node>
<node CREATED="1465431423240" ID="ID_1354645675" MODIFIED="1465431423654" TEXT="Egy vide&#xf3;folyam sor&#xe1;n egy adott szegmens/alak form&#xe1;ja v&#xe1;ltozhat, elfordulhat stb."/>
<node CREATED="1465431599527" ID="ID_1311338273" MODIFIED="1465431599994" TEXT="A Szegment&#xe1;l&#xe1;s param&#xe9;terter&#xe9;ben milyen &#xf6;sszetev&#x151;ket alkalmazhatunk? r, &#x3c6;"/>
</node>
<node CREATED="1465427371078" FOLDED="true" ID="ID_997623405" MODIFIED="1465435095843" TEXT="34. Sorolja fel a fontosabb szegment&#xe1;l&#xe1;si m&#xf3;dszereket. P&#xe1;r sz&#xf3;ban mutassa be &#x151;ket.">
<node CREATED="1465431666767" ID="ID_1150309729" MODIFIED="1465431667085" TEXT="K&#xfc;sz&#xf6;b&#xf6;z&#xe9;s, hisztogram alap&#xfa;"/>
<node CREATED="1465431673655" ID="ID_237236543" MODIFIED="1465431674350" TEXT="&#xc9;ldetekt&#xe1;l&#xe1;s alap&#xfa;"/>
<node CREATED="1465431700864" ID="ID_271679223" MODIFIED="1465431701359" TEXT="Klaszterez&#xe9;s:">
<node CREATED="1465431703440" ID="ID_1537919945" MODIFIED="1465431708310" TEXT="sz&#xed;ncsatorn&#xe1;k"/>
<node CREATED="1465431709519" ID="ID_1889176008" MODIFIED="1465431713125" TEXT="t&#xe9;rbeli eloszl&#xe1;s"/>
<node CREATED="1465431715104" ID="ID_1989231151" MODIFIED="1465431719319" TEXT="id&#x151;beli eloszl&#xe1;s"/>
</node>
<node CREATED="1465431721560" ID="ID_1614716081" MODIFIED="1465431724355" TEXT="R&#xe9;gi&#xf3;n&#xf6;vel&#xe9;s"/>
<node CREATED="1465431725648" ID="ID_1507321266" MODIFIED="1465431734414" TEXT="T&#xf6;m&#xf6;r&#xed;t&#xe9;s-alap&#xfa; m&#xf3;dszerek"/>
<node CREATED="1465431736127" ID="ID_1616317636" MODIFIED="1465431746151" TEXT="Param&#xe9;teres megold&#xe1;sok, g&#xf6;rbeilleszt&#xe9;s"/>
<node CREATED="1465431751919" ID="ID_1134431749" MODIFIED="1465431756085" TEXT="Modell alap&#xfa;"/>
<node CREATED="1465431757144" ID="ID_1306628573" MODIFIED="1465431760909" TEXT="Tanul&#xf3; rendszerek"/>
</node>
<node CREATED="1465427376319" FOLDED="true" ID="ID_34889247" MODIFIED="1465435089162" TEXT="35. Ismertesse a k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s alap&#xfa; szegment&#xe1;l&#xe1;si elj&#xe1;r&#xe1;sokat (bele&#xe9;rtve a hisztogram-alap&#xfa; sz&#xe9;tv&#xe1;laszt&#xe1;st). Milyen el&#x151;nyeik &#xe9;s h&#xe1;tr&#xe1;nyaik vannak? Milyen m&#xf3;don tudjuk meghat&#xe1;rozni a k&#xfc;sz&#xf6;bszint(ek)et?">
<node CREATED="1465431881368" ID="ID_1460213475" MODIFIED="1465431882066" TEXT="Intenzit&#xe1;s alap&#xfa;, sz&#xed;n alap&#xfa;"/>
<node CREATED="1465431901256" ID="ID_1983344149" MODIFIED="1465431901853" TEXT="f(x,y) &#x2013; a k&#xe9;p x,y koordin&#xe1;t&#xe1;kn&#xe1;l m&#xe9;rt intenzit&#xe1;sa"/>
<node CREATED="1465431913624" ID="ID_1281655167" MODIFIED="1465431913967" TEXT="p(x,y) &#x2013; pont lok&#xe1;lis tulajdons&#xe1;ga (pl. x,y k&#xf6;z&#xe9;ppont&#xfa; szomsz&#xe9;ds&#xe1;g &#xe1;tlaga)"/>
<node CREATED="1465431962064" ID="ID_570379783" MODIFIED="1465431962474" TEXT="g(x,y) legyen a k&#xfc;sz&#xf6;b&#xf6;z&#xf6;tt k&#xe9;p: 1, ha f(x,y)&gt;T g(x,y)= 0, ha f(x,y)&lt;=T">
<node CREATED="1465431981648" ID="ID_431009508" MODIFIED="1465431982013" TEXT="ha T csak f(x,y)-t&#xf3;l f&#xfc;gg &#xf0e0; glob&#xe1;lis"/>
<node CREATED="1465431993832" ID="ID_185804402" MODIFIED="1465431994486" TEXT="ha T f(x,y)-t&#xf3;l &#xe9;s p(x,y)-t&#xf3;l is f&#xfc;gg &#xf0e0; lok&#xe1;lis"/>
<node CREATED="1465432013288" ID="ID_144360594" MODIFIED="1465432013518" TEXT="ha T f&#xfc;gg x,y-t&#xf3;l is &#xf0e0; dinamikus"/>
</node>
<node CREATED="1465432021056" ID="ID_805689967" MODIFIED="1465432021270" TEXT="Glob&#xe1;lis k&#xfc;sz&#xf6;b&#xf6;z&#xe9;s lehet az is, ha pl. egy glob&#xe1;lis hisztogram tulajdons&#xe1;gai (medi&#xe1;n stb.) alapj&#xe1;n hat&#xe1;rozzuk meg a k&#xe9;s&#x151;bb felhaszn&#xe1;land&#xf3; k&#xfc;sz&#xf6;b&#xe9;rt&#xe9;ket. (Ez csak akkor m&#x171;k&#xf6;dik j&#xf3;l, ha mi befoly&#xe1;soljuk a megvil&#xe1;g&#xed;t&#xe1;s k&#xf6;r&#xfc;lm&#xe9;nyeit.)"/>
</node>
<node CREATED="1465427383022" FOLDED="true" ID="ID_1337270206" MODIFIED="1465435093996" TEXT="36. Ismertesse a K-Means &#xe9;s a Mean Shift algoritmusokat. Milyen el&#x151;nyeik &#xe9;s h&#xe1;tr&#xe1;nyaik vannak? Mikor haszn&#xe1;ljuk &#x151;ket?">
<node CREATED="1465432179440" ID="ID_896519691" MODIFIED="1465432186372" TEXT="Param&#xe9;terek:">
<node CREATED="1465432142624" ID="ID_615559295" MODIFIED="1465432187766" TEXT="Kiindul&#xe1;s">
<node CREATED="1465432157728" ID="ID_1685077495" MODIFIED="1465432162330" TEXT="iter&#xe1;ci&#xf3;">
<node CREATED="1465432163920" ID="ID_134545869" MODIFIED="1465432165710" TEXT="el&#x151;ny">
<node CREATED="1465432167008" ID="ID_1942908341" MODIFIED="1465432174759" TEXT="h&#xe1;tr&#xe1;ny"/>
</node>
</node>
</node>
</node>
<node CREATED="1465432192152" ID="ID_1268064320" MODIFIED="1465432196462" TEXT="K-Means">
<node CREATED="1465432197399" ID="ID_1671919515" MODIFIED="1465432245607" TEXT="Klaszterek sz&#xe1;ma (K)">
<node CREATED="1465432262552" ID="ID_975152960" MODIFIED="1465432274455" TEXT="1. Pontokat a legk&#xf6;zelebbi maghoz rendelni">
<node CREATED="1465432329328" ID="ID_1108504948" MODIFIED="1465432364654" TEXT="egyszer&#x171; (gyors) (helyes kiindul&#xe1;si &#xe9;rt&#xe9;kek eset&#xe9;n">
<node CREATED="1465432367432" ID="ID_299466008" MODIFIED="1465432375657" TEXT="Sz&#xfc;ks&#xe9;g van a klaszterek sz&#xe1;m&#xe1;ra"/>
<node CREATED="1465432376984" ID="ID_1519185706" MODIFIED="1465432385568" TEXT="&#xc9;rz&#xe9;keny a kiindul&#xe1;si k&#xf6;z&#xe9;ppontokre"/>
<node CREATED="1465432390432" ID="ID_805496778" MODIFIED="1465432487753" TEXT="&#xc9;rz&#xe9;keny az outlier-ekre (amikor egy-egy ponthalmaz nagyon messze esik a t&#xf6;bbit&#x151;l)"/>
</node>
<node CREATED="1465432337832" ID="ID_984242607" MODIFIED="1465432348438" TEXT="K&#xf6;nnyen implement&#xe1;lhat&#xf3;"/>
</node>
<node CREATED="1465432284368" ID="ID_1077182779" MODIFIED="1465432284646" TEXT="2. &#xda;j klaszterk&#xf6;z&#xe9;ppontok (&#xe1;tlag) sz&#xe1;m&#xed;t&#xe1;sa"/>
<node CREATED="1465432294920" ID="ID_1310953910" MODIFIED="1465432295230" TEXT="3. Ism&#xe9;tl&#xe9;s, am&#xed;g &#x201e;nagy&#x201d; a v&#xe1;ltoz&#xe1;s"/>
</node>
<node CREATED="1465432246712" ID="ID_690619614" MODIFIED="1465432257909" TEXT="Kiindul&#xe1;si klaszterk&#xf6;z&#xe9;ppontok (magok)"/>
</node>
<node CREATED="1465432516560" ID="ID_68050658" MODIFIED="1465432520597" TEXT="Mean-Shift">
<node CREATED="1465432521440" ID="ID_730367325" MODIFIED="1465432529833" TEXT="Kernel t&#xed;pusa (Fiat, Gauss..)">
<node CREATED="1465432551023" ID="ID_1090252637" MODIFIED="1465432551295" TEXT="1. Pontot a kernelen bel&#xfc;li pontok &#xe1;tlag&#xe1;hoz tolni">
<node CREATED="1465432567320" ID="ID_1853934871" MODIFIED="1465432580379" TEXT="&#xc1;ltal&#xe1;nos, alkalmaz&#xe1;sf&#xfc;ggetlen">
<node CREATED="1465432603024" ID="ID_188798845" MODIFIED="1465432604785" TEXT="Lass&#xfa;"/>
</node>
<node CREATED="1465432583064" ID="ID_1122008465" MODIFIED="1465432591454" TEXT="Csak egy param&#xe9;ter sz&#xfc;ks&#xe9;ges (h)"/>
<node CREATED="1465432592824" ID="ID_567457623" MODIFIED="1465432597493" TEXT="Robosztus"/>
</node>
<node CREATED="1465432558568" ID="ID_1666970128" MODIFIED="1465432558823" TEXT="2. Ism&#xe9;tl&#xe9;s, am&#xed;g &#x201e;nagy&#x201d; a v&#xe1;ltoz&#xe1;s"/>
</node>
<node CREATED="1465432531656" ID="ID_1837399810" MODIFIED="1465432535087" TEXT="Kernel m&#xe9;rete (h)"/>
</node>
</node>
<node CREATED="1465427391038" FOLDED="true" ID="ID_1162569344" MODIFIED="1465435083699" TEXT="37. Ismertesse a text&#xfa;raalap&#xfa; szegment&#xe1;l&#xe1;s alapjait, m&#xf3;dszereit (G&#xe1;bor sz&#x171;r&#x151;, frekvencia tartom&#xe1;nybeli sz&#x171;r&#xe9;sek, egy&#xe9;b megold&#xe1;sok).">
<node CREATED="1465432636536" ID="ID_1456670251" MODIFIED="1465432636830" TEXT="Egy k&#xe9;pen egy ter&#xfc;letnek &#xe1;lland&#xf3; text&#xfa;r&#xe1;ja van, ha a lok&#xe1;lis statisztik&#xe1;k vagy egy&#xe9;b lok&#xe1;lis tulajdons&#xe1;gok &#xe1;lland&#xf3;ak, lassan v&#xe1;ltoznak, vagy megk&#xf6;zel&#xed;t&#x151;leg periodikusak. Ez lehet determinisztikus vagy v&#xe9;letlen is. Egy text&#xfa;r&#xe1;lt fel&#xfc;letet homog&#xe9;nnek &#xe9;rz&#xe9;kel&#xfc;nk, de a g&#xe9;p sz&#xe1;m&#xe1;ra ez a legkev&#xe9;sb&#xe9; sem trivi&#xe1;lis."/>
<node CREATED="1465432647712" ID="ID_327859294" MODIFIED="1465432648061" TEXT="A text&#xfa;r&#xe1;k statisztikai le&#xed;r&#xe1;sa olyan text&#xfa;ra-jellemz&#x151;ket &#xe1;ll&#xed;t el&#x151;, melyek egy r&#xe9;gi&#xf3;n bel&#xfc;l homog&#xe9;nek, &#xed;gy a szegment&#xe1;l&#xe1;s viszonylag k&#xf6;nnyen elv&#xe9;gezhet&#x151;. H&#xe1;rom f&#x151; t&#xed;pus:">
<node CREATED="1465432656288" ID="ID_1781133613" MODIFIED="1465432667887" TEXT="hisztogram (els&#x151;rend&#x171; statisztika)"/>
<node CREATED="1465432675584" ID="ID_1254293356" MODIFIED="1465432675889" TEXT="egy&#xfc;ttes el&#x151;fordul&#xe1;si (co-occurence) m&#xe1;trix (m&#xe1;sodrend&#x171; statisztika)"/>
<node CREATED="1465432726568" ID="ID_29188555" MODIFIED="1465432726834" TEXT="text&#xfa;ra elemek eloszl&#xe1;sa egy ablakon bel&#xfc;l"/>
</node>
<node CREATED="1465432741183" FOLDED="true" ID="ID_942358189" MODIFIED="1465435082419" TEXT="G&#xe1;bor sz&#x171;r&#x151;">
<node CREATED="1465432753327" ID="ID_586314599" MODIFIED="1465432783550" TEXT="Line&#xe1;ris sz&#x171;r&#x151; &#xe9;ldetekt&#xe1;l&#xe1;sra "/>
<node CREATED="1465432784568" ID="ID_723001026" MODIFIED="1465432853236" TEXT="A frekvencia &#xe9;s orient&#xe1;ci&#xf3; reprezent&#xe1;ci&#xf3;ja a sz&#x171;r&#x151;nek hasonl&#xf3; az emberi l&#xe1;t&#xf3;rendszer&#xe9;hez, &#xed;gy megfelel&#x151; text&#xfa;ra reprezent&#xe1;ci&#xf3;ra &#xe9;s diszkrimin&#xe1;ci&#xf3;ra"/>
</node>
</node>
<node CREATED="1465427399325" FOLDED="true" ID="ID_544496559" MODIFIED="1465435114650" TEXT="38. Milyen r&#xe9;gi&#xf3;n&#xf6;vel&#x151; elj&#xe1;r&#xe1;sokat ismer&#xfc;nk. P&#xe1;r sz&#xf3;ban mutassa be &#x151;ket.">
<node CREATED="1465432960212" FOLDED="true" ID="ID_1334437380" MODIFIED="1465435078594" TEXT="Kiindul&#xe1;skor a pixelek egyenk&#xe9;nt k&#xfc;l&#xf6;n halmazokat alkotnak. &#xd6;sszehasonl&#xed;tjuk &#x151;ket a szomsz&#xe9;daikkal, hasonl&#xf3;s&#xe1;g eset&#xe9;n &#xf6;sszevonjuk a halmazokat. Hasonl&#xf3;s&#xe1;g lehet:">
<node CREATED="1465432973212" ID="ID_1414255782" MODIFIED="1465432973874" TEXT="Kiv&#xe1;lasztott (sz&#xed;n)csatorn&#xe1;k"/>
<node CREATED="1465432975696" ID="ID_414451328" MODIFIED="1465432979339" TEXT="def&#xf3;kusz&#xe1;lts&#xe1;g"/>
<node CREATED="1465432980561" ID="ID_1024456505" MODIFIED="1465432985530" TEXT="M&#xe9;lys&#xe9;g (m&#xe9;lys&#xe9;gi k&#xe9;pen)"/>
</node>
<node CREATED="1465433116777" ID="ID_942361203" MODIFIED="1465433117272" TEXT="SRM (Statisztikus r&#xe9;gi&#xf3;n&#xf6;vel&#xe9;s) Gr&#xe1;f s&#xfa;lyoz&#xe1;s a k&#xfc;l. alapj&#xe1;n."/>
<node CREATED="1465433122751" ID="ID_461504293" MODIFIED="1465433123092" TEXT="Split &amp; Merge &#xf0b7; Sz&#xe9;tv&#xe1;laszt&#xe1;s csak hasonl&#xf3; (bel&#xfc;l) elemekre &#xf0b7; Hasonl&#xf3;s&#xe1;g alapj&#xe1;n egyes&#xed;t&#xe9;s"/>
</node>
</node>
</node>
<node CREATED="1465399090795" FOLDED="true" ID="ID_601877595" MODIFIED="1465603989303" POSITION="left" TEXT="II. A 3D k&#xe9;pfeldolgoz&#xe1;s alapjai">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1465399113539" FOLDED="true" ID="ID_1071678878" MODIFIED="1465448091062" TEXT="7. Matematikai alapok, Projekt&#xed;v geometria">
<node CREATED="1465435247117" FOLDED="true" ID="ID_233351485" MODIFIED="1465448088638" TEXT="39. Adja meg egy inhomog&#xe9;n line&#xe1;ris egyenletrendszer &#xe1;ltal&#xe1;nos alakj&#xe1;t! Mutassa be a legkisebb n&#xe9;gyzetek (LS) m&#xf3;dszer&#xe9;t!">
<node CREATED="1465435235817" ID="ID_457367011" MODIFIED="1465435236343" TEXT="Line&#xe1;ris egyenletrendszer: A &#x2219; x = b, ahol A &#x2208; R m&#xd7;n ; x &#x2208; R n ; b &#x2208; R m A: az egy&#xfc;tthat&#xf3;m&#xe1;trix, ezt vizsg&#xe1;lhatjuk. Az egyenletrendszer megold&#xe1;sa az oszlopvektorok line&#xe1;ris kombin&#xe1;ci&#xf3;ja: a 1 x 1 + a 2 x 2 + &#x22ef; + a n x n = b A line&#xe1;ris egyenletrendszer megoldhat&#xf3;, ha b el&#x151;&#xe1;ll az A m&#xe1;trix oszlopvektorainak line&#xe1;ris kombin&#xe1;ci&#xf3;jak&#xe9;nt, azaz benne van A oszlopter&#xe9;ben. A line&#xe1;ris egyenletrendszer minden b &#x2208; R m vektorra megoldhat&#xf3;, ha O(A) = R m ."/>
<node CREATED="1465435278987" ID="ID_24577565" MODIFIED="1465435279557" TEXT="LS m&#xf3;dszer &#xc1;ltal&#xe1;ban a param&#xe9;terek sz&#xe1;m&#xe1;n&#xe1;l t&#xf6;bb m&#xe9;r&#xe9;si eredm&#xe9;ny &#xe1;ll rendelkez&#xe9;s&#xfc;nkre, de a m&#xe9;r&#xe9;si pontatlans&#xe1;gok &#xe9;s zajok miatt az egyenletrendszer nagyon kis val&#xf3;sz&#xed;n&#x171;s&#xe9;ggel oldhat&#xf3; meg. A megold&#xe1;s legjobb k&#xf6;zel&#xed;t&#xe9;se az LS (Least Squares, legkisebb n&#xe9;gyzetek) m&#xf3;dszerrel kaphat&#xf3; meg. Nev&#xe9;t arr&#xf3;l kapta, hogy az elt&#xe9;r&#xe9;sek n&#xe9;gyzet&#xf6;sszeg&#xe9;t igyekszik minimaliz&#xe1;lni. Mivel az oszlopt&#xe9;r &#xe9;s transzpon&#xe1;lt nullt&#xe9;r egym&#xe1;s mer&#x151;leges kieg&#xe9;sz&#xed;t&#x151; alterei, b&#xe1;rmely b &#x2208; R m vektor el&#x151;&#xe1;ll b = &#x3c3; + n form&#xe1;ban, ahol &#x3c3; &#x2208; O(A), n &#x2208; N(A T ). Ekkor A &#x2219; x = &#x3c3; A T &#x2219; b = A T &#x2219; &#x3c3; + A T &#x2219; n = A T &#x2219; &#x3c3; = A T &#x2219; (A &#x2219; x) x&#x302; = (A T &#x2219; A) &#x2212;1 &#x2219; A T &#x2219; b a megold&#xe1;s legjobb k&#xf6;zel&#xed;t&#xe9;se (optim&#xe1;lis megold&#xe1;s, LS becsl&#x151;)"/>
</node>
<node CREATED="1465435257570" FOLDED="true" ID="ID_1277537816" MODIFIED="1465448086633" TEXT="40. Hogyan oldhat&#xf3; meg egy homog&#xe9;n line&#xe1;ris egyenletrendszer LS m&#xf3;dszerrel? Mit &#xe9;rt&#xfc;nk szingul&#xe1;ris &#xe9;rt&#xe9;k &#xe9;s vektor alatt?">
<node CREATED="1465435295145" ID="ID_1259101973" MODIFIED="1465435295768" TEXT="Az SVD (szingul&#xe1;ris &#xe9;rt&#xe9;k) felbont&#xe1;s b&#xe1;zistranszform&#xe1;ci&#xf3;, arra haszn&#xe1;ljuk, hogy a m&#xe1;trixainkat olyan ortonorm&#xe1;lt b&#xe1;zisban &#xed;rhassuk fel, ahol diagon&#xe1;lisak. A diagon&#xe1;lis m&#xe1;trixokat az&#xe9;rt szeretj&#xfc;k, mert ir&#xe1;nyf&#xfc;gg&#x151; er&#x151;s&#xed;t&#xe9;seket jellemeznek (legnagyobb, legkisebb -&gt; rendszerek stabilit&#xe1;sa). A = U &#x2219; &#x3a3; &#x2219; V T , ahol U &#x2208; R m&#xd7;m , &#x3a3; &#x2208; R m&#xd7;n , V &#x2208; R n&#xd7;n U &#xe9;s V b&#xe1;zistranszform&#xe1;ci&#xf3;s m&#xe1;trixok, ortogon&#xe1;lisak (ez&#xe9;rt ortonorm&#xe1;lt b&#xe1;zisokra visznek). &#x3a3;: a szingul&#xe1;ris &#xe9;rt&#xe9;kekb&#x151;l (&#x3c3; 1 , &#x3c3; 2 ... &#x3c3; m ) k&#xe9;pzett diagon&#xe1;lis m&#xe1;trix. Konvencion&#xe1;lisan a szingul&#xe1;ris &#xe9;rt&#xe9;kek cs&#xf6;kken&#x151; sorrendben szerepelnek. A pozit&#xed;v &#x3c3; 1 &#x2265;&#x3c3; 2 &#x2265;...&#x2265;&#x3c3; r &gt;0 sz&#xe1;mok az r-rang&#xfa; val&#xf3;s (komplex) A m&#xe1;trix szingul&#xe1;ris &#xe9;rt&#xe9;kei, ha van olyan {v 1 , ..., v r } ortonorm&#xe1;lt b&#xe1;zisa a sort&#xe9;rnek (konjug&#xe1;ltj&#xe1;nak) &#xe9;s {u 1 , ..., u r } ortonorm&#xe1;lt b&#xe1;zisa az oszlopt&#xe9;rnek (konjug&#xe1;ltj&#xe1;nak), hogy A &#x2219; v i = &#x3c3; i &#x2219; u i , i = 1, ... , r A v i vektorokat bal, az u i vektorokat jobb szingul&#xe1;ris vektoroknak nevezz&#xfc;k."/>
</node>
<node CREATED="1465435565670" FOLDED="true" ID="ID_457181542" MODIFIED="1465448084927" TEXT="41. Adja meg a lehets&#xe9;ges geometriai transzform&#xe1;ci&#xf3;k t&#xed;pusait, &#xe9;s a m&#xe1;trixaik &#xe1;ltal&#xe1;nos alakj&#xe1;t! Milyen transzform&#xe1;ci&#xf3;kat engednek meg &#xe9;s milyen tulajdons&#xe1;gokat &#x151;riznek meg az egyes t&#xed;pusok?">
<node CREATED="1465435571073" ID="ID_184208297" MODIFIED="1465435579690" TEXT="Euklideszi transzform&#xe1;ci&#xf3;">
<node CREATED="1465435581247" ID="ID_1089337586" MODIFIED="1465435584178" TEXT="Nincs sk&#xe1;l&#xe1;z&#xe1;s"/>
</node>
<node CREATED="1465435589288" ID="ID_407668145" MODIFIED="1465435593562" TEXT="Hasonl&#xf3;s&#xe1;gi transzform&#xe1;ci&#xf3;">
<node CREATED="1465435594682" ID="ID_447933712" MODIFIED="1465435604271" TEXT="Nincs ir&#xe1;nyf&#xfc;gg&#x151; sk&#xe1;l&#xe1;z&#xe1;s"/>
<node CREATED="1465435605463" ID="ID_1445475743" MODIFIED="1465435637175" TEXT="Nincs ny&#xed;r&#xe1;s"/>
</node>
<node CREATED="1465435648791" ID="ID_671223104" MODIFIED="1465435655226" TEXT="Afffin transzform&#xe1;ci&#xf3;">
<node CREATED="1465435656594" ID="ID_171494339" MODIFIED="1465435663946" TEXT="Meg&#x151;rzi az ide&#xe1;lis pontokat"/>
</node>
<node CREATED="1465435665310" ID="ID_1447548752" MODIFIED="1465435673823" TEXT="Projekt&#xed;v transzform&#xe1;ci&#xf3;"/>
</node>
<node CREATED="1465436059145" FOLDED="true" ID="ID_533892915" MODIFIED="1465448083862" TEXT="42. Mik a homog&#xe9;n koordin&#xe1;t&#xe1;k &#xe9;s mik a haszn&#xe1;latuk el&#x151;nyei? Mi az az ide&#xe1;lis pont?">
<node CREATED="1465436505902" ID="ID_1835078247" MODIFIED="1465436506382" TEXT="Az olyan koordin&#xe1;ta-rendszereket nevezik homog&#xe9;nnek, amelyekben a pontot azonos&#xed;t&#xf3; rendezett p&#xe1;r (h&#xe1;rmas, n&#xe9;gyes stb.) elemeit egy null&#xe1;t&#xf3;l k&#xfc;l&#xf6;nb&#xf6;z&#x151; sz&#xe1;mmal megszorozva ugyanazt a pontot azonos&#xed;t&#xf3; p&#xe1;rt (h&#xe1;rmast, n&#xe9;gyest...) kapjuk. (x 0 , x 1 ) = (&#x3bc; &#x2219; x 0 , &#x3bc; &#x2219; x 1 ) A homog&#xe9;n koordin&#xe1;t&#xe1;k igazi jelent&#x151;s&#xe9;g&#xe9;t az adja, hogy haszn&#xe1;latukkal az ide&#xe1;lis t&#xe9;relemek (pont, egyenes, s&#xed;k) is megadhat&#xf3;k"/>
<node CREATED="1465436523478" ID="ID_639952838" MODIFIED="1465436524149" TEXT="Az egyenes (1D-t&#xe9;r) projekt&#xed;v koordin&#xe1;t&#xe1;i"/>
<node CREATED="1465436532661" ID="ID_661576321" MODIFIED="1465436533234" TEXT="A projekt&#xed;v rendszert az egyenesen k&#xed;v&#xfc;li pontb&#xf3;l indul&#xf3; k&#xe9;t b&#xe1;zis-vektorral (a 0 , a 1 ) adjuk meg. A k&#xe9;t b&#xe1;zis egy tetsz&#x151;leges line&#xe1;ris kombin&#xe1;ci&#xf3;ja egy olyan vektort ad meg, aminek egyenese az adott egyenest egy P pontban metszi."/>
<node CREATED="1465436708456" ID="ID_602586370" MODIFIED="1465436709094" TEXT="de&#xe1;lis pont: A s&#xed;k k&#xe9;t egyenese vagy p&#xe1;rhuzamos, vagy pedig van egy k&#xf6;z&#xf6;s pontjuk. Ezt a k&#xe9;tf&#xe9;les&#xe9;get megsz&#xfc;ntethetj&#xfc;k az&#xe1;ltal, hogy az egyenes pontjainak az &#xf6;sszess&#xe9;g&#xe9;t egy ide&#xe1;lis pontnak (v&#xe9;gtelen t&#xe1;voli pont) mondott elemmel b&#x151;v&#xed;tj&#xfc;k, m&#xe9;gpedig k&#xe9;t egyenes pontjainak az &#xf6;sszess&#xe9;g&#xe9;t akkor &#xe9;s csak akkor b&#x151;v&#xed;tj&#xfc;k ugyanazzal az &#xfa;j elemmel, ha a k&#xe9;t egyenes p&#xe1;rhuzamos. Az egy s&#xed;kban fekv&#x151; egyenesek ide&#xe1;lis pontjai alkotj&#xe1;k a s&#xed;k ide&#xe1;lis egyenes&#xe9;t. A p&#xe1;rhuzamos s&#xed;kok ide&#xe1;lis egyenesei k&#xf6;z&#xf6;sek. A t&#xe1;jk&#xe9;pen a v&#xed;zszintes s&#xed;kok ide&#xe1;lis egyeneseinek k&#xe9;pe a horizont. A t&#xe9;r k&#xfc;l&#xf6;nb&#xf6;z&#x151; &#xe1;ll&#xe1;s&#xfa; s&#xed;kjainak ide&#xe1;lis egyenesei alkotj&#xe1;k a t&#xe9;r (egyetlen) ide&#xe1;lis s&#xed;kj&#xe1;t."/>
</node>
<node CREATED="1465436073840" FOLDED="true" ID="ID_1719878487" MODIFIED="1465448082310" TEXT="43. Adja meg a projekt&#xed;v t&#xe9;rb&#x151;l a projekt&#xed;v s&#xed;kra t&#xf6;rt&#xe9;n&#x151; vet&#xed;t&#xe9;s egyenlet&#xe9;t! Mi az elt&#x171;n&#x151; pont?">
<node CREATED="1465436885741" ID="ID_1162955318" MODIFIED="1465436886655" TEXT="Vet&#xed;t&#xe9;s a projekt&#xed;v t&#xe9;rb&#x151;l a projekt&#xed;v s&#xed;kra: P 3 &#x2192; P 2"/>
<node CREATED="1465436888786" ID="ID_1502702788" MODIFIED="1465436900993" TEXT="Elt&#x171;n&#x151; pont P&#xe1;rhuzamos P 3 -beli egyenesek metsz&#xe9;spontja, az adott ir&#xe1;nyban l&#xe9;v&#x151; ide&#xe1;lis pont."/>
<node CREATED="1465436915460" ID="ID_1056656483" MODIFIED="1465436917990" TEXT="A P 3 -beli ide&#xe1;lis pont k&#xe9;pe P 2 -ben nem biztos, hogy ide&#xe1;lis pont lesz!">
<node CREATED="1465436927756" ID="ID_595011958" MODIFIED="1465436937630" TEXT="Csak, ha (X,Y,Z) mer&#x151;leges (t 31 , t 32 , t 33 )-ra"/>
<node CREATED="1465436934292" ID="ID_1447224560" MODIFIED="1465436934651" TEXT="Ha az egyenesek p&#xe1;rhuzamosak a k&#xe9;ps&#xed;kkal!"/>
</node>
</node>
</node>
<node CREATED="1465399130488" FOLDED="true" ID="ID_952979736" MODIFIED="1465448091998" TEXT="8. Kameramodellek, kalibr&#xe1;ci&#xf3;">
<node CREATED="1465436083895" FOLDED="true" ID="ID_948563789" MODIFIED="1465448081063" TEXT="44. Ismertesse a pinhole kameramodellt! (Rajz, egyenletek, param&#xe9;terek, m&#xe1;trixok)">
<node CREATED="1465437366655" ID="ID_1630623432" MODIFIED="1465437367333" TEXT="T&#xe1;volabbi objektumok kisebbek, p&#xe1;rhuzamos egyenesek tal&#xe1;lkoznak."/>
<node CREATED="1465437373774" ID="ID_1930363102" MODIFIED="1465437374388" TEXT="A vil&#xe1;g koordin&#xe1;t&#xe1;i: X, Y, Z A k&#xe9;p koordin&#xe1;t&#xe1;i: x, y"/>
<node CREATED="1465437382876" ID="ID_575159506" MODIFIED="1465437383243" TEXT="Vet&#xed;t&#xe9;s egyenlete: x = A &#x2219; [R t] &#x2219; X = P &#x2219; X A vet&#xed;t&#xe9;s m&#xe1;trixa: P = A &#x2219; [R t]"/>
<node CREATED="1465437391219" ID="ID_799819874" MODIFIED="1465437391923" TEXT="A vet&#xed;t&#xe9;s m&#xe1;trixa felbonthat&#xf3; bels&#x151; &#xe9;s k&#xfc;ls&#x151; param&#xe9;terekre.">
<node CREATED="1465437397667" ID="ID_1448253339" MODIFIED="1465437398005" TEXT="K&#xfc;ls&#x151;: T ext = [R t] - A kamera helyzet&#xe9;t&#x151;l f&#xfc;ggenek a vil&#xe1;g koordin&#xe1;tarendszerben"/>
<node CREATED="1465437404288" ID="ID_102936410" MODIFIED="1465437404697" TEXT="Bels&#x151;: A - A kamera param&#xe9;terei (kameram&#xe1;trix)">
<node CREATED="1465437412048" ID="ID_1805366342" MODIFIED="1465437412495" TEXT="o Pixels&#x171;r&#x171;s&#xe9;g (pix/mm) (k,l)"/>
<node CREATED="1465437420614" ID="ID_128482829" MODIFIED="1465437421118" TEXT="F&#xf3;kuszt&#xe1;v (f)"/>
<node CREATED="1465437430237" ID="ID_316039085" MODIFIED="1465437430528" TEXT="Skew (&#x398;)"/>
<node CREATED="1465437435701" ID="ID_550400762" MODIFIED="1465437435996" TEXT="Princip&#xe1;lis pont (p x , p y )"/>
</node>
</node>
</node>
<node CREATED="1465436092716" FOLDED="true" ID="ID_898578488" MODIFIED="1465448079351" TEXT="45. Mi a kamerakalibr&#xe1;ci&#xf3; c&#xe9;lja? Ismertesse a 3D markeres kalibr&#xe1;ci&#xf3; elv&#xe9;t &#xe9;s mutassa be a l&#xe9;p&#xe9;seit!">
<node CREATED="1465437484330" ID="ID_1719699226" MODIFIED="1465437484652" TEXT="Ha a k&#xe9;peket a k&#xe9;s&#x151;bbiekben analiz&#xe1;lni akarjuk, akkor a be&#xe1;ll&#xed;t&#xe1;s pontoss&#xe1;g&#xe1;t, a vizsg&#xe1;lt ter&#xfc;let m&#xe9;reteit &#xe9;s azonos&#xed;t&#xe1;si pontjait fel kell t&#xe9;rk&#xe9;pezn&#xfc;nk. Szeretn&#xe9;nk a kamera bels&#x151; &#xe9;s k&#xfc;ls&#x151; param&#xe9;tereit kisz&#xe1;molni!"/>
<node CREATED="1465437496695" ID="ID_1744944281" MODIFIED="1465437497819" TEXT="Elve: Van egy 3D objektumunk, azon el&#x151;re ismert markerek. A markerek k&#xe9;p&#xe9;t akarjuk meghat&#xe1;rozni."/>
<node CREATED="1465437499631" ID="ID_10682007" MODIFIED="1465437502160" TEXT="L&#xe9;p&#xe9;sei">
<node CREATED="1465437542396" ID="ID_1495377393" MODIFIED="1465437588349" TEXT="Markerek megkeres&#xe9;se ">
<node CREATED="1465437555224" ID="ID_1612819366" MODIFIED="1465437556343" TEXT="Sarokdetekt&#xe1;l&#xe1;ssal "/>
<node CREATED="1465437572525" ID="ID_1206670038" MODIFIED="1465437573052" TEXT="Egyenesek metsz&#xe9;spontja"/>
</node>
<node CREATED="1465437581781" ID="ID_1310464944" MODIFIED="1465437582213" TEXT="2. P meghat&#xe1;roz&#xe1;sa (projekci&#xf3;s m&#xe1;trix)"/>
<node CREATED="1465437608203" ID="ID_1254375535" MODIFIED="1465437608530" TEXT="A, R, t meghat&#xe1;roz&#xe1;sa (k&#xfc;ls&#x151;-bels&#x151; param&#xe9;terek)"/>
<node CREATED="1465437631802" ID="ID_1581028810" MODIFIED="1465437636870" TEXT="Becsl&#xe9;sek finom&#xed;t&#xe1;sa"/>
</node>
</node>
<node CREATED="1465436099697" FOLDED="true" ID="ID_1349788263" MODIFIED="1465448076726" TEXT="46. Mi a kamerakalibr&#xe1;ci&#xf3; c&#xe9;lja? Ismertesse a sakkt&#xe1;bl&#xe1;s kalibr&#xe1;ci&#xf3; elv&#xe9;t &#xe9;s mutassa be a l&#xe9;p&#xe9;seit! (azokat is, amelyek a 3D markeres kalibr&#xe1;ci&#xf3;ban ugyanazok)">
<node CREATED="1465437665975" ID="ID_1348204570" MODIFIED="1465437666326" TEXT="Elve: gyakran nincsen 3D kalibr&#xe1;ci&#xf3;s objektum, ekkor 2D objektumot haszn&#xe1;lunk. Ismert sz&#xe1;m&#xfa; sakkt&#xe1;blaszer&#x171;en elhelyezked&#x151; marker&#xfc;nk van. Az egym&#xe1;st&#xf3;l m&#xe9;rt t&#xe1;vols&#xe1;guk is ismert."/>
<node CREATED="1465437675437" ID="ID_1695280623" MODIFIED="1465437675924" TEXT="Sarokdetekt&#xe1;l&#xe1;s">
<node CREATED="1465437677004" ID="ID_660177652" MODIFIED="1465437683437" TEXT="Mivel nincs 3D inform&#xe1;ci&#xf3;nk a markerekr&#x151;l, P m&#xe1;trix nem hat&#xe1;rozhat&#xf3; meg egy&#xe9;rtelm&#x171;en."/>
</node>
<node CREATED="1465437696262" ID="ID_1874034726" MODIFIED="1465437696916" TEXT="Homogr&#xe1;fia (H m&#xe1;trix meghat&#xe1;roz&#xe1;sa DLT- vel)"/>
</node>
<node CREATED="1465436107191" FOLDED="true" ID="ID_1282342705" MODIFIED="1465448078062" TEXT="47. Hogyan lehet a kamer&#xe1;k torz&#xed;t&#xe1;s&#xe1;t figyelembe venni a kalibr&#xe1;ci&#xf3; sor&#xe1;n?">
<node CREATED="1465437816662" ID="ID_1033659643" MODIFIED="1465437817165" TEXT="Csak a radi&#xe1;lis torz&#xed;t&#xe1;st vessz&#xfc;k figyelembe, mert &#xe1;ltal&#xe1;ban ez a domin&#xe1;ns."/>
<node CREATED="1465437832744" ID="ID_864200020" MODIFIED="1465437833125" TEXT="Az ide&#xe1;lis &#xe9;s a t&#xe9;nyleges pont k&#xf6;zti kapcsolat"/>
</node>
<node CREATED="1465436114290" FOLDED="true" ID="ID_1016119224" MODIFIED="1465448074470" TEXT="48. Hogyan n&#xe9;z ki a sztere&#xf3; elrendez&#xe9;s? Mi az epipol&#xe1;ris egyenes? Mi az esszenci&#xe1;lis &#xe9;s a fundament&#xe1;lis m&#xe1;trix?">
<node CREATED="1465437927701" ID="ID_315744675" MODIFIED="1465437933023" TEXT="sztere&#xf3; erendez&#xe9;s">
<node CREATED="1465437975123" ID="ID_663152896" MODIFIED="1465437982122" TEXT="O_L &#xe9;s O_R"/>
</node>
<node CREATED="1465437971991" ID="ID_325627928" MODIFIED="1465437973086" TEXT="Epipol&#xe1;ris egyenes: Azok az egyenesek, amelyek ment&#xe9;n az elmozdul&#xe1;s t&#xf6;rt&#xe9;nik! (piros)">
<node CREATED="1465438002987" ID="ID_22973644" MODIFIED="1465438021640" TEXT="Nem biztos, hogy a k&#xe9;pen is egyenesek (torz&#xed;t&#xe1;s, stb)"/>
<node CREATED="1465438023334" ID="ID_1062823075" MODIFIED="1465438027742" TEXT="Rektifik&#xe1;ci&#xf3;"/>
</node>
<node CREATED="1465438063451" ID="ID_682484896" MODIFIED="1465438063842" TEXT="Az esszenci&#xe1;lis m&#xe1;trix (E) csak a k&#xe9;t k&#xe9;ps&#xed;k koordin&#xe1;ta rendszer k&#xf6;z&#xf6;tti kapcsolatot &#xed;rja le, a fundament&#xe1;lis m&#xe1;trix (F) a pixelkoordin&#xe1;t&#xe1;k k&#xf6;z&#xf6;tti &#xf6;sszef&#xfc;gg&#xe9;st is tartalmazza. Ez teh&#xe1;t azt jelenti, hogy az esszenci&#xe1;lis m&#xe1;trixhoz a k&#xfc;ls&#x151;, m&#xed;g a fundament&#xe1;lis m&#xe1;trixhoz a k&#xfc;ls&#x151; &#xe9;s bels&#x151; param&#xe9;terek is sz&#xfc;ks&#xe9;gesek. F m&#xe1;trix 3x3-as, de rangja 2 kell legyen, nem invert&#xe1;lhat&#xf3;. A fundament&#xe1;lis m&#xe1;trix seg&#xed;ts&#xe9;g&#xe9;vel fel&#xed;rhat&#xf3; az &#xfa;gynevezett epipol&#xe1;ris &#xf6;sszef&#xfc;gg&#xe9;s egyenlete: P LT &#x2219; F &#x2219; P R = 0, ahol P LT a bal oldali k&#xe9;ppont transzpon&#xe1;ltja, P R pedig a jobb oldali k&#xe9;ppont. Abban az esetben, ha m&#xe1;r vannak k&#xe9;ppontjaink, ezen egyenletet felhaszn&#xe1;lva &#xed;rhat&#xf3; k&#xe9;ppontp&#xe1;ros&#xed;t&#xf3; algoritmus. A fundament&#xe1;lis &#xe9;s esszenci&#xe1;lis m&#xe1;trix egym&#xe1;sb&#xf3;l kisz&#xe1;m&#xed;that&#xf3;, ha ismerj&#xfc;k a sztere&#xf3; rendszer k&#xfc;ls&#x151; &#xe9;s bels&#x151; param&#xe9;tereit. Amennyiben valamelyik param&#xe9;terk&#xe9;szlet hi&#xe1;nyzik, a m&#xe1;trixokat csak megk&#xf6;zel&#xed;t&#x151;leg tudjuk kisz&#xe1;molni."/>
</node>
<node CREATED="1465436125030" FOLDED="true" ID="ID_1090601763" MODIFIED="1465448073135" TEXT="49. Mi a sztere&#xf3; kalibr&#xe1;ci&#xf3; c&#xe9;lja? Ismertesse a 7 &#xe9;s 8 pontos kalibr&#xe1;ci&#xf3;s algoritmusok elv&#xe9;t &#xe9;s mutassa be a l&#xe9;p&#xe9;seiket!">
<node CREATED="1465438303477" ID="ID_1037001270" MODIFIED="1465438303762" TEXT="K&#xe9;palkot&#xe1;s: P 3 &#x2192; P 2 Ha vissza akarjuk &#xe1;ll&#xed;tani a t&#xe9;rbeli (3D) inform&#xe1;ci&#xf3;t, legal&#xe1;bb k&#xe9;t k&#xe9;p kell. A k&#xe9;t k&#xe9;p k&#xf6;zti kapcsolatot fel kell t&#xe1;rni!"/>
<node CREATED="1465438312643" ID="ID_104413006" MODIFIED="1465438312988" TEXT="7 pontos elve:">
<node CREATED="1465438343283" ID="ID_1137649233" MODIFIED="1465438382707" TEXT="Fundament&#xe1;lis m&#xe1;trix szingul&#xe1;ris m&#xe1;trix kell, hogy legyen. Plusz egy megk&#xf6;t&#xe9;s &#x2192; 7 pont el&#xe9;g L&#xe9;p&#xe9;sek">
<node CREATED="1465438346594" ID="ID_744915572" MODIFIED="1465438392998" TEXT="1. DLT m&#xf3;dszerrel &#xe1;ltal&#xe1;nos megold&#xe1;s, 2 dimenzi&#xf3;s megold&#xe1;shalmaz"/>
<node CREATED="1465438365667" ID="ID_1981587514" MODIFIED="1465438377448" TEXT="2. Megold&#xe1;s alakja: f = &#x3bb; &#x2219; f 0 + &#x3bc; &#x2219; f 1"/>
<node CREATED="1465438471508" ID="ID_541451774" MODIFIED="1465438471770" TEXT="3. det(F)=0 felt&#xe9;telb&#x151;l a param&#xe9;terek sz&#xe1;mol&#xe1;sa"/>
</node>
</node>
<node CREATED="1465438483217" ID="ID_1341547115" MODIFIED="1465438483768" TEXT="8 pontos elve:">
<node CREATED="1465438511012" ID="ID_423230459" MODIFIED="1465438511485" TEXT="F szingul&#xe1;ris kell, hogy legyen: 8 pontos m&#xf3;dszerrel nem lesz az!">
<node CREATED="1465438525980" ID="ID_906148282" MODIFIED="1465438532867" TEXT="1. Kisz&#xe1;moljuk F SVD felbont&#xe1;s&#xe1;t"/>
<node CREATED="1465438539258" ID="ID_1900194987" MODIFIED="1465438540064" TEXT="2. A legkisebb szingul&#xe1;ris &#xe9;rt&#xe9;ket null&#xe1;ra &#xe1;ll&#xed;tjuk"/>
<node CREATED="1465438548648" ID="ID_64208898" MODIFIED="1465438549038" TEXT="3. A kapott F&apos; lesz az F-hez legk&#xf6;zelebb l&#xe9;v&#x151; szingul&#xe1;ris m&#xe1;trix"/>
</node>
<node CREATED="1465438558014" ID="ID_922520381" MODIFIED="1465438558314" TEXT="A 8 pontos kalibr&#xe1;ci&#xf3; rossz eredm&#xe9;nyt ad zaj eset&#xe9;n! &#xc9;rz&#xe9;keny a sk&#xe1;l&#xe1;ra &#xe9;s az orig&#xf3; megv&#xe1;laszt&#xe1;s&#xe1;ra!"/>
<node CREATED="1465438569874" ID="ID_1901828994" MODIFIED="1465438570802" TEXT="Pontok normaliz&#xe1;l&#xe1;sa:">
<node CREATED="1465438580624" ID="ID_913532523" MODIFIED="1465438581111" TEXT="A pontokat &#xfa;gy toljuk el, hogy az &#xe1;tlaguk pont az orig&#xf3;ban legyen!"/>
<node CREATED="1465438588429" ID="ID_424812863" MODIFIED="1465438589188" TEXT="A sk&#xe1;lafaktort &#xfa;gy v&#xe1;lasszuk meg, hogy a pontok RMS t&#xe1;vols&#xe1;ga az orig&#xf3;t&#xf3;l pont &#x221a;2 legyen."/>
</node>
<node COLOR="#ff0000" CREATED="1465438614199" ID="ID_311142069" MODIFIED="1465438617807" TEXT="SOHA NE HASZN&#xc1;LJUK A 8 PONTOS ALGORITMUST NORMALIZ&#xc1;LATLAN PONTOKKAL!!!"/>
</node>
</node>
<node CREATED="1465436135241" FOLDED="true" ID="ID_1040793855" MODIFIED="1465448071591" TEXT="50. Ismertesse a RANSAC algoritmust (elv, m&#x171;k&#xf6;d&#xe9;s, el&#x151;ny&#xf6;k, h&#xe1;tr&#xe1;nyok) &#xe9;s a felhaszn&#xe1;l&#xe1;si lehet&#x151;s&#xe9;geit!">
<node CREATED="1465438729332" ID="ID_229272301" MODIFIED="1465438729773" TEXT="RANdom SAmple Consensus"/>
<node CREATED="1465438745021" ID="ID_499004312" MODIFIED="1465438746158" TEXT="Felhaszn&#xe1;l&#xe1;si lehet&#x151;s&#xe9;gek:">
<node CREATED="1465438792442" ID="ID_1048798824" MODIFIED="1465438792923" TEXT="Felhaszn&#xe1;l&#xe1;si lehet&#x151;s&#xe9;gek: Univerz&#xe1;lis algoritmus, iterat&#xed;v robusztus becsl&#xe9;si elj&#xe1;r&#xe1;s, nem csak kalibr&#xe1;ci&#xf3;ra, hanem nagyon sok egy&#xe9;b param&#xe9;terilleszt&#xe9;si feladatra haszn&#xe1;lhat&#xf3;. Kalibr&#xe1;ci&#xf3;, 2D/3D alakfelismer&#xe9;s. Nem determinisztikus, csak egy adott val&#xf3;sz&#xed;n&#x171;s&#xe9;ggel ad helyes eredm&#xe9;nyt, ez a val&#xf3;sz&#xed;n&#x171;s&#xe9;g az iter&#xe1;ci&#xf3;k sz&#xe1;m&#xe1;nak n&#xf6;vel&#xe9;s&#xe9;vel n&#xf6;velhet&#x151;."/>
</node>
<node CREATED="1465438751654" ID="ID_684074968" MODIFIED="1465438753280" TEXT="L&#xe9;p&#xe9;sei">
<node CREATED="1465438839901" ID="ID_1164463775" MODIFIED="1465438840790" TEXT="Kiindul&#xe1;s: sok pontp&#xe1;runk van"/>
<node CREATED="1465438847474" ID="ID_61779014" MODIFIED="1465438847817" TEXT="1. V&#xe9;letlen 7/8 pontp&#xe1;r halmazok kiv&#xe1;laszt&#xe1;sa"/>
<node CREATED="1465438859079" ID="ID_950900108" MODIFIED="1465438859546" TEXT="2. 7/8 pontos kalibr&#xe1;ci&#xf3; elv&#xe9;gz&#xe9;se minden halmazra"/>
<node CREATED="1465438873457" ID="ID_20537130" MODIFIED="1465438873922" TEXT="3. Megn&#xe9;zni, hogy h&#xe1;ny pontp&#xe1;r illeszkedik kis hib&#xe1;val az adott fundament&#xe1;lis m&#xe1;trixra"/>
<node CREATED="1465438880353" ID="ID_1946536500" MODIFIED="1465438880627" TEXT="4. A legjobb kiv&#xe1;laszt&#xe1;sa"/>
</node>
<node CREATED="1465438754742" ID="ID_1206112728" MODIFIED="1465438761485" TEXT="El&#x151;ny&#xf6;k">
<node CREATED="1465438920985" ID="ID_1988790668" MODIFIED="1465438925298" TEXT="Egyszer&#x171;"/>
<node CREATED="1465438932703" ID="ID_832235439" MODIFIED="1465438933321" TEXT="50%-n&#xe1;l nagyobb ar&#xe1;ny&#xfa; outlier (piros pontok) eset&#xe9;n is m&#x171;k&#xf6;dik"/>
<node CREATED="1465438942754" ID="ID_662155807" MODIFIED="1465438943345" TEXT="Zajos esetben is j&#xf3;l haszn&#xe1;lhat&#xf3;, ekkora m&#xe9;rt&#xe9;k&#x171; zaj eset&#xe9;n az LS becsl&#xe9;s teljesen cs&#x151;d&#xf6;t mond"/>
</node>
<node CREATED="1465438763491" ID="ID_1912163494" MODIFIED="1465438766624" TEXT="H&#xe1;tr&#xe1;nyok">
<node CREATED="1465438958178" ID="ID_213484251" MODIFIED="1465438958474" TEXT="V&#xe9;letlenszer&#x171;, nem garant&#xe1;lt, hogy megtal&#xe1;lja a j&#xf3; megold&#xe1;st!"/>
<node CREATED="1465438967568" ID="ID_181894036" MODIFIED="1465438967913" TEXT="Ha szeretn&#xe9;nk biztosra menni, akkor nagyon sok v&#xe9;letlen jel&#xf6;ltet kell &#xe1;ll&#xed;tani: nagyon lass&#xfa; tud lenni!"/>
</node>
</node>
</node>
<node CREATED="1465399143974" FOLDED="true" ID="ID_1876980175" MODIFIED="1465448093166" TEXT="9. 3D rekonstrukci&#xf3;">
<node CREATED="1465436147569" FOLDED="true" ID="ID_564994811" MODIFIED="1465448065830" TEXT="51. Adja meg &#xe9;s r&#xf6;viden ismertesse a 3D rekonstrukci&#xf3; l&#xe9;p&#xe9;seit!">
<node CREATED="1465439103056" ID="ID_123985271" MODIFIED="1465439103494" TEXT="2D k&#xe9;pek &#x2192; Pontfelh&#x151; (3D pontok halmaza, lehet sz&#xed;n&#xfc;k is)"/>
<node CREATED="1465439112460" ID="ID_1329107187" MODIFIED="1465439113819" TEXT="Pontfelh&#x151; &#x2192; Magasabb szint&#x171; le&#xed;r&#xe1;s (Primit&#xed;vek; G&#xf6;rb&#xe9;k, fel&#xfc;letek; Mesh)"/>
<node CREATED="1465439116783" ID="ID_1795266920" MODIFIED="1465439494174" TEXT="1. Kalibr&#xe1;ci&#xf3;"/>
<node CREATED="1465439495603" ID="ID_583331371" MODIFIED="1465439503227" TEXT="2. Rektifik&#xe1;ci&#xf3; (b&#x151;vebben a k&#xf6;vetkez&#x151; k&#xe9;rd&#xe9;sben)"/>
<node CREATED="1465439534266" ID="ID_1302400240" MODIFIED="1465439534820" TEXT="3. Elmozdul&#xe1;s (diszparit&#xe1;s) meghat&#xe1;roz&#xe1;sa"/>
<node CREATED="1465439542753" ID="ID_535858748" MODIFIED="1465439543128" TEXT="4. Visszavet&#xed;t&#xe9;s 3D t&#xe9;rbe (projekci&#xf3;/h&#xe1;romsz&#xf6;gel&#xe9;s)"/>
</node>
<node CREATED="1465436157519" FOLDED="true" ID="ID_1987565888" MODIFIED="1465448070110" TEXT="52. Mi a rektifik&#xe1;ci&#xf3;? Mi a jelent&#x151;s&#xe9;ge?">
<node CREATED="1465439184962" ID="ID_510286250" MODIFIED="1465439185538" TEXT="Megfeleltet&#xe9;sek keres&#xe9;se a k&#xe9;t k&#xe9;pen neh&#xe9;z."/>
<node CREATED="1465439199800" ID="ID_1379861733" MODIFIED="1465439200934" TEXT="Egyszer&#x171;s&#xed;t&#xe9;s: Torz&#xed;tsuk el &#xfa;gy a k&#xe9;peket, hogy k&#xf6;zt&#xfc;k csak az egyik (&#xe1;ltal&#xe1;ban az x) ir&#xe1;nyban legyen elmozdul&#xe1;s. Vet&#xed;ts&#xfc;k a k&#xe9;peket egy k&#xf6;z&#xf6;s k&#xe9;ps&#xed;kra (projekt&#xed;v transzform&#xe1;ci&#xf3;). Az epipol&#xe1;ris egyenesek mind v&#xed;zszintesek lesznek, &#xed;gy csak az egyik ir&#xe1;nyban kell megfeleltet&#xe9;seket keresni!"/>
<node CREATED="1465439217517" ID="ID_1196233175" MODIFIED="1465439217819" TEXT="Torz&#xed;tatlan eset: Line&#xe1;ris transzform&#xe1;ci&#xf3;. Torz&#xed;t&#xe1;s eset&#xe9;n el&#x151;sz&#xf6;r azt kell elt&#xfc;ntetni."/>
<node CREATED="1465439223965" ID="ID_1931151703" MODIFIED="1465439224213" TEXT="Torz&#xed;t&#xe1;s t&#xe9;rk&#xe9;p: Torz&#xed;t&#xe1;s param&#xe9;terei alapj&#xe1;n pixel szinten megadott transzform&#xe1;ci&#xf3;."/>
</node>
<node CREATED="1465436164286" FOLDED="true" ID="ID_554730058" MODIFIED="1465448063487" TEXT="53. Mi a diszparit&#xe1;s? Milyen m&#xf3;dszereket ismer a k&#xe9;pz&#xe9;s&#xe9;re?">
<node CREATED="1465439645396" ID="ID_659823096" MODIFIED="1465439645775" TEXT="Az adott pixel &#xe9;s a m&#xe1;sik k&#xe9;pen megtal&#xe1;lt p&#xe1;rja k&#xf6;z&#xf6;tti x ir&#xe1;ny&#xfa; t&#xe1;vols&#xe1;g. Nem rektifik&#xe1;lt k&#xe9;pen hib&#xe1;s lesz! A v&#xed;zszintes ir&#xe1;ny ment&#xe9;n minden pixelhez/kulcsponthoz megpr&#xf3;b&#xe1;lunk p&#xe1;rt keresni a m&#xe1;sik k&#xe9;pen &#x2192; Diszparit&#xe1;s k&#xe9;p"/>
<node CREATED="1465439676722" ID="ID_1782130449" MODIFIED="1465439678922" TEXT="M&#xf3;dszerek">
<node CREATED="1465439679249" ID="ID_850457389" MODIFIED="1465439709891" TEXT="Pixel szint&#x171;">
<node CREATED="1465439739203" ID="ID_752825220" MODIFIED="1465439744843" TEXT="Block Matching"/>
<node CREATED="1465439745875" ID="ID_1480244955" MODIFIED="1465439765642" TEXT="Optical flow"/>
<node CREATED="1465439767394" ID="ID_69565769" MODIFIED="1465439773596" TEXT="Belief propagation"/>
</node>
<node CREATED="1465439711081" ID="ID_1562341575" MODIFIED="1465439728192" TEXT="K&#xe9;pjellemz&#x151; alap&#xfa;">
<node CREATED="1465439775639" ID="ID_456963802" MODIFIED="1465439780996" TEXT="SIFT, egy&#xe9;b algoritmusok"/>
</node>
</node>
</node>
<node CREATED="1465436178682" FOLDED="true" ID="ID_1849639921" MODIFIED="1465448040414" TEXT="54. Hogyan m&#x171;k&#xf6;dik a Block Matching (BM) algoritmus? Milyen probl&#xe9;ma megold&#xe1;s&#xe1;ra haszn&#xe1;lhat&#xf3; m&#xe9;g fel? Milyen m&#xf3;dszereket ismer a diszparit&#xe1;s simas&#xe1;g&#xe1;nak biztos&#xed;t&#xe1;s&#xe1;ra?">
<node CREATED="1465439884865" ID="ID_1913460759" MODIFIED="1465439885519" TEXT="Brute Force m&#xf3;dszer: Vessz&#xfc;k az adott pixel egy kis k&#xf6;rnyezet&#xe9;t, &#xe9;s megkeress&#xfc;k a m&#xe1;sik k&#xe9;pen azt a k&#xf6;rnyezetet, ami a legjobban illeszkedik. T&#xf6;bb hibaf&#xfc;ggv&#xe9;ny k&#xf6;z&#xfc;l v&#xe1;laszthatunk (pl. n&#xe9;gyzetes hiba, abszol&#xfa;t hiba &#xf6;sszege)."/>
<node CREATED="1465439922589" ID="ID_1866451393" MODIFIED="1465439922989" TEXT="Probl&#xe9;ma: A BM algoritmus nem veszi figyelembe a k&#xf6;zeli pixelek diszparit&#xe1;s&#xe1;t. A diszparit&#xe1;sban gyakori, nagy szakad&#xe1;sok lehetnek A val&#xf3;s&#xe1;gban a diszparit&#xe1;s &#xe1;ltal&#xe1;ban sima, mivel a kamer&#xe1;t&#xf3;l val&#xf3; t&#xe1;vols&#xe1;g is csak ritk&#xe1;n ugrik (objektumhat&#xe1;rok)."/>
<node CREATED="1465439935097" ID="ID_365623900" MODIFIED="1465439935320" TEXT="Megold&#xe1;s: A BM eredm&#xe9;nye mell&#xe9; vegy&#xfc;nk fel valamilyen glob&#xe1;lis, simas&#xe1;gi krit&#xe9;riumot!"/>
</node>
<node CREATED="1465436186671" FOLDED="true" ID="ID_1432556869" MODIFIED="1465448041470" TEXT="55. Hogyan lehet egy pont 3D koordin&#xe1;t&#xe1;it megkapni, amennyiben a kamer&#xe1;k param&#xe9;terei, valamint a pont k&#xe9;pei ismertek?">
<node CREATED="1465439999213" ID="ID_1567155059" MODIFIED="1465439999627" TEXT="Reprojekci&#xf3;: (x,y,d) &#x2192; (X,Y,Z)"/>
<node CREATED="1465440035024" ID="ID_865133632" MODIFIED="1465440035712" TEXT="Egy kalibr&#xe1;lt kamera eset&#xe9;n ismerj&#xfc;k azt a sugarat, amelyre az adott pixelhez tartoz&#xf3; 3D pont esik."/>
<node CREATED="1465440085269" ID="ID_1933644028" MODIFIED="1465440085824" TEXT="K&#xe9;t k&#xe9;p &#x2192; pontp&#xe1;rok &#x2192; k&#xe9;t sug&#xe1;r van minden pixelhez (H&#xe1;romsz&#xf6;gel&#xe9;s)"/>
</node>
<node CREATED="1465436196741" FOLDED="true" ID="ID_1116488345" MODIFIED="1465448042334" TEXT="56. Mi(k) a metrikus rekonstrukci&#xf3; lehets&#xe9;gess&#xe9;g&#xe9;nek felt&#xe9;tele(i)? Mi a rekonstrukci&#xf3; bizonytalans&#xe1;ga, ha ezek csak r&#xe9;szben vagy egy&#xe1;ltal&#xe1;n nem teljes&#xfc;lnek?">
<node CREATED="1465440148569" ID="ID_1853115034" MODIFIED="1465440158370" TEXT="A 3D pontok helyzet&#xe9;t egy el&#x151;re r&#xf6;gz&#xed;tett koordin&#xe1;ta-rendszerben, ismert m&#xe9;rt&#xe9;kegys&#xe9;g szerint (m, cm, inch) megadhatjuk. Felt&#xe9;tele, hogy mind a bels&#x151; (A), mind a k&#xfc;ls&#x151; ([R t]) param&#xe9;terek ismertek legyenek."/>
<node CREATED="1465440174396" ID="ID_769088949" MODIFIED="1465440175165" TEXT="Ha a k&#xfc;ls&#x151; param&#xe9;terek nem ismertek: A rekonstrukci&#xf3; csak egy sk&#xe1;lafaktor erej&#xe9;ig lesz egy&#xe9;rtelm&#x171;!"/>
<node CREATED="1465440193919" ID="ID_752374395" MODIFIED="1465440194486" TEXT="Kalibr&#xe1;latlan kamera: Se a k&#xfc;ls&#x151;, se a bels&#x151; param&#xe9;terek nem ismertek. A rekonstrukci&#xf3; egy ismeretlen projekt&#xed;v transzform&#xe1;ci&#xf3; erej&#xe9;ig lesz egy&#xe9;rtelm&#x171;."/>
</node>
</node>
<node CREATED="1465399151760" FOLDED="true" ID="ID_907448420" MODIFIED="1465448095238" TEXT="10. K&#xe9;pilleszt&#xe9;s">
<node CREATED="1465436206339" FOLDED="true" ID="ID_1568432041" MODIFIED="1465448043969" TEXT="57. Ismertesse az optikai &#xe1;raml&#xe1;s (optical flow) algoritmus c&#xe9;lj&#xe1;t, alapelv&#xe9;t &#xe9;s felt&#xe9;telez&#xe9;seit! &#xcd;rja fel az intenzit&#xe1;s &#xe1;raml&#xe1;s egyenletet! Milyen probl&#xe9;m&#xe1;i vannak az algoritmusnak?">
<node CREATED="1465441279722" ID="ID_223737732" MODIFIED="1465441280371" TEXT="Az intenzit&#xe1;salap&#xfa; k&#xe9;pilleszt&#xe9;s alapelve, hogyha tal&#xe1;lunk a k&#xe9;t k&#xe9;pen k&#xe9;t ugyanolyan sz&#xed;n&#x171; ter&#xfc;letet, akkor ezek egym&#xe1;ssal megfeleltethet&#x151;k (ez azonban csak er&#x151;s felt&#xe9;telez&#xe9;s). Lehets&#xe9;ges m&#xf3;dszer az optikai &#xe1;raml&#xe1;s algoritmus, amikor is pontp&#xe1;rokat k&#xe9;t, k&#xfc;l&#xf6;nb&#xf6;z&#x151; id&#x151;ben k&#xe9;sz&#xfc;lt felv&#xe9;telen keress&#xfc;k &#xe9;s a mozg&#xe1;st pr&#xf3;b&#xe1;ljuk le&#xed;rni. Az adott pixelt a k&#xf6;vetkez&#x151; k&#xe9;pen az el&#x151;z&#x151; poz&#xed;ci&#xf3;j&#xe1;nak k&#xf6;zel&#xe9;ben keress&#xfc;k. Gradiensk&#xe9;pz&#xe9;st alkalmazunk."/>
<node CREATED="1465441291198" ID="ID_363821943" MODIFIED="1465441292103" TEXT="Felt&#xe9;telez&#xe9;sek:">
<node CREATED="1465441312529" ID="ID_1391934828" MODIFIED="1465441322871" TEXT="Az egyes objektum intezit&#xe1;sa az id&#x151;ben &#xe1;lland&#xf3;"/>
<node CREATED="1465441324150" ID="ID_1900240443" MODIFIED="1465441337090" TEXT=" A k&#xe9;t k&#xe9;pkocka k&#xf6;zti elmozdul&#xe1;s kicsi"/>
<node CREATED="1465441338648" ID="ID_1038841382" MODIFIED="1465441349567" TEXT="Az egym&#xe1;shoz k&#xf6;zel es&#x151; pixelek hasonl&#xf3;an mozognak."/>
</node>
<node CREATED="1465441293203" ID="ID_1381386100" MODIFIED="1465441304754" TEXT="Az optikai &#xe1;raml&#xe1;s nem m&#x171;k&#xfc;dik">
<node CREATED="1465441352098" ID="ID_1033069349" MODIFIED="1465441373149" TEXT="Homog&#xe9;n intenzit&#xe1;s&#xfa; ter&#xfc;leten"/>
<node CREATED="1465441374084" ID="ID_1286403055" MODIFIED="1465441385670" TEXT="T&#xfa;l nagy mozg&#xe1;s eset&#xe9;n."/>
<node CREATED="1465441386978" ID="ID_1719232553" MODIFIED="1465441393106" TEXT="Apert&#xfa;ra probl&#xe9;ma"/>
</node>
<node CREATED="1465441401696" ID="ID_1068489643" MODIFIED="1465441401924" TEXT="Az intenzit&#xe1;s &#xe1;raml&#xe1;s egyenlete (az u &#xe9;s v sebess&#xe9;gek nem ismertek, 1 egyenlet, 2 ismeretlen): I x &#x2219; u + I y &#x2219; v + I t = 0"/>
</node>
<node CREATED="1465436213130" FOLDED="true" ID="ID_439393628" MODIFIED="1465448045118" TEXT="58. Mutassa be a Lucas-Kanade algoritmus elv&#xe9;t &#xe9;s m&#x171;k&#xf6;d&#xe9;s&#xe9;t! Milyen m&#xf3;dszereket ismer a gyors mozg&#xe1;sok k&#xf6;vet&#xe9;s&#xe9;re optikai &#xe1;raml&#xe1;s seg&#xed;ts&#xe9;g&#xe9;vel?">
<node CREATED="1465441440691" ID="ID_698099445" MODIFIED="1465441440930" TEXT="Az optikai &#xe1;raml&#xe1;s algoritmus&#xe1;n&#xe1;l felt&#xe9;telezt&#xfc;k, hogy az egym&#xe1;shoz k&#xf6;zeli pixelek azonos objektumhoz tartoznak, ez&#xe9;rt egy&#xfc;tt mozognak. Ne a pixelt n&#xe9;zz&#xfc;k, hanem a k&#xf6;rnyezet&#xe9;t! T&#xf6;bb pont egy&#xfc;ttes kezel&#xe9;se eset&#xe9;n az alulhat&#xe1;rozott egyenletb&#x151;l t&#xfa;lhat&#xe1;rozott lesz (Lucas-Kanade m&#xf3;dszer). A k&#xf6;rnyezet elmozdul&#xe1;s&#xe1;nak n&#xe9;gyzetes hib&#xe1;j&#xe1;t minimaliz&#xe1;ljuk. Parci&#xe1;lis deriv&#xe1;lt = 0 helyen optimum."/>
<node CREATED="1465441508277" ID="ID_1981415650" MODIFIED="1465441508692" TEXT="Az Lucas-Kanade egyenlet megoldhat&#xf3;, ha a H saj&#xe1;t&#xe9;rt&#xe9;kei nem t&#xfa;l kicsik (vagy null&#xe1;k) &#xe9;s a H saj&#xe1;t&#xe9;rt&#xe9;keinek ar&#xe1;nya nem t&#xfa;l nagy (H j&#xf3;l kondicion&#xe1;lt)."/>
<node CREATED="1465441529604" ID="ID_1836599455" MODIFIED="1465441529852" TEXT="Egy&#xe9;b m&#xf3;dszerek a gyors mozg&#xe1;sok k&#xf6;vet&#xe9;s&#xe9;re:">
<node CREATED="1465441535708" ID="ID_109752053" MODIFIED="1465441536118" TEXT="Iterat&#xed;v Lucas-Kanade algoritmus."/>
<node CREATED="1465441542078" ID="ID_617792695" MODIFIED="1465441549265" TEXT="Optical Flow piramis"/>
</node>
</node>
<node CREATED="1465436228497" FOLDED="true" ID="ID_802942210" MODIFIED="1465448046150" TEXT="59. Mit nevez&#xfc;nk sarokszer&#x171; k&#xe9;pr&#xe9;szletnek? Ismertesse a Harris oper&#xe1;tor elv&#xe9;t &#xe9;s mutassa be a m&#x171;k&#xf6;d&#xe9;s&#xe9;t!">
<node CREATED="1465441592990" ID="ID_203302660" MODIFIED="1465441593884" TEXT="&#xc9;l: Ahol valamilyen ir&#xe1;nyban az intenzit&#xe1;sban egy ugr&#xe1;s van."/>
<node CREATED="1465441605438" ID="ID_492690048" MODIFIED="1465441606279" TEXT="Sarok: Ahol az intenzit&#xe1;s minden ir&#xe1;nyban ugrik!"/>
<node CREATED="1465441649051" ID="ID_1618632818" MODIFIED="1465441656557" TEXT="Harris detektor alapelve">
<node CREATED="1465441657777" ID="ID_1172278995" MODIFIED="1465441667072" TEXT="Vegy&#xfc;nk egy ablakot a pont k&#xf6;r&#xfc;l."/>
<node CREATED="1465441711188" ID="ID_494547043" MODIFIED="1465441712886" TEXT="Mozgassuk el minden ir&#xe1;nyba, &#xe9;s sz&#xe1;moljuk ki a hib&#xe1;t a k&#xe9;p &#xe9;s az ablak k&#xf6;zt."/>
<node CREATED="1465441699527" ID="ID_1036917981" MODIFIED="1465441701102" TEXT="Ha minden ir&#xe1;nyban nagy a hiba, akkor sarokpontunk van."/>
</node>
</node>
<node CREATED="1465436244347" FOLDED="true" ID="ID_1594457381" MODIFIED="1465448047023" TEXT="60. Milyen k&#xe9;ptranszform&#xe1;ci&#xf3;kat ismer? Ezek k&#xf6;z&#xfc;l melyekre invari&#xe1;ns a Harris oper&#xe1;tor?">
<node CREATED="1465441807300" ID="ID_1000390953" MODIFIED="1465441843152" TEXT="Intenzit&#xe1;sv&#xe1;ltoz&#xe1;s">
<node CREATED="1465441834915" ID="ID_506690679" MODIFIED="1465441835810" TEXT="Addit&#xed;v intenzit&#xe1;sv&#xe1;ltoz&#xe1;s: I &#x2192; I + b"/>
<node CREATED="1465441844120" ID="ID_844657144" MODIFIED="1465441844893" TEXT="Multiplikat&#xed;v intenzit&#xe1;sv&#xe1;ltoz&#xe1;s: I &#x2192; a &#x2219; I"/>
<node CREATED="1465441850231" ID="ID_1527253062" MODIFIED="1465441861378" TEXT="Csak r&#xe9;szlegesen invari&#xe1;ns r&#xe1; a Harris detektor."/>
</node>
<node CREATED="1465441817557" ID="ID_699843351" MODIFIED="1465441821431" TEXT="Forgat&#xe1;s ">
<node CREATED="1465441864372" ID="ID_658283103" MODIFIED="1465441865979" TEXT="A saj&#xe1;tvektorok v&#xe1;ltoznak, de a saj&#xe1;t&#xe9;rt&#xe9;kek nem!"/>
<node CREATED="1465441868810" ID="ID_1720824384" MODIFIED="1465441876332" TEXT="Invari&#xe1;ns r&#xe1; a Harris detektor"/>
</node>
<node CREATED="1465441822542" ID="ID_476028667" MODIFIED="1465441825077" TEXT="Sk&#xe1;l&#xe1;z&#xe1;s">
<node CREATED="1465441893105" ID="ID_49806254" MODIFIED="1465441893455" TEXT="Nincs invariancia!"/>
</node>
</node>
<node CREATED="1465436253161" FOLDED="true" ID="ID_1881709040" MODIFIED="1465448048142" TEXT="61. Milyen elv alapj&#xe1;n lehet sk&#xe1;lainvari&#xe1;ns m&#xf3;don k&#xe9;pjellemz&#x151;ket detekt&#xe1;lni? Mi az a DoG sz&#x171;r&#x151;, &#xe9;s hogyan sz&#xe1;moljuk ki? Mit ad meg a DoG sz&#x171;r&#x151; v&#xe1;lasza?">
<node CREATED="1465441958156" ID="ID_495682922" MODIFIED="1465441958918" TEXT="Sarokdetekt&#xe1;l&#xe1;st v&#xe9;gezz&#xfc;nk el t&#xf6;bb sk&#xe1;lafaktor mellett. Ezt a sk&#xe1;lafaktort t&#xe1;roljuk el az egyes jellemz&#x151;kh&#xf6;z"/>
<node CREATED="1465441981633" ID="ID_15440498" MODIFIED="1465441982304" TEXT="A DoG sz&#x171;r&#x151; maximuma ott lesz a sk&#xe1;lat&#xe9;rben, ahol az objektum m&#xe9;rete egybeesik a sz&#x171;r&#x151; inflexi&#xf3;s pontj&#xe1;val. Ez lesz a j&#xf3; sk&#xe1;la."/>
</node>
<node CREATED="1465436278395" ID="ID_641843353" MODIFIED="1465436278865" TEXT="62. Mi az a gradienshisztogram &#xe9;s hogyan sz&#xe1;molhat&#xf3;? Hogyan haszn&#xe1;lhatjuk fel SIFT le&#xed;r&#xf3; vektor gener&#xe1;l&#xe1;s&#xe1;ra? Milyen m&#xf3;don biztos&#xed;thatjuk a rot&#xe1;ci&#xf3; invarianci&#xe1;t?"/>
</node>
<node CREATED="1465399160385" FOLDED="true" ID="ID_1390726951" MODIFIED="1465448097911" TEXT="11. Tanul&#xf3; l&#xe1;t&#xe1;s">
<node CREATED="1465436296187" FOLDED="true" ID="ID_859521778" MODIFIED="1465448051255" TEXT="63. Mit jelent az objektumfelismer&#xe9;s, illetve az oszt&#xe1;lyoz&#xe1;s? Milyen neh&#xe9;zs&#xe9;gekkel ker&#xfc;l&#xfc;nk szembe az egyes feladatok eset&#xe9;n?">
<node CREATED="1465442162412" ID="ID_791841758" MODIFIED="1465442162980" TEXT="Objektumfelismer&#xe9;s C&#xe9;l: Valamilyen szempontb&#xf3;l fontos r&#xe9;szletek megragad&#xe1;sa. &#xc1;ltal&#xe1;ban bonyolultabb, mint egy k&#xe9;pjellemz&#x151;."/>
<node CREATED="1465442170452" ID="ID_1628452389" MODIFIED="1465442170851" TEXT="Tipikus p&#xe9;ld&#xe1;k:">
<node CREATED="1465442178330" ID="ID_1761083834" MODIFIED="1465442179408" TEXT="OCR (Optical Character Recognition)"/>
<node CREATED="1465442190102" ID="ID_801662923" MODIFIED="1465442190439" TEXT="Arcfelismer&#xe9;s"/>
<node CREATED="1465442196423" ID="ID_500931128" MODIFIED="1465442196757" TEXT="Markerek felismer&#xe9;se"/>
</node>
<node CREATED="1465442210714" ID="ID_1930367469" MODIFIED="1465442211139" TEXT="Oszt&#xe1;lyoz&#xe1;s C&#xe9;l: A k&#xe9;pen k&#xfc;l&#xf6;nb&#xf6;z&#x151; objektum kateg&#xf3;ri&#xe1;k detekt&#xe1;l&#xe1;sa. &#xc1;ltal&#xe1;nos kateg&#xf3;ri&#xe1;k (ember, sz&#xe9;k, aut&#xf3;, stb.), nem konkr&#xe9;t objektumok."/>
<node CREATED="1465442241195" ID="ID_1457174416" MODIFIED="1465442242798" TEXT="Neh&#xe9;zs&#xe9;g">
<node CREATED="1465442243876" ID="ID_895557576" MODIFIED="1465442245689" TEXT="Az egyes kateg&#xf3;ri&#xe1;kon bel&#xfc;l nagy vari&#xe1;ci&#xf3; (sokf&#xe9;le sz&#xe9;k lehet) &#x2192; Neh&#xe9;z a relev&#xe1;ns jellemz&#x151;k megragad&#xe1;sa."/>
<node CREATED="1465442248391" ID="ID_1013129445" MODIFIED="1465442261820" TEXT="K&#xfc;l&#xf6;nb&#xf6;z&#x151; n&#xe9;z&#x151;pont"/>
<node CREATED="1465442263969" ID="ID_1120073651" MODIFIED="1465442267125" TEXT="Transzform&#xe1;ci&#xf3;"/>
</node>
</node>
<node CREATED="1465436303579" FOLDED="true" ID="ID_1381619438" MODIFIED="1465448052952" TEXT="64. Mit &#xe9;rt&#xfc;nk tanul&#xf3; algoritmus alatt? Milyen elemekb&#x151;l &#xe9;p&#xfc;l fel? Milyen t&#xed;pusait ismeri a g&#xe9;pi tanul&#xe1;snak?">
<node CREATED="1465442305313" ID="ID_47327164" MODIFIED="1465442305639" TEXT="A mesters&#xe9;ges intelligencia egy fajt&#xe1;ja. Explicit programoz&#xe1;s n&#xe9;lk&#xfc;l old meg bizonyos feladatokat. A probl&#xe9;ma modellez&#xe9;se a fejleszt&#x151; feladata. A konkr&#xe9;t megold&#xe1;st a tan&#xed;t&#xf3; adatok alapj&#xe1;n hat&#xe1;rozzuk meg. A param&#xe9;tereket a tan&#xed;t&#xe1;s sor&#xe1;n hangoljuk (kiv&#xe9;ve hiperparam&#xe9;terek). &#xc1;ltal&#xe1;ban k&#xf6;lts&#xe9;gf&#xfc;ggv&#xe9;nyt minimaliz&#xe1;l (pl n&#xe9;gyzetes hiba)."/>
<node CREATED="1465442371688" ID="ID_778931827" MODIFIED="1465442375529" TEXT="T&#xed;pusai">
<node CREATED="1465442387558" ID="ID_1766947775" MODIFIED="1465442387932" TEXT="1. Fel&#xfc;gyelt tanul&#xe1;s (Supervised Learning): A tan&#xed;t&#xe1;st p&#xe9;ld&#xe1;k alapj&#xe1;n csin&#xe1;ljuk &#x2192; Az algoritmus ismeri a tan&#xed;t&#xf3; p&#xe9;ld&#xe1;kra adand&#xf3; helyes v&#xe1;laszt."/>
<node CREATED="1465442396276" ID="ID_7438072" MODIFIED="1465442396795" TEXT="2. Fel&#xfc;gyelet n&#xe9;lk&#xfc;li tan&#xed;t&#xe1;s (Unsupervised Learning): Itt is vannak p&#xe9;ld&#xe1;k, de a helyes v&#xe1;lasz nem ismert."/>
<node CREATED="1465442412122" ID="ID_1555620163" MODIFIED="1465442412622" TEXT="3. Meger&#x151;s&#xed;t&#xe9;ses tanul&#xe1;s (Reinforcement Learning): A m&#x171;k&#xf6;d&#xe9;s sor&#xe1;n d&#xf6;nt&#xe9;sek sorozat&#xe1;t kell meghozni, de visszajelz&#xe9;s csak a sorozat v&#xe9;g&#xe9;n lehets&#xe9;ges. Pl.: J&#xe1;rm&#x171;vezet&#xe9;s, Sakk"/>
</node>
<node CREATED="1465442434536" ID="ID_626913108" MODIFIED="1465442434816" TEXT="Feladatok">
<node CREATED="1465442442183" ID="ID_1334740887" MODIFIED="1465442442830" TEXT="Fel&#xfc;gyelt tanul&#xe1;s">
<node CREATED="1465442471209" ID="ID_726929847" MODIFIED="1465442471848" TEXT="Oszt&#xe1;lyoz&#xe1;s: Bin&#xe1;ris/t&#xf6;bb &#xe1;llapot&#xfa; c&#xed;mke eltal&#xe1;l&#xe1;sa"/>
<node CREATED="1465442481299" ID="ID_1412064614" MODIFIED="1465442481546" TEXT="Regresszi&#xf3;: Folytonos &#xe9;rt&#xe9;k megbecsl&#xe9;se"/>
</node>
<node CREATED="1465442446578" ID="ID_732464551" MODIFIED="1465442454041" TEXT="Fel&#xfc;gyelet n&#xe9;lk&#xfc;li tanul&#xe1;s">
<node CREATED="1465442498908" ID="ID_1108425665" MODIFIED="1465442499282" TEXT="Reprezent&#xe1;ci&#xf3;k tanul&#xe1;sa">
<node CREATED="1465442502977" ID="ID_348676523" MODIFIED="1465442514095" TEXT="Klaszterez&#xe9;s (Clustering)"/>
<node CREATED="1465442520230" ID="ID_413535931" MODIFIED="1465442520524" TEXT="Dimenzi&#xf3; redukci&#xf3;">
<node CREATED="1465442523053" ID="ID_713838110" MODIFIED="1465442530468" TEXT="PCA &#x2013; F&#x151;komponens Anal&#xed;zis (Principal Component Analysis)"/>
</node>
</node>
<node CREATED="1465442572621" ID="ID_28699558" MODIFIED="1465442572942" TEXT="M&#xe9;ly Tanul&#xe1;s (Deep Learning)">
<node CREATED="1465442579973" ID="ID_533116546" MODIFIED="1465442581657" TEXT="Autoencoder, RBM (Restricted Boltzmann Machine) DBN (Deep Belief Networks)"/>
</node>
</node>
</node>
<node CREATED="1465442593767" ID="ID_1180426740" MODIFIED="1465442594500" TEXT="Bin&#xe1;ris oszt&#xe1;lyoz&#xe1;s C&#xe9;l: Egy olyan becsl&#x151; elk&#xe9;sz&#xed;t&#xe9;se, amely az adatvektorok alapj&#xe1;n k&#xe9;pes azok c&#xed;mk&#xe9;it meghat&#xe1;rozni.">
<node CREATED="1465442595557" ID="ID_915693904" MODIFIED="1465442605338" TEXT="A becsl&#x151; strukt&#xfa;r&#xe1;j&#xe1;r&#xf3;l mi d&#xf6;nt&#xfc;nk"/>
<node CREATED="1465442626969" ID="ID_1905309074" MODIFIED="1465442628976" TEXT="A param&#xe9;tereit tanul&#xe1;s seg&#xed;ts&#xe9;g&#xe9;vel hat&#xe1;rozzuk meg"/>
</node>
<node CREATED="1465442645132" ID="ID_1622212492" MODIFIED="1465442646666" TEXT="Nem bin&#xe1;ris eset">
<node CREATED="1465442651860" ID="ID_150844888" MODIFIED="1465442652159" TEXT="&#xc9;p&#xed;tkezz&#xfc;nk bin&#xe1;ris oszt&#xe1;lyoz&#xf3;kb&#xf3;l! Strat&#xe9;gi&#xe1;k: &#xf0b7; 1 vs. mindenki m&#xe1;s t&#xed;pus&#xfa; oszt&#xe1;lyoz&#xf3;k &#xf0b7; 1 vs. 1 t&#xed;pus&#xfa; oszt&#xe1;lyoz&#xf3;k: szavaz&#xe1;sos m&#xf3;dszer"/>
</node>
</node>
<node CREATED="1465436311064" FOLDED="true" ID="ID_115740849" MODIFIED="1465448054334" TEXT="65. Milyen gyakori probl&#xe9;m&#xe1;k ad&#xf3;dhatnak g&#xe9;pi tanul&#xe1;s haszn&#xe1;lata eset&#xe9;n. Milyen technik&#xe1;k/m&#xe9;r&#x151;sz&#xe1;mok seg&#xed;ts&#xe9;g&#xe9;vel h&#xe1;r&#xed;that&#xf3;ak ezek el?">
<node CREATED="1465442703599" ID="ID_1202041501" MODIFIED="1465442704154" TEXT="Underfitting: Az algoritmus nem el&#xe9;g komplex Tan&#xed;t&#xe1;si &#xe9;s tesztel&#xe9;si hiba is nagy"/>
<node CREATED="1465442719225" ID="ID_952785112" MODIFIED="1465442719803" TEXT="Overfitting: Az algoritmus t&#xfa;l komplex (&#x201e;magol&#x201d;) Kicsi tan&#xed;t&#xe1;si hiba, rossz m&#x171;k&#xf6;d&#xe9;s a gyakorlatban"/>
<node CREATED="1465442725713" ID="ID_1382959235" MODIFIED="1465442726177" TEXT="Megold&#xe1;s: Regulariz&#xe1;ci&#xf3;, kereszt-valid&#xe1;ci&#xf3;"/>
</node>
<node CREATED="1465436321635" FOLDED="true" ID="ID_593204248" MODIFIED="1465448055446" TEXT="66. Ismertesse a Bayes h&#xe1;l&#xf3;k fel&#xe9;p&#xed;t&#xe9;s&#xe9;t! Mit jelk&#xe9;peznek a csom&#xf3;pontok, illetve az &#xe9;lek? Mi az inferencia, a diagn&#xf3;zis, illetve a predikci&#xf3;? Milyen probl&#xe9;m&#xe1;k eset&#xe9;n haszn&#xe1;lhat&#xf3;?">
<node CREATED="1465442809860" ID="ID_547356062" MODIFIED="1465442810738" TEXT="Bayes h&#xe1;l&#xf3; &#xf0b7; Ir&#xe1;ny&#xed;tott k&#xf6;rmentes gr&#xe1;f &#xf0b7; Csom&#xf3;pontok: V&#xe1;ltoz&#xf3;k (&#xe1;ltal&#xe1;ban diszkr&#xe9;t) &#xf0b7; &#xc9;lek: V&#xe1;ltoz&#xf3;k k&#xf6;zti ok-okzati kapcsolatok (felt&#xe9;teles eloszl&#xe1;sf&#xfc;ggv&#xe9;ny)"/>
<node CREATED="1465442907243" ID="ID_1793007481" MODIFIED="1465442913403" TEXT="Interferencia &#xda;j adat (bizony&#xed;t&#xe9;k) &#xe9;rkezik &#x2192; A h&#xe1;l&#xf3; s&#x171;r&#x171;s&#xe9;gf&#xfc;ggv&#xe9;nyeit friss&#xed;teni kell! A csom&#xf3;pontok &#xfc;zennek egym&#xe1;snak (mindk&#xe9;t ir&#xe1;nyban): Belief Propagation"/>
<node CREATED="1465442923103" ID="ID_295242771" MODIFIED="1465442924981" TEXT="Diagn&#xf3;zis A h&#xe1;l&#xf3;n visszafele haladunk. A &#x201e;t&#xfc;netekb&#x151;l&#x201d; k&#xf6;vetkeztet&#xfc;nk az okokra."/>
<node CREATED="1465442952684" ID="ID_1208595353" MODIFIED="1465442955161" TEXT="Predikci&#xf3; A h&#xe1;l&#xf3;n el&#x151;re haladunk. Az okok ismeret&#xe9;ben k&#xf6;vetkeztet&#xfc;nk az okozatokra. Hogyan lehet a k&#xed;v&#xe1;nt v&#xe1;ltoz&#xf3; &#xe9;rt&#xe9;k&#xe9;t megj&#xf3;solni/el&#x151;&#xe1;ll&#xed;tani a t&#xf6;bbi v&#xe1;ltoz&#xf3; seg&#xed;ts&#xe9;g&#xe9;vel? Pl. El&#x151;z&#x151; h&#xe9;t id&#x151;j&#xe1;r&#xe1;sa + m&#xe9;r&#xe9;sek &#x2192; holnapi id&#x151;j&#xe1;r&#xe1;s"/>
</node>
<node CREATED="1465436336750" FOLDED="true" ID="ID_390270822" MODIFIED="1465448056510" TEXT="67. Ismertesse a KNN algoritmus m&#x171;k&#xf6;d&#xe9;s&#xe9;t. Milyen probl&#xe9;m&#xe1;k eset&#xe9;n haszn&#xe1;lhat&#xf3;?">
<node CREATED="1465442994990" ID="ID_370272853" MODIFIED="1465442998075" TEXT="K Nearest Neighbor &#x2013; k legk&#xf6;zelebbi szomsz&#xe9;d. Az oszt&#xe1;lyozand&#xf3; p&#xe9;ld&#xe1;hoz legk&#xf6;zelebb es&#x151; k tan&#xed;t&#xf3; adatot vessz&#xfc;k figyelembe. Az &#x151; c&#xed;mk&#xe9;j&#xfc;k alapj&#xe1;n d&#xf6;nt az algoritmus az adott probl&#xe9;m&#xe1;r&#xf3;l."/>
</node>
<node CREATED="1465436344931" FOLDED="true" ID="ID_1675717117" MODIFIED="1465448058118" TEXT="68. Adja meg a perceptron/neuron fel&#xe9;p&#xed;t&#xe9;s&#xe9;t! Milyen probl&#xe9;m&#xe1;k eset&#xe9;n haszn&#xe1;lhat&#xf3;? Hogyan k&#xe9;pes d&#xf6;nteni, illetve tanulni? Hogyan terjeszthet&#x151; ki nemline&#xe1;ris esetre?">
<node CREATED="1465443306609" ID="ID_1571378135" MODIFIED="1465443307502" TEXT="R&#xe9;s (Margin): Az elv&#xe1;laszt&#xf3; hipers&#xed;khoz legk&#xf6;zelebb es&#x151; vektor t&#xe1;vols&#xe1;ga a s&#xed;kt&#xf3;l. Min&#xe9;l nagyobb, ann&#xe1;l &#x201e;biztosabb&#x201d; az elv&#xe1;laszt&#xe1;s."/>
<node CREATED="1465443335907" ID="ID_1621177735" MODIFIED="1465443336425" TEXT="Support vector Azok a vektorok, amelyek t&#xe1;vols&#xe1;ga az elv&#xe1;laszt&#xf3; hipers&#xed;kt&#xf3;l pont a r&#xe9;s m&#xe9;rt&#xe9;ke."/>
<node CREATED="1465443382317" ID="ID_628940561" MODIFIED="1465443383709" TEXT="Mindig legal&#xe1;bb kett&#x151; SV van &#x2013; a s&#xed;k k&#xe9;t oldal&#xe1;n"/>
<node CREATED="1465443371016" ID="ID_1021380396" MODIFIED="1465443371486" TEXT="Mi&#xe9;rt? Mert k&#xfc;l&#xf6;nben a s&#xed;kot arr&#xe9;bb lehet mozgatni, hogy mindk&#xe9;t vektort&#xf3;l ugyanolyan t&#xe1;vols&#xe1;gra legyen &#x2192; a r&#xe9;s n&#xf6;vekedni fog."/>
</node>
<node CREATED="1465436353064" FOLDED="true" ID="ID_1849103434" MODIFIED="1465448059214" TEXT="69. Ismertesse a Support Vector Machine (SVM) algoritmust! Mikor haszn&#xe1;lhat&#xf3;? Mi az a kernel f&#xfc;ggv&#xe9;ny, &#xe9;s mire haszn&#xe1;lhat&#xf3;? Hogyan v&#xe1;lasszuk ki?">
<node CREATED="1465443436987" ID="ID_806891380" MODIFIED="1465443437273" TEXT="Az elv&#xe1;laszt&#xf3; hipers&#xed;kot nem a norm&#xe1;lvektor&#xe1;val &#xe9;s az orig&#xf3;t&#xf3;l vett t&#xe1;vols&#xe1;ggal, hanem a support vektorok seg&#xed;ts&#xe9;g&#xe9;vel &#xed;rja le. Maxim&#xe1;lis r&#xe9;s&#x171; elv&#xe1;laszt&#xf3; s&#xed;kot keres. A Perceptronnal ellent&#xe9;tben egyszerre veszi figyelembe az &#xf6;sszes tan&#xed;t&#xf3; adatot."/>
</node>
<node CREATED="1465436368034" ID="ID_103200904" MODIFIED="1465436369824" TEXT="70. Mi a klaszterez&#xe9;s, mire j&#xf3;? Ismertessen klaszterez&#x151; algoritmusokat! Mi az er&#x151;s &#xe9;s a gyenge hozz&#xe1;rendel&#xe9;s, &#xe9;s hogyan kapcsol&#xf3;dik az egyes algoritmusokhoz?"/>
<node CREATED="1465436379501" ID="ID_1238577091" MODIFIED="1465436379907" TEXT="71. Mi a dimenzi&#xf3; redukci&#xf3;? Mire haszn&#xe1;lhat&#xf3; a f&#x151;komponens anal&#xed;zis (PCA) algoritmus? Mutassa be a m&#x171;k&#xf6;d&#xe9;s&#xe9;t! Miben k&#xfc;l&#xf6;nb&#xf6;zik az LDA algoritmus?"/>
<node CREATED="1465436388787" ID="ID_289898685" MODIFIED="1465436389115" TEXT="72. R&#xf6;viden ismertesse a Bag of Words, illetve a konstell&#xe1;ci&#xf3;s/r&#xe9;sz alap&#xfa; oszt&#xe1;lyoz&#xf3;k elv&#xe9;t."/>
<node CREATED="1465436398721" ID="ID_1637359627" MODIFIED="1465436399235" TEXT="73. Mi az a m&#xe9;ly tanul&#xe1;s, milyen el&#x151;nyei &#xe9;s h&#xe1;tr&#xe1;nyai vannak? Mutassa be az autoencoderek m&#x171;k&#xf6;d&#xe9;s&#xe9;t."/>
<node CREATED="1465436411333" ID="ID_1954385499" MODIFIED="1465436411829" TEXT="74. Mutassa be a konvol&#xfa;ci&#xf3;s neur&#xe1;lis h&#xe1;l&#xf3;k fel&#xe9;p&#xed;t&#xe9;s&#xe9;t, m&#x171;k&#xf6;d&#xe9;s&#xe9;t, &#xe9;s el&#x151;nyeit."/>
</node>
</node>
<node CREATED="1465399171748" FOLDED="true" ID="ID_178493250" MODIFIED="1465742847695" POSITION="right" TEXT="III. Val&#xf3;sidej&#x171; l&#xe1;t&#xe1;s eszk&#xf6;zei, paradigm&#xe1;i">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1465399192977" FOLDED="true" ID="ID_730765938" MODIFIED="1465603977840" TEXT="12. A val&#xf3;sidej&#x171; l&#xe1;t&#xe1;s eszk&#xf6;zei">
<node CREATED="1465448164227" ID="ID_1705379749" MODIFIED="1465448174930" TEXT="75. Ismertesse a val&#xf3;sidej&#x171; l&#xe1;t&#xe1;s sor&#xe1;n haszn&#xe1;latos eszk&#xf6;z&#xf6;kben alkalmazott paradigm&#xe1;k f&#x151;bb oszt&#xe1;lyait. Adjon p&#xe9;ld&#xe1;kat ezekre."/>
</node>
<node CREATED="1465399208504" FOLDED="true" ID="ID_764211038" MODIFIED="1465603975640" TEXT="13. GPGPU, CUDA">
<node CREATED="1465448244980" ID="ID_1078730025" MODIFIED="1465448245316" TEXT="76. Mi&#xe9;rt alkalmasak a grafikai c&#xe9;lra kialak&#xed;tott feldolgoz&#xf3; egys&#xe9;gek k&#xe9;pfeldolgoz&#xe1;si c&#xe9;lokra? Mi jelenti &#xe1;ltal&#xe1;noss&#xe1;gban egy grafikus k&#xe1;rty&#xe1;n implement&#xe1;lt k&#xe9;pfeldolgoz&#xe1;si elj&#xe1;r&#xe1;s sor&#xe1;n a sz&#x171;k keresztmetszetet? Mi&#xe9;rt?"/>
<node CREATED="1465448250674" ID="ID_900838976" MODIFIED="1465448251057" TEXT="77. Mit jelent a grafikus cs&#x151;vezet&#xe9;k? Rajzolja fel a Direct3D grafikus cs&#x151;rendszer&#xe9;t, &#xe9;s r&#xf6;viden ismertesse az egyes &#xe1;llom&#xe1;sokat."/>
<node CREATED="1465448255802" ID="ID_11597245" MODIFIED="1465448256120" TEXT="78. Mi az &#xe1;rnyal&#xf3;, mire lehet alkalmazni? Melyik &#xe1;rnyal&#xf3;t lehet a k&#xe9;pfeldolgoz&#xe1;sban legink&#xe1;bb haszn&#xe1;lni? Hogyan m&#x171;k&#xf6;dik? Milyen er&#x151;forr&#xe1;sok &#xe1;llnak rendelkez&#xe9;sre haszn&#xe1;latukkor?"/>
<node CREATED="1465448261334" ID="ID_1437606829" MODIFIED="1465448262149" TEXT="79. Mit jelent az adatfolyam-feldolgoz&#xe1;s? Mi a k&#xfc;l&#xf6;nbs&#xe9;g a SISD, SIMD &#xe9;s MIMD p&#xe1;rhuzamos feldolgoz&#xe1;si elvek k&#xf6;z&#xf6;tt? Melyik jellemz&#x151; a grafikus alaphardverre? Mit jelent p&#xe1;rhuzamos feldolgoz&#xe1;s sor&#xe1;n a kernel fogalma?"/>
<node CREATED="1465448267540" ID="ID_931507706" MODIFIED="1465448267859" TEXT="80. Milyen t&#xed;pus&#xfa; algoritmusok futtathat&#xf3;k hat&#xe9;konyan a grafikus processzoron &#xe9;s melyek nem? &#xcd;rjon n&#xe9;h&#xe1;ny p&#xe9;ld&#xe1;t."/>
<node CREATED="1465448275800" ID="ID_43209310" MODIFIED="1465448276104" TEXT="81. Sorolja fel a legfontosabb, &#xe1;rnyal&#xf3;k l&#xe9;trehoz&#xe1;s&#xe1;ra alkalmas nyelveket."/>
<node CREATED="1465448286324" ID="ID_802194542" MODIFIED="1465448286676" TEXT="82. Mi a CUDA &#xe9;s az OpenCL? Milyen c&#xe9;lb&#xf3;l hozt&#xe1;k &#x151;ket l&#xe9;tre? Milyen rendszereken haszn&#xe1;lhat&#xf3;k?"/>
<node CREATED="1465448292619" ID="ID_980128045" MODIFIED="1465448292937" TEXT="83. Mutassa be r&#xf6;viden a GPU &#xe9;s ezen bel&#xfc;l a Streaming Multiprocesszor fel&#xe9;p&#xed;t&#xe9;s&#xe9;t."/>
<node CREATED="1465448298744" ID="ID_1067373111" MODIFIED="1465448299118" TEXT="84. Ismertesse a CUDA fut&#xe1;si modellj&#xe9;nek elemeit (R&#xe1;cs...). Mi&#xe9;rt nem c&#xe9;lszer&#x171; egy fonaton bel&#xfc;l divergens k&#xf3;dot futtatni?"/>
<node CREATED="1465448304838" ID="ID_211410024" MODIFIED="1465448305223" TEXT="85. Ismertesse a CUDA mem&#xf3;riamodellj&#xe9;t. T&#xe9;rjen ki az egyes mem&#xf3;ri&#xe1;k sebess&#xe9;g&#xe9;re, haszn&#xe1;lati c&#xe9;lj&#xe1;ra."/>
<node CREATED="1465448311644" ID="ID_981996329" MODIFIED="1465448311931" TEXT="86. Ismertesse a CUDA sz&#xe1;lak k&#xf6;z&#xf6;tti kommunik&#xe1;ci&#xf3;s &#xe9;s szinkroniz&#xe1;ci&#xf3;s lehet&#x151;s&#xe9;geit."/>
<node CREATED="1465448328577" ID="ID_1152658851" MODIFIED="1465448329169" TEXT="87. &#xcd;rjon n&#xe9;h&#xe1;ny m&#xf3;dszert, hogy hogyan lehet egy CUDA alkalmaz&#xe1;s hat&#xe9;konys&#xe1;g&#xe1;t n&#xf6;velni. Mi&#xe9;rt &#xe9;rdemes vigy&#xe1;zni a mem&#xf3;riaigaz&#xed;t&#xe1;sra (alignment)? Hogyan c&#xe9;lszer&#x171; meghat&#xe1;rozni a blokkm&#xe9;retet egy CUDA alkalmaz&#xe1;sban?"/>
<node CREATED="1465448336231" ID="ID_782485562" MODIFIED="1465448336542" TEXT="88. Ismertesse a CUDA &#xe9;s az OpenCL k&#xf6;z&#xf6;tti kapcsolatot. Mik az alapvet&#x151; hasonl&#xf3;s&#xe1;gok &#xe9;s k&#xfc;l&#xf6;nbs&#xe9;gek?"/>
<node CREATED="1465448343572" ID="ID_1013408286" MODIFIED="1465448343931" TEXT="89. &#xcd;rjon CUDA kernelt egy megadott specifik&#xe1;ci&#xf3; szerint.">
<node CREATED="1465448349029" ID="ID_1824549012" MODIFIED="1465448349469" TEXT="a, K&#xfc;sz&#xf6;b&#xf6;z&#xe9;s (sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pen, vagy csatorn&#xe1;nk&#xe9;nt)"/>
<node CREATED="1465448354723" ID="ID_253260656" MODIFIED="1465448355218" TEXT="b, Konvol&#xfa;ci&#xf3;"/>
<node CREATED="1465448360729" ID="ID_1332356523" MODIFIED="1465448360991" TEXT="c, Sz&#xed;nt&#xe9;rkonverzi&#xf3; (adott G m&#xe1;trix alapj&#xe1;n)"/>
<node CREATED="1465448367511" ID="ID_639690589" MODIFIED="1465448367845" TEXT="d, er&#xf3;zi&#xf3;/dilat&#xe1;ci&#xf3; (adott kernel alapj&#xe1;n)"/>
</node>
</node>
<node CREATED="1465399223200" FOLDED="true" ID="ID_247211429" MODIFIED="1465603979163" TEXT="14. K&#xe9;pfeldolgoz&#xe1;s mobileszk&#xf6;z&#xf6;kkel">
<node CREATED="1465448374962" ID="ID_1346919418" MODIFIED="1465448375368" TEXT="90. Mik az alapvet&#x151; hardveres k&#xfc;l&#xf6;nbs&#xe9;gek a l&#xe1;t&#xf3; rendszerek szempontj&#xe1;b&#xf3;l az asztali g&#xe9;pek &#xe9;s a mobil eszk&#xf6;z&#xf6;k k&#xf6;z&#xf6;tt?"/>
<node CREATED="1465448383603" ID="ID_1447909718" MODIFIED="1465448383901" TEXT="91. Ismertesse a NEON elv&#xe9;t. Milyen jelleg&#x171; m&#x171;veleteket v&#xe9;gezhet&#xfc;nk vele?"/>
<node CREATED="1465448389792" ID="ID_1719004387" MODIFIED="1465448390092" TEXT="92. Mi a RenderScript? Milyen c&#xe9;lb&#xf3;l hozt&#xe1;k l&#xe9;tre? Milyen rendszereken &#xe9;s eszk&#xf6;z&#xf6;k&#xf6;n haszn&#xe1;lhat&#xf3;? Mi a k&#xfc;l&#xf6;nbs&#xe9;g a RenderScript &#xe9;s a FilterScript k&#xf6;z&#xf6;tt?"/>
<node CREATED="1465448394831" ID="ID_90759333" MODIFIED="1465448395102" TEXT="93. Ismertesse a RenderScript fut&#xe1;si modellj&#xe9;t. Milyen m&#xf3;don lehet fel&#xfc;gyelni a kernelek futtat&#xe1;s&#xe1;t?"/>
<node CREATED="1465448401958" ID="ID_755966591" MODIFIED="1465448402268" TEXT="94. Mi a be&#xe9;p&#xed;tett kernelek szerepe? Sorolja fel a fontosabb be&#xe9;p&#xed;tett kerneleket (funkci&#xf3; elegend&#x151;, a megnevez&#xe9;s nem sz&#xfc;ks&#xe9;ges)."/>
<node CREATED="1465448407851" ID="ID_1847424985" MODIFIED="1465448408163" TEXT="95. Ismertesse a RenderScript mem&#xf3;riahaszn&#xe1;lat&#xe1;t. Hogyan f&#xe9;r&#xfc;nk hozz&#xe1; a megosztott adatt&#xf6;mb&#xf6;kh&#xf6;z a fel&#xfc;gyel&#x151; oldalon &#xe9;s a kerneloldalon?"/>
<node CREATED="1465448416254" ID="ID_516427552" MODIFIED="1465448416758" TEXT="96. &#xcd;rjon RenderScript kernelt egy megadott specifik&#xe1;ci&#xf3; szerint.">
<node CREATED="1465448422430" ID="ID_78566600" MODIFIED="1465448422847" TEXT="a, K&#xfc;sz&#xf6;b&#xf6;z&#xe9;s (sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pen, vagy csatorn&#xe1;nk&#xe9;nt)"/>
<node CREATED="1465448354723" ID="ID_1711464577" MODIFIED="1465448355218" TEXT="b, Konvol&#xfa;ci&#xf3;"/>
<node CREATED="1465448360729" ID="ID_1159920639" MODIFIED="1465448360991" TEXT="c, Sz&#xed;nt&#xe9;rkonverzi&#xf3; (adott G m&#xe1;trix alapj&#xe1;n)"/>
<node CREATED="1465448367511" ID="ID_1066787256" MODIFIED="1465448367845" TEXT="d, er&#xf3;zi&#xf3;/dilat&#xe1;ci&#xf3; (adott kernel alapj&#xe1;n)"/>
</node>
<node CREATED="1465448437654" ID="ID_1437544237" MODIFIED="1465448437990" TEXT="97. Mit jelent a &#x201e;T&#xf6;bbmenetes m&#x171;velet&#x201d;? Mikor haszn&#xe1;lunk ilyeneket?"/>
<node CREATED="1465448448215" ID="ID_1185132315" MODIFIED="1465448448574" TEXT="98. Mi az OpenGL ES &#xe9;s a GLSL? Milyen k&#xf6;r&#xfc;lm&#xe9;nyek k&#xf6;z&#xf6;tt haszn&#xe1;lunk OpenGL ES-t k&#xe9;pfeldolgoz&#xe1;si feladatokra?"/>
<node CREATED="1465448457497" ID="ID_1395379110" MODIFIED="1465448457880" TEXT="99. Ismertesse az &#xe1;rnyal&#xf3;alap&#xfa; k&#xe9;pfeldolgoz&#xe1;s alapelv&#xe9;t. T&#xe9;rjen ki az OpenGL ES specifikus neh&#xe9;zs&#xe9;gekre."/>
<node CREATED="1465448463312" ID="ID_881685611" MODIFIED="1465448463744" TEXT="100. Milyen feladatokat v&#xe9;gz&#xfc;nk OpenGL ES eset&#xe9;n a vertex &#xe1;rnyal&#xf3;ban? Mi az MVP M&#xe1;trix szerepe?"/>
<node CREATED="1465448468831" ID="ID_1269935297" MODIFIED="1465448469169" TEXT="101. &#xcd;rjon GLSL kernelt (fragmens&#xe1;rnyal&#xf3;) egy megadott specifik&#xe1;ci&#xf3; szerint. a, K&#xfc;sz&#xf6;b&#xf6;z&#xe9;s (sz&#xfc;rke&#xe1;rnyalatos k&#xe9;pen, vagy csatorn&#xe1;nk&#xe9;nt)"/>
</node>
<node CREATED="1465399241325" FOLDED="true" ID="ID_1417413276" MODIFIED="1465603980509" TEXT="15. L&#xe1;t&#xe1;s programozhat&#xf3; hardvereszk&#xf6;z&#xf6;kkel">
<node CREATED="1465448478490" ID="ID_422197187" MODIFIED="1465448478731" TEXT="102. Mit jelent a &#x201e;programozhat&#xf3;&#x201d; hardver? Hogyan val&#xf3;s&#xed;tj&#xe1;k meg programozhat&#xf3;s&#xe1;got? Rajzolja fel egy &#xfa;tvonalv&#xe1;laszt&#xf3; &#xe9;s egy k&#xe9;t bemenet&#x171; programozhat&#xf3; kapu megval&#xf3;s&#xed;t&#xe1;s&#xe1;t."/>
<node CREATED="1465448483809" ID="ID_752178561" MODIFIED="1465448484168" TEXT="103. Mi a programozhat&#xf3; hardvereszk&#xf6;z&#xf6;k&#xf6;n t&#xf6;rt&#xe9;n&#x151; tervez&#xe9;s menete?"/>
<node CREATED="1465448491998" ID="ID_1786755793" MODIFIED="1465448492947" TEXT="04. Tipikusan milyen elemekb&#x151;l &#xe9;p&#xfc;l fel egy FPGA? Milyen m&#xf3;don haszn&#xe1;lhatjuk egy tipikus FPGA (pl. Xilinx) Look-Up Table egys&#xe9;geit?"/>
<node CREATED="1465448501420" ID="ID_1112632700" MODIFIED="1465448501687" TEXT="105. Milyen mem&#xf3;riaegys&#xe9;gek &#xe1;llnak rendelkez&#xe9;s&#xfc;nkre programozhat&#xf3; hardveres k&#xe9;pfeldolgoz&#xe1;s sor&#xe1;n (k&#xfc;ls&#x151; lehet&#x151;s&#xe9;gek is)? Egy kock&#xe1;nyi k&#xe9;pet szeretne t&#xe1;rolni FPGA k&#xe9;pfeldolgoz&#xe1;shoz. Melyik mem&#xf3;riaegys&#xe9;get haszn&#xe1;ln&#xe1;, &#xe9;s mi&#xe9;rt? Elosztott RAM, BlokkRAM"/>
<node CREATED="1465448508921" ID="ID_11610131" MODIFIED="1465448509600" TEXT="106. Rajzolja fel egy FPGA seg&#xed;ts&#xe9;g&#xe9;vel megval&#xf3;s&#xed;tott, adott specifik&#xe1;ci&#xf3;j&#xfa; &#xe1;ramk&#xf6;r blokkv&#xe1;zlat&#xe1;t:">
<node CREATED="1465448510640" ID="ID_403383985" MODIFIED="1465448518160" TEXT="a, K&#xfc;sz&#xf6;b&#xf6;z&#xe9;s"/>
<node CREATED="1465448523242" ID="ID_967219954" MODIFIED="1465448523800" TEXT="b, Konvol&#xfa;ci&#xf3; (pl. [ 0 1 0 ; 1 -4 1 ; 0 1 0 ], [ 1 2 1 ; 2 4 2; 1 2 1 ])"/>
</node>
<node CREATED="1465448530989" ID="ID_1493193867" MODIFIED="1465448531324" TEXT="107. Ismertesse az adatutak rendszer&#xe9;t."/>
<node CREATED="1465448536067" ID="ID_1799544741" MODIFIED="1465448536355" TEXT="108. Mik a cs&#x151;vezet&#xe9;kes feldolgoz&#xe1;s el&#x151;nyei? Milyen nagys&#xe1;grend&#x171; k&#xe9;sleltet&#xe9;sre lehet sz&#xe1;m&#xed;tani egy n&#xe9;h&#xe1;ny algoritmust tartalmaz&#xf3; cs&#x151;vezet&#xe9;kben?"/>
<node CREATED="1465448540931" ID="ID_778764284" MODIFIED="1465448541265" TEXT="109. Mi&#xe9;rt van sz&#xfc;ks&#xe9;g hardver-szoftver egy&#xfc;ttes tervez&#xe9;sre? Mik az el&#x151;nyei egy e tervez&#xe9;si m&#xf3;dszer &#xe1;ltal l&#xe9;trehozott feldolgoz&#xf3; rendszernek?"/>
<node CREATED="1465448546977" ID="ID_1389105908" MODIFIED="1465448547272" TEXT="110. Mit jelent az &#xfa;jrakonfigur&#xe1;lhat&#xf3; illetve &#xf6;nkonfigur&#xe1;l&#xf3; hardver fogalma? Mire haszn&#xe1;lhatjuk &#x151;ket?"/>
</node>
<node CREATED="1465399253115" FOLDED="true" ID="ID_1706545883" MODIFIED="1465742846359" TEXT="16. CMOS alap&#xfa; el&#x151;feldolgoz&#xe1;s">
<node CREATED="1465448553566" ID="ID_883425568" MODIFIED="1465448553853" TEXT="111. Ismertesse az akt&#xed;v &#xe9;s passz&#xed;v szenzoros &#xe9;rz&#xe9;kel&#x151;k fel&#xe9;p&#xed;t&#xe9;s&#xe9;t, el&#x151;nyeit &#xe9;s h&#xe1;tr&#xe1;nyait."/>
<node CREATED="1465448561571" ID="ID_690018839" MODIFIED="1465448562783" TEXT="112. Ismertesse a Cellul&#xe1;ris Neur&#xe1;lis h&#xe1;l&#xf3;zatok m&#x171;k&#xf6;d&#xe9;s&#xe9;nek elv&#xe9;t, fel&#xe9;p&#xed;t&#xe9;s&#xe9;t (Cellul&#xe1;ris h&#xe1;l&#xf3;zat, neur&#xe1;lis h&#xe1;l&#xf3;zat...)"/>
<node CREATED="1465448568335" FOLDED="true" ID="ID_1707263148" MODIFIED="1465742844942" TEXT="113. Adja meg az al&#xe1;bbi feladathoz tartoz&#xf3; CNN egy lehets&#xe9;ges param&#xe9;terk&#xe9;szlet&#xe9;t (A, B, I):">
<node CREATED="1465448575974" MODIFIED="1465448575974" TEXT="a, f&#xe9;nyess&#xe9;g"/>
<node CREATED="1465448575975" MODIFIED="1465448575975" TEXT="b, kontraszt"/>
<node CREATED="1465448575976" MODIFIED="1465448575976" TEXT="c, invert&#xe1;l&#xe1;s"/>
<node CREATED="1465448575977" MODIFIED="1465448575977" TEXT="d, alul&#xe1;tereszt&#x151;/fel&#xfc;l&#xe1;tereszt&#x151; sz&#x171;r&#xe9;s"/>
</node>
<node CREATED="1465448581715" ID="ID_1048102895" MODIFIED="1465448581947" TEXT="114. Ismertesse az esem&#xe9;nyszenzorok m&#x171;k&#xf6;d&#xe9;si elv&#xe9;t"/>
<node CREATED="1465448592718" ID="ID_523269933" MODIFIED="1465448593300" TEXT="115. Ismertessen egy az esem&#xe9;nyt&#xe9;rben hat&#xe9;konyan m&#x171;k&#xf6;d&#x151; zajsz&#x171;r&#x151; algoritmust."/>
</node>
</node>
</node>
</map>
