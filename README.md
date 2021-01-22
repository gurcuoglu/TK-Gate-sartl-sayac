# BLM417-Odev2
# Programlanabilir Yapılar - Ödev 2
## Ödev tkGate programında yapılacaktır.

Ödevde sayici isimli modülün Verilog dilinde kodlanması istenilmektedir.

![enter image description here](https://drive.google.com/uc?export=download&id=16pxDaVC0cmx6mrOn6RFWXVKOVOmfqih2)


sayici modülünde clk (1 bit), reset_n (1 bit), data_in (8 bit) ve S (2 bit) girişleri ve data_out (8 bit) çıkışı bulunmaktadır. reset_n değeri 0 ise data_in değeri 0 olacaktır. reset_n değeri 0’dan farklı olursa S değeri;

- 0 ise, işlem yapmadan bekle
- 1 ise, ileri say
- 2 ise, geri say
- 3 ise, sayı yükle
 
işlemini yapması gerekmektedir.

Sayı yükle işleminde _data_in_ girişindeki kullanıcının belirlediği değer sayıcıya (data_out) yüklenecektir. data_in ve S, tkGate I/O arayüzünden  DIP Switch girişlerine, data_out 7-Seg. LED (DEC) çıkışına bağlanmalıdır.
