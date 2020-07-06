#!/usr/bin/env bash
read -r -d '' FISHES << EOM
aholehole albacore alewife alfonsino alligatorfish alooh amago anchovy 
anemonefish angelfish angler anglerfish arapaima archerfish armorhead arowana 
aruana ayu bandfish bango bangus barb barbel barfish barracuda barracudina 
barramundi barreleye bass basslet batfish beachsalmon beardfish bent-tooth 
betta bichir bigeye bigscale billfish bitterling blackchin blackfish 
blacksmelt bleak blenny blobfish blowfish bluefish bluegill boafish boarfish 
bocaccio boga bonefish bonito bonnetmouth bonytongue bottlenose bowfin boxfish 
bream bristlemouth brotula buffalofish bullhead burbot buri butterflyfish 
candiru candlefish capelin cardinalfish carp carpetshark carpsucker catalufa 
catfish catla cavefish cepalin char cherubfish chimaera chub chubsucker 
cichlid cisco clingfish clownfish cobbler cobia cod codlet codling coelacanth 
coffinfish coley combfish cornetfish cowfish crappie crestfish croaker cuchia 
cusk-eel cuskfish cutlassfish dab dace damselfish danio darter dartfish 
dealfish demoiselle devario dhufish discus dogfish dorab dorado dory dottyback 
dragonet dragonfish driftfish drum duckbill eel eelblenny eel-goby eelpout 
elasmobranch elver emperor escolar eulachon fangtooth featherback fierasfer 
filefish fingerfish firefish flagblenny flagfin flagfish flagtail flatfish 
flathead flier flounder flyingfish footballfish frogfish gar garibaldi garpike 
ghoul gianttail gibberfish glassfish goatfish goby goldeye goldfish gombessa 
goosefish gouramie graveldiver grayling greeneye greenling grenadier grideye 
grouper grunion grunt grunter gudgeon guitarfish gulper gunnel guppy gurnard 
haddock hagfish hairtail hake halfbeak half-gill halfmoon halibut halosaur 
hamlet hammerjaw handfish hatchetfish hawkfish herring hoki horsefish 
houndshark huchen humuhumu-nukunuku-apua‘a hussar icefish ide ilisha inanga 
inconnu jack jackfish javelin jawfish jewelfish jewfish kahawai kaluga kanyu 
kelpfish killifish kingfish king-of-the-salmon knifefish knifejaw koi kokanee 
kokopu ladyfish lagena lampfish lamprey lancetfish lanternfish leaffish 
leatherjacket lenok lightfish lighthousefish limia ling lionfish livebearer 
lizardfish loach longfin loosejaw louvar luderick lumpsucker lungfish lyretail 
mackerel madtom mahi-mahi mahseer manefish marblefish marlin medaka medusafish 
menhaden midshipman milkfish minnow mojarra mola molly monkfish mooneye 
moonfish mora morwong mosquitofish mouthbrooder mrigal mudfish mudminnow 
mudskipper mudsucker mullet mummichog muskellunge nase needlefish noodlefish 
nurseryfish oarfish oilfish oldwife opah opaleye paddlefish panga paperbone 
parrotfish peamouth pearleye pearlfish pejerrey peladillo pencilfish 
pencilsmelt perch pickerel pigfish pike pikeblenny pikehead pikeperch pilchard 
pineapplefish pineconefish píntano pipefish piranha pirarucu plaice platy 
platyfish pleco plunderfish poacher pollock pollyfish pomfret pompano ponyfish 
poolfish porcupinefish porgy powen priapumfish prickleback pricklefish 
prowfish pufferfish pumpkinseed pupfish quillback quillfish rabbitfish ragfish 
rainbowfish rasbora ratfish rattail ray razorfish redfish redside reedfish 
remora ribbonbearer ribbonfish ricefish ridgehead rivuline roach rockfish 
rockling rohu ronquil roosterfish ropefish roughy roundhead rudd rudderfish 
ruffe sábalo sabertooth sablefish sailbearer sailfish salamanderfish salmon 
sandburrower sandfish sandperch sandroller sardine sauger saury sawfish scat 
scorpionfish sculpin scup seahorse seamoth searobin seatrout shad shark 
sharksucker sheatfish sheepshead shell-ear shiner shrimpfish sillago 
silverside skate skilfish sleeper slickhead slimehead slipmouth smelt 
smelt-whiting smoothtongue snailfish snakehead snapper snipefish snoek snook 
soapfish soldierfish sole spadefish spearfish spiderfish spikefish spinefoot 
spiny-back spinyfin splitfin spookfish sprat springfish squaretail squawfish 
squeaker squirrelfish stargazer steelhead stickleback stingfish stingray 
stonecat stonefish straptail sturgeon sucker sunfish (opah) surfperch 
surgeonfish swallower swamp-eel swampfish sweeper swordfish swordtail tailor 
taimen tang tapetail tarpon tarwhine telescopefish tench tenpounder tenuis 
tetra thornfish thornyhead threadfin threadsail threadtail tigerperch tilapia 
tilefish toadfish tonguefish tope topminnow torpedo trahira treefish trench 
trevally triggerfish triplespine tripletail trout trout-perch trumpeter 
trumpetfish trunkfish tubeblenny tube-eye tubeshoulder tube-snout tuna turbot 
turkeyfish velvetfish vendace vimba viperfish wahoo wallago walleye walu 
warbonnet warmouth waryfish weatherfish weever weeverfish whalefish whiff 
whitebait whitefish whiting wobbegong wolf-eel wolffish wolf-herring wormfish 
wrasse wrymouth yellowtail zander zebrafish ziege zingel
EOM

