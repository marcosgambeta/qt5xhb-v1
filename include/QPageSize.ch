/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QPAGESIZE_CH
#define QPAGESIZE_CH

/*
enum QPageSize::PageSizeId
*/
#define QPageSize_A4                                                 0
#define QPageSize_B5                                                 1
#define QPageSize_Letter                                             2
#define QPageSize_Legal                                              3
#define QPageSize_Executive                                          4
#define QPageSize_A0                                                 5
#define QPageSize_A1                                                 6
#define QPageSize_A2                                                 7
#define QPageSize_A3                                                 8
#define QPageSize_A5                                                 9
#define QPageSize_A6                                                 10
#define QPageSize_A7                                                 11
#define QPageSize_A8                                                 12
#define QPageSize_A9                                                 13
#define QPageSize_B0                                                 14
#define QPageSize_B1                                                 15
#define QPageSize_B10                                                16
#define QPageSize_B2                                                 17
#define QPageSize_B3                                                 18
#define QPageSize_B4                                                 19
#define QPageSize_B6                                                 20
#define QPageSize_B7                                                 21
#define QPageSize_B8                                                 22
#define QPageSize_B9                                                 23
#define QPageSize_C5E                                                24
#define QPageSize_Comm10E                                            25
#define QPageSize_DLE                                                26
#define QPageSize_Folio                                              27
#define QPageSize_Ledger                                             28
#define QPageSize_Tabloid                                            29
#define QPageSize_Custom                                             30
#define QPageSize_A10                                                31
#define QPageSize_A3Extra                                            32
#define QPageSize_A4Extra                                            33
#define QPageSize_A4Plus                                             34
#define QPageSize_A4Small                                            35
#define QPageSize_A5Extra                                            36
#define QPageSize_B5Extra                                            37
#define QPageSize_JisB0                                              38
#define QPageSize_JisB1                                              39
#define QPageSize_JisB2                                              40
#define QPageSize_JisB3                                              41
#define QPageSize_JisB4                                              42
#define QPageSize_JisB5                                              43
#define QPageSize_JisB6                                              44
#define QPageSize_JisB7                                              45
#define QPageSize_JisB8                                              46
#define QPageSize_JisB9                                              47
#define QPageSize_JisB10                                             48
#define QPageSize_AnsiC                                              49
#define QPageSize_AnsiD                                              50
#define QPageSize_AnsiE                                              51
#define QPageSize_LegalExtra                                         52
#define QPageSize_LetterExtra                                        53
#define QPageSize_LetterPlus                                         54
#define QPageSize_LetterSmall                                        55
#define QPageSize_TabloidExtra                                       56
#define QPageSize_ArchA                                              57
#define QPageSize_ArchB                                              58
#define QPageSize_ArchC                                              59
#define QPageSize_ArchD                                              60
#define QPageSize_ArchE                                              61
#define QPageSize_Imperial7x9                                        62
#define QPageSize_Imperial8x10                                       63
#define QPageSize_Imperial9x11                                       64
#define QPageSize_Imperial9x12                                       65
#define QPageSize_Imperial10x11                                      66
#define QPageSize_Imperial10x13                                      67
#define QPageSize_Imperial10x14                                      68
#define QPageSize_Imperial12x11                                      69
#define QPageSize_Imperial15x11                                      70
#define QPageSize_ExecutiveStandard                                  71
#define QPageSize_Note                                               72
#define QPageSize_Quarto                                             73
#define QPageSize_Statement                                          74
#define QPageSize_SuperA                                             75
#define QPageSize_SuperB                                             76
#define QPageSize_Postcard                                           77
#define QPageSize_DoublePostcard                                     78
#define QPageSize_Prc16K                                             79
#define QPageSize_Prc32K                                             80
#define QPageSize_Prc32KBig                                          81
#define QPageSize_FanFoldUS                                          82
#define QPageSize_FanFoldGerman                                      83
#define QPageSize_FanFoldGermanLegal                                 84
#define QPageSize_EnvelopeB4                                         85
#define QPageSize_EnvelopeB5                                         86
#define QPageSize_EnvelopeB6                                         87
#define QPageSize_EnvelopeC0                                         88
#define QPageSize_EnvelopeC1                                         89
#define QPageSize_EnvelopeC2                                         90
#define QPageSize_EnvelopeC3                                         91
#define QPageSize_EnvelopeC4                                         92
#define QPageSize_EnvelopeC6                                         93
#define QPageSize_EnvelopeC65                                        94
#define QPageSize_EnvelopeC7                                         95
#define QPageSize_Envelope9                                          96
#define QPageSize_Envelope11                                         97
#define QPageSize_Envelope12                                         98
#define QPageSize_Envelope14                                         99
#define QPageSize_EnvelopeMonarch                                    100
#define QPageSize_EnvelopePersonal                                   101
#define QPageSize_EnvelopeChou3                                      102
#define QPageSize_EnvelopeChou4                                      103
#define QPageSize_EnvelopeInvite                                     104
#define QPageSize_EnvelopeItalian                                    105
#define QPageSize_EnvelopeKaku2                                      106
#define QPageSize_EnvelopeKaku3                                      107
#define QPageSize_EnvelopePrc1                                       108
#define QPageSize_EnvelopePrc2                                       109
#define QPageSize_EnvelopePrc3                                       110
#define QPageSize_EnvelopePrc4                                       111
#define QPageSize_EnvelopePrc5                                       112
#define QPageSize_EnvelopePrc6                                       113
#define QPageSize_EnvelopePrc7                                       114
#define QPageSize_EnvelopePrc8                                       115
#define QPageSize_EnvelopePrc9                                       116
#define QPageSize_EnvelopePrc10                                      117
#define QPageSize_EnvelopeYou4                                       118
#define QPageSize_LastPageSize                                       QPageSize_EnvelopeYou4 // 119
#define QPageSize_NPageSize                                          QPageSize_LastPageSize // 120
#define QPageSize_NPaperSize                                         QPageSize_LastPageSize // 121
#define QPageSize_AnsiA                                              QPageSize_Letter       // 122
#define QPageSize_AnsiB                                              QPageSize_Ledger       // 123
#define QPageSize_EnvelopeC5                                         QPageSize_C5E          // 124
#define QPageSize_EnvelopeDL                                         QPageSize_DLE          // 125
#define QPageSize_Envelope10                                         QPageSize_Comm10E      // 126

/*
enum QPageSize::Unit
*/
#define QPageSize_Millimeter                                         0
#define QPageSize_Point                                              1
#define QPageSize_Inch                                               2
#define QPageSize_Pica                                               3
#define QPageSize_Didot                                              4
#define QPageSize_Cicero                                             5

/*
enum QPageSize::SizeMatchPolicy
*/
#define QPageSize_FuzzyMatch                                         0
#define QPageSize_FuzzyOrientationMatch                              1
#define QPageSize_ExactMatch                                         2

#endif /* QPAGESIZE_CH */
