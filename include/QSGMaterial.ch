/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QSGMaterial::Flag
flags QSGMaterial::Flags
*/
#define QSGMaterial_Blending                                         0x0001
#define QSGMaterial_RequiresDeterminant                              0x0002
#define QSGMaterial_RequiresFullMatrix                               hb_bitor(0x0008,QSGMaterial_RequiresFullMatrixExceptTranslate)
