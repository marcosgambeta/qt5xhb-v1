/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QPAGEDPAINTDEVICE_CH
#define QPAGEDPAINTDEVICE_CH

/*
enum QPagedPaintDevice::PageSize
*/
#define QPagedPaintDevice_A4                                         0
#define QPagedPaintDevice_B5                                         1
#define QPagedPaintDevice_Letter                                     2
#define QPagedPaintDevice_Legal                                      3
#define QPagedPaintDevice_Executive                                  4
#define QPagedPaintDevice_A0                                         5
#define QPagedPaintDevice_A1                                         6
#define QPagedPaintDevice_A2                                         7
#define QPagedPaintDevice_A3                                         8
#define QPagedPaintDevice_A5                                         9
#define QPagedPaintDevice_A6                                         10
#define QPagedPaintDevice_A7                                         11
#define QPagedPaintDevice_A8                                         12
#define QPagedPaintDevice_A9                                         13
#define QPagedPaintDevice_B0                                         14
#define QPagedPaintDevice_B1                                         15
#define QPagedPaintDevice_B10                                        16
#define QPagedPaintDevice_B2                                         17
#define QPagedPaintDevice_B3                                         18
#define QPagedPaintDevice_B4                                         19
#define QPagedPaintDevice_B6                                         20
#define QPagedPaintDevice_B7                                         21
#define QPagedPaintDevice_B8                                         22
#define QPagedPaintDevice_B9                                         23
#define QPagedPaintDevice_C5E                                        24
#define QPagedPaintDevice_Comm10E                                    25
#define QPagedPaintDevice_DLE                                        26
#define QPagedPaintDevice_Folio                                      27
#define QPagedPaintDevice_Ledger                                     28
#define QPagedPaintDevice_Tabloid                                    29
#define QPagedPaintDevice_Custom                                     30
#define QPagedPaintDevice_A10                                        31
#define QPagedPaintDevice_A3Extra                                    32
#define QPagedPaintDevice_A4Extra                                    33
#define QPagedPaintDevice_A4Plus                                     34
#define QPagedPaintDevice_A4Small                                    35
#define QPagedPaintDevice_A5Extra                                    36
#define QPagedPaintDevice_B5Extra                                    37
#define QPagedPaintDevice_JisB0                                      38
#define QPagedPaintDevice_JisB1                                      39
#define QPagedPaintDevice_JisB2                                      40
#define QPagedPaintDevice_JisB3                                      41
#define QPagedPaintDevice_JisB4                                      42
#define QPagedPaintDevice_JisB5                                      43
#define QPagedPaintDevice_JisB6                                      44
#define QPagedPaintDevice_JisB7                                      45
#define QPagedPaintDevice_JisB8                                      46
#define QPagedPaintDevice_JisB9                                      47
#define QPagedPaintDevice_JisB10                                     48
#define QPagedPaintDevice_AnsiC                                      49
#define QPagedPaintDevice_AnsiD                                      50
#define QPagedPaintDevice_AnsiE                                      51
#define QPagedPaintDevice_LegalExtra                                 52
#define QPagedPaintDevice_LetterExtra                                53
#define QPagedPaintDevice_LetterPlus                                 54
#define QPagedPaintDevice_LetterSmall                                55
#define QPagedPaintDevice_TabloidExtra                               56
#define QPagedPaintDevice_ArchA                                      57
#define QPagedPaintDevice_ArchB                                      58
#define QPagedPaintDevice_ArchC                                      59
#define QPagedPaintDevice_ArchD                                      60
#define QPagedPaintDevice_ArchE                                      61
#define QPagedPaintDevice_Imperial7x9                                62
#define QPagedPaintDevice_Imperial8x10                               63
#define QPagedPaintDevice_Imperial9x11                               64
#define QPagedPaintDevice_Imperial9x12                               65
#define QPagedPaintDevice_Imperial10x11                              66
#define QPagedPaintDevice_Imperial10x13                              67
#define QPagedPaintDevice_Imperial10x14                              68
#define QPagedPaintDevice_Imperial12x11                              69
#define QPagedPaintDevice_Imperial15x11                              70
#define QPagedPaintDevice_ExecutiveStandard                          71
#define QPagedPaintDevice_Note                                       72
#define QPagedPaintDevice_Quarto                                     73
#define QPagedPaintDevice_Statement                                  74
#define QPagedPaintDevice_SuperA                                     75
#define QPagedPaintDevice_SuperB                                     76
#define QPagedPaintDevice_Postcard                                   77
#define QPagedPaintDevice_DoublePostcard                             78
#define QPagedPaintDevice_Prc16K                                     79
#define QPagedPaintDevice_Prc32K                                     80
#define QPagedPaintDevice_Prc32KBig                                  81
#define QPagedPaintDevice_FanFoldUS                                  82
#define QPagedPaintDevice_FanFoldGerman                              83
#define QPagedPaintDevice_FanFoldGermanLegal                         84
#define QPagedPaintDevice_EnvelopeB4                                 85
#define QPagedPaintDevice_EnvelopeB5                                 86
#define QPagedPaintDevice_EnvelopeB6                                 87
#define QPagedPaintDevice_EnvelopeC0                                 88
#define QPagedPaintDevice_EnvelopeC1                                 89
#define QPagedPaintDevice_EnvelopeC2                                 90
#define QPagedPaintDevice_EnvelopeC3                                 91
#define QPagedPaintDevice_EnvelopeC4                                 92
#define QPagedPaintDevice_EnvelopeC6                                 93
#define QPagedPaintDevice_EnvelopeC65                                94
#define QPagedPaintDevice_EnvelopeC7                                 95
#define QPagedPaintDevice_Envelope9                                  96
#define QPagedPaintDevice_Envelope11                                 97
#define QPagedPaintDevice_Envelope12                                 98
#define QPagedPaintDevice_Envelope14                                 99
#define QPagedPaintDevice_EnvelopeMonarch                            100
#define QPagedPaintDevice_EnvelopePersonal                           101
#define QPagedPaintDevice_EnvelopeChou3                              102
#define QPagedPaintDevice_EnvelopeChou4                              103
#define QPagedPaintDevice_EnvelopeInvite                             104
#define QPagedPaintDevice_EnvelopeItalian                            105
#define QPagedPaintDevice_EnvelopeKaku2                              106
#define QPagedPaintDevice_EnvelopeKaku3                              107
#define QPagedPaintDevice_EnvelopePrc1                               108
#define QPagedPaintDevice_EnvelopePrc2                               109
#define QPagedPaintDevice_EnvelopePrc3                               110
#define QPagedPaintDevice_EnvelopePrc4                               111
#define QPagedPaintDevice_EnvelopePrc5                               112
#define QPagedPaintDevice_EnvelopePrc6                               113
#define QPagedPaintDevice_EnvelopePrc7                               114
#define QPagedPaintDevice_EnvelopePrc8                               115
#define QPagedPaintDevice_EnvelopePrc9                               116
#define QPagedPaintDevice_EnvelopePrc10                              117
#define QPagedPaintDevice_EnvelopeYou4                               118
#define QPagedPaintDevice_LastPageSize                               QPagedPaintDevice_EnvelopeYou4 // 119
#define QPagedPaintDevice_NPageSize                                  QPagedPaintDevice_LastPageSize // 120
#define QPagedPaintDevice_NPaperSize                                 QPagedPaintDevice_LastPageSize // 121
#define QPagedPaintDevice_AnsiA                                      QPagedPaintDevice_Letter       // 122
#define QPagedPaintDevice_AnsiB                                      QPagedPaintDevice_Ledger       // 123
#define QPagedPaintDevice_EnvelopeC5                                 QPagedPaintDevice_C5E          // 124
#define QPagedPaintDevice_EnvelopeDL                                 QPagedPaintDevice_DLE          // 125
#define QPagedPaintDevice_Envelope10                                 QPagedPaintDevice_Comm10E      // 126

#endif /* QPAGEDPAINTDEVICE_CH */
