## 4.2
**També pots comprovar el seu valor en decimal en el simulador. De quina manera ho consultaràs?**    

1.  En la ventana `Execute` desmarcamos la casilla de `Hexadecimal Values`.
2.  En el panel de registros entramos en el `Coproc 1`.
3.  El primer valor, nombrado como `$f0`, se puede visualizar como float y como double.

**Quin és el valor final de cflotant, en decimal, que dóna Mars?**    
-32024.625

## 4.3
| Decimal |                       Cfixa                       |  Cflotant  |
|:-------:|:-------------------------------------------------:|:----------:|
|   0.0   | 0.0000000000000000000.000000000000 --> 0x00000000 | 0x00000000 |
|   -0.0  | 1.0000000000000000000.000000000000 --> 0x80000000 | 0x80000000 |
|  12.75  | 0.0000000000000001100.011100110011 --> 0x0000C733 | 0x41473300 |

## 4.4
1.  **Quina condició ha de complir el valor inicial de cfixa perquè es produeixi
pèrdua de precisió en la conversió que proposa aquesta pràctica?**   
Es perd precisió quan la mantisa té mes de 23 xifres binaries significatives.   

2.  **Indica un valor de cfixa per al qual es produiria pèrdua de precisió al convertir-lo, i el corresponent valor en coma flotant:**    

|    Cfixa   |  Cflotant  |
|:----------:|:----------:|
| 0x003FF3FF | 0x447FCFFC |

3.  **En quina sentència concreta del programa en alt nivell es pot produir la pèrdua de precisió?**   
cf = (cf>>8)&0x7FFFFF   

4.  **Quin dels 4 modes d’arrodoniment que coneixes està portant a la pràctica aquest programa de conversió?**    
Truncament  

5.  **El format de coma fixa explicat en aquesta pràctica permet codificar un rang de valors bastant limitat. Indica un número positiu que estigui DINS el rang del format de coma flotant de simple precisió (en decimal) però que estigui FORA del rang del format de coma fixa. Indica també quin és el MENOR número potència de 2 que compleixi aquesta condició.**   
3*10^(-15)
