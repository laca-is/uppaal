//This file was generated from (Academic) UPPAAL 5.0.0 (rev. 714BA9DB36F49691), 2023-06-21

/*
Propriedade n\u00e3o satisfeita
*/
A[] carro1.Cruzar imply placaPare.Cruzamento_Livre

/*
Sempre \u00e9 verdade que se o carro est\u00e1 cruzando ent\u00e3o o cruzamento est\u00e1 livre (de um dos modelos: pedestre ou placa pare)
*/
A[] carro1.Cruzar imply (placaPare.Cruzamento_Livre || pedestre.Cruzamento_Livre)

/*

*/
A<> pedestre.Existe_Pedestre imply (carro1.No_Cruzamento || carro2.No_Cruzamento || carro3.No_Cruzamento || carro4.No_Cruzamento)

/*

*/
A[] pedestre.Existe_Pedestre imply (not carro1.Cruzar || not carro2.Cruzar || not carro3.Cruzar || not carro4.Cruzar)

/*

*/
A<> carro2.Aguardar_Pare imply (carro2.c_pare >= 1 && carro2.c_pare <= 3)

/*

*/
A<> carro3.Aguardar_Pare imply (carro3.c_pedestre >= 2 && carro3.c_pedestre <= 4)

/*

*/
A[] not deadlock