read -r -d '' MINERALS << EOM
acanthite coesite lawsonite rhodochrosite actinolite colemanite lazulite 
rhodonite adamite cookeite lazurite riebeckite aegirine copper lead rutile 
afghanite cordierite lepidolite safflorite agate corundum leucite sanidine 
alabandite covellite liddicoatite scapolite albite cristobalite limonite 
scheelite almandine crocoite linarite schorl amethyst cuprite loellingite 
schorlomite analcime cyanotrichite luzonite scolecite anatase danburite 
magnesiochromite scorzalite andalusite datolite magnesite serandite andesine 
diamond magnetite serpentine andradite diaspore malachite shattuckite 
anglesite diopside manganoneptunite siderite anhydrite dioptase marcasite 
sillimanite annabergite dolomite marialite silver anorthite dravite meionite 
skutterudite anorthoclase dumortierite melanophlogite smithsonite antimony 
edenite mercury sodalite apatite elbaite mesolite sperrylite apophyllite 
emerald metacinnabar spessartine aquamarine enargite metastibnite 
sphaerocobaltite aragonite enstatite metavariscite sphalerite arfvedsonite 
epidote miargyrite spinel arsenic epistilbite microcline spodumene 
arsenopyrite epsomite millerite staurolite augite erythrite mimetite 
stellerite aurichalcite euclase molybdenite stephanite axinite ferberite 
muscovite stibarsen azurite fluorite natrojarosite stibiconite babingtonite 
franklinite natrolite stibnite barite galena nepheline stilbite bauxite garnet 
neptunite stishovite benitoite gaspeite nickeline stolzite beryl gibbsite 
norbergite strengite biotite glauberite nosean strontianite bismuth 
glaucophane oligoclase sulfur bismuthinite gmelinite olivine sylvanite 
bixbyite goethite olmiite talc boehmite gold omphacite tellurium borax 
goosecreekite opal tennantite bornite graphite orpiment tephroite boulangerite 
greenockite orthoclase tetrahedrite bournonite grossular otavite thenardite 
brochantite gummite paradamite thomsonite brookite gypsum pararealgar thorite 
brucite hafnon pargasite thorogummite buergerite halite pearceite tincalconite 
bustamite hastingsite pectolite titanite bytownite hauyne pentlandite topaz 
calaverite hedenbergite pezzottaite tourmaline calcite hematite phenakite 
tremolite carletonite hemimorphite phlogopite tridymite cassiterite heulandite 
phosgenite turquoise celestine hornblende plagioclase ulexite celsian howlite 
platinum uraninite cerussite huebnerite polybasite uvarovite cervantite humite 
powellite uvite chabazite hydrozincite prehnite vanadinite chalcanthite ice 
proustite variscite chalcedony ilmenite pumpellyite vesuvianite chalcocite 
inesite pyrargyrite vivianite chalcopyrite iroickel pyrite water chamosite 
jadeite pyrolusite wavellite chlorite jamesonite pyromorphite willemite 
chondrodite jarosite pyrope witherite chromite jasper pyrophyllite wolframite 
chrysoberyl johannsenite pyroxmangite wollastonite chrysocolla kaolinite 
pyrrhotite wulfenite cinnabar kernite quartz wurtzite citrine krennerite 
rammelsbergite xanthoconite clinochlore kyanite raspite zincite clinohumite 
labradorite realgar zircon clinozoisite laumontite rheniite zoisite cobaltite 
acerila corpar katoite
EOM

rand_name () {
    local _choices=$*
    local _max=$(echo $_choices | wc -w)

    echo $_choices | cut -f $(shuf -i 1-$_max -n 1) -d ' '
}

rand_name $MINERALS
rand_name $FISHES
