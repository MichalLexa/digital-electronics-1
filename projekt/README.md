### Team members

* Roman Křivánek
* Erik Maděránek
* Michal Lexa

## Theoretical description and explanation

UART je asynchroní přenos dat přes 2 kabely, RX a TX. Můžeme ho najít třeba v RS232 konektoru/protokolu nebo COM portu/protokolu. Přenos dat je určen pomocí následujících parametrů: Přenosová rychlost "Baud width" která se pohybuje nejčastěji v hodnotách 9600 19200 115200, popřípadě jiné. Přenosová rychlost určuje kolik se přenese bitů za sekundu. Počet datových bitů, který je nejčastěji nastaven na 8, ale může být i 7 v některých případech. Paritní bit, který kontroluje všechny datové bity, jestli jsou správně, tento bit může být buď on ("1") nebo off("0"). Stop bit, který se nastavuje do pozice "1", můžeme určit kolik jich chceme, jde nastavit 0,1 či 2 stop bity. Jelikož se jedná o asynchroní přenos, tudíž se po drátech neposílá časovací signál, musíme tedy vzorkovat signál pomocí vnitřího časování minimálně 8 krát rychleji než je Přenosová rychlost. UART je nečinný pokud se bit TX nachází v pozici HIGH ("1"), poté čeká na první sestupnou hranu bitu TX která indukuje start bit, kde v polovině délky času přenosu jednoho bitu, aby se zamezilo chybě v případě náhodných překmitů na TX bitu. Pokud je detekován start bit, přichází na řadu sekvence 8 datových bitů, pokaždé se zase v polovině délky přenosu jednoho bitu kontroluje hodnota, zda je stálá a nenastal překmit. Po té co se odešle všech 8 datových bitů se přidá určený počet stop bitů, které nastaví bit TX znovu do hodnoty HIGH ("1"). To samé platí i pro bit RX v případě že přijímáme data. 

Pomocí synchroního čítače z předešlých cvičení počítáme čas a zobrazujeme ho na 7-segmentových displejích. Tento čas pomocí tlačítka posíláme pomocí UART na pin JB-1, označený jako TX. Pin JB-2 používáme jako RX pin, který přijímá data z jiného UART transmitteru, tyto data poté ukážeme na LED0 až LED8. Dále jsme chtěli implementovat pomocí switchů přepínání Rychlosti přenosu a počet datových bitů.

Kvůli neočekávaným chybám v kódu UART přijímače a vysílače, jsme nebyli schopni to plně zprovoznit na desku.

## Hardware description of demo application

Jako hardware desku používáme Nexys A7-50T. K zobrazení času používáme 6 7-segmentových displejů. K odesílání dat pomocí UART používáme BTNC, což je prostřední tlačítko na vývojové desce. K zobrazení přijatých dat používáme LED0 až LED8. K přepínání rychlosti přenosu používáme SW0 a SW1, což nám dělá 4 různé možnosti.

### Component(s) simulation

#### Hlavní komponenty:

[top.vhdl](project/projekt/sources_1/new/top.vhd) - propojení všech komponentů

[UART-receiver](project/projekt/sources_1/new/receiver.vhd)
https://www.edaplayground.com/x/mKEV - simulace UART-receiveru

![receiver](images/UART-receiver.png)

[UART-transmitter](project/projekt/sources_1/new/transmitter.vhd)
https://www.edaplayground.com/x/TS9m -simulace UART-transmitteru

![transmitter](images/UART-transmitter.png)


#### Vedlejší komponenty:

[Clock_enabled](project/projekt/sources_1/new/clock_enabled.vhd)

[Counter](project/projekt/sources_1/new/cnt_up_down.vhd)

[7-segmentový driver](project/projekt/sources_1/new/hex_7seg.vhd)

## Instructions

Teoreticky by to mělo fungovat, ale prakticky je to celkem daleko od funkčního projektu. Aby to fungovalo, muselo by se upravit celkové top.vhd jelikož ještě není implementované tlačítko na posílání bitů. Tudíž by se muselo upravit i transmitter.vhd, aby reagoval na zmáčknutí tlačítka. Dále nemáme propojení mezi daty čítače a vstup na trasmitter. Receiver ještě není plně otestová, a chybí mu implementování zobrazení na LEDky. Jediné funkční části jsou čítač, clock_enable a 7-segmentový driver, které jsme dělali v předešlých hodinách.

## References

1. https://nandland.com/?s=UART
2. https://chat.openai.com
