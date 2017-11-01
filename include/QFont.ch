/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QFONT_CH
#define QFONT_CH

/*
enum QFont::Capitalization
*/
#define QFont_MixedCase                                              0
#define QFont_AllUppercase                                           1
#define QFont_AllLowercase                                           2
#define QFont_SmallCaps                                              3
#define QFont_Capitalize                                             4

/*
enum QFont::SpacingType
*/
#define QFont_PercentageSpacing                                      0
#define QFont_AbsoluteSpacing                                        1

/*
enum QFont::Stretch
*/
#define QFont_UltraCondensed                                         50
#define QFont_ExtraCondensed                                         62
#define QFont_Condensed                                              75
#define QFont_SemiCondensed                                          87
#define QFont_Unstretched                                            100
#define QFont_SemiExpanded                                           112
#define QFont_Expanded 125                                           125
#define QFont_ExtraExpanded                                          150
#define QFont_UltraExpanded                                          200

/*
enum QFont::Style
*/
#define QFont_StyleNormal                                            0
#define QFont_StyleItalic                                            1
#define QFont_StyleOblique                                           2

/*
enum QFont::StyleHint
*/
#define QFont_AnyStyle                                               ?
#define QFont_SansSerif                                              QFont_Helvetica
#define QFont_Helvetica                                              0
#define QFont_Serif                                                  QFont_Times
#define QFont_Times                                                  ?
#define QFont_TypeWriter                                             QFont_Courier
#define QFont_Courier                                                ?
#define QFont_OldEnglish                                             ?
#define QFont_Decorative                                             QFont_OldEnglish
#define QFont_Monospace                                              ?
#define QFont_Fantasy                                                ?
#define QFont_Cursive                                                ?
#define QFont_System                                                 ?

/*
enum QFont::StyleStrategy
*/
#define QFont_PreferDefault                                          0x0001
#define QFont_PreferBitmap                                           0x0002
#define QFont_PreferDevice                                           0x0004
#define QFont_PreferOutline                                          0x0008
#define QFont_ForceOutline                                           0x0010
#define QFont_NoAntialias                                            0x0100
#define QFont_PreferAntialias                                        0x0080
#define QFont_OpenGLCompatible                                       0x0200
#define QFont_NoFontMerging                                          0x8000
#define QFont_PreferMatch                                            0x0020
#define QFont_PreferQuality                                          0x0040
#define QFont_ForceIntegerMetrics                                    0x0400

/*
enum QFont::Weight
*/
#define QFont_Light                                                  25
#define QFont_Normal                                                 50
#define QFont_DemiBold                                               63
#define QFont_Bold                                                   75
#define QFont_Black                                                  87

#endif /* QFONT_CH */
