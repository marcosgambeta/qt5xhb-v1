%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QChar::Category
*/
#define QChar_Mark_NonSpacing                                        1
#define QChar_Mark_SpacingCombining                                  2
#define QChar_Mark_Enclosing                                         3
#define QChar_Number_DecimalDigit                                    4
#define QChar_Number_Letter                                          5
#define QChar_Number_Other                                           6
#define QChar_Separator_Space                                        7
#define QChar_Separator_Line                                         8
#define QChar_Separator_Paragraph                                    9
#define QChar_Other_Control                                          10
#define QChar_Other_Format                                           11
#define QChar_Other_Surrogate                                        12
#define QChar_Other_PrivateUse                                       13
#define QChar_Other_NotAssigned                                      14
#define QChar_Letter_Uppercase                                       15
#define QChar_Letter_Lowercase                                       16
#define QChar_Letter_Titlecase                                       17
#define QChar_Letter_Modifier                                        18
#define QChar_Letter_Other                                           19
#define QChar_Punctuation_Connector                                  20
#define QChar_Punctuation_Dash                                       21
#define QChar_Punctuation_Open                                       22
#define QChar_Punctuation_Close                                      23
#define QChar_Punctuation_InitialQuote                               24
#define QChar_Punctuation_FinalQuote                                 25
#define QChar_Punctuation_Other                                      26
#define QChar_Symbol_Math                                            27
#define QChar_Symbol_Currency                                        28
#define QChar_Symbol_Modifier                                        29
#define QChar_Symbol_Other                                           30
#define QChar_NoCategory                                             0

/*
enum QChar::Decomposition
*/
#define QChar_NoDecomposition                                        0
#define QChar_Canonical                                              1
#define QChar_Circle                                                 8
#define QChar_Compat                                                 16
#define QChar_Final                                                  6
#define QChar_Font                                                   2
#define QChar_Fraction                                               17
#define QChar_Initial                                                4
#define QChar_Isolated                                               7
#define QChar_Medial                                                 5
#define QChar_Narrow                                                 13
#define QChar_NoBreak                                                3
#define QChar_Small                                                  14
#define QChar_Square                                                 15
#define QChar_Sub                                                    10
#define QChar_Super                                                  9
#define QChar_Vertical                                               11
#define QChar_Wide                                                   12

/*
enum QChar::Direction
*/
#define QChar_DirAL                                                  13
#define QChar_DirAN                                                  5
#define QChar_DirB                                                   7
#define QChar_DirBN                                                  18
#define QChar_DirCS                                                  6
#define QChar_DirEN                                                  2
#define QChar_DirES                                                  3
#define QChar_DirET                                                  4
#define QChar_DirL                                                   0
#define QChar_DirLRE                                                 11
#define QChar_DirLRO                                                 12
#define QChar_DirNSM                                                 17
#define QChar_DirON                                                  10
#define QChar_DirPDF                                                 16
#define QChar_DirR                                                   1
#define QChar_DirRLE                                                 14
#define QChar_DirRLO                                                 15
#define QChar_DirS                                                   8
#define QChar_DirWS                                                  9

/*
enum QChar::Joining
*/
#define QChar_Center                                                 3
#define QChar_Dual                                                   1
#define QChar_OtherJoining                                           0
#define QChar_Right                                                  2

/*
enum QChar::SpecialCharacter
*/
#define QChar_Null                                                   0x0000
#define QChar_Nbsp                                                   0x00a0
#define QChar_ReplacementCharacter                                   0xfffd
#define QChar_ObjectReplacementCharacter                             0xfffc
#define QChar_ByteOrderMark                                          0xfeff
#define QChar_ByteOrderSwapped                                       0xfffe
#define QChar_ParagraphSeparator                                     0x2029
#define QChar_LineSeparator                                          0x2028

/*
enum QChar::UnicodeVersion
*/
#define QChar_Unicode_1_1                                            1
#define QChar_Unicode_2_0                                            2
#define QChar_Unicode_2_1_2                                          3
#define QChar_Unicode_3_0                                            4
#define QChar_Unicode_3_1                                            5
#define QChar_Unicode_3_2                                            6
#define QChar_Unicode_4_0                                            7
#define QChar_Unicode_4_1                                            8
#define QChar_Unicode_5_0                                            9
#define QChar_Unicode_Unassigned                                     0
