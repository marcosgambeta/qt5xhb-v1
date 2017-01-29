/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QTextBoundaryFinder::BoundaryType
*/
#define QTextBoundaryFinder_Grapheme                                 0
#define QTextBoundaryFinder_Word                                     1
#define QTextBoundaryFinder_Sentence                                 2
#define QTextBoundaryFinder_Line                                     3

/*
enum QTextBoundaryFinder::BoundaryReason
flags QTextBoundaryFinder::BoundaryReasons
*/
#define QTextBoundaryFinder_NotAtBoundary                            0
#define QTextBoundaryFinder_BreakOpportunity                         0x1f
#define QTextBoundaryFinder_StartOfItem                              0x20
#define QTextBoundaryFinder_EndOfItem                                0x40
#define QTextBoundaryFinder_MandatoryBreak                           0x80
#define QTextBoundaryFinder_SoftHyphen                               0x100
