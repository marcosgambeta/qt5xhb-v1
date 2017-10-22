/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QRegularExpression::MatchOption
flags QRegularExpression::MatchOptions
*/
#define QRegularExpression_NoMatchOption                             0x0000
#define QRegularExpression_AnchoredMatchOption                       0x0001

/*
enum QRegularExpression::MatchType
*/
#define QRegularExpression_NormalMatch                               0
#define QRegularExpression_PartialPreferCompleteMatch                1
#define QRegularExpression_PartialPreferFirstMatch                   2

/*
enum QRegularExpression::PatternOption
flags QRegularExpression::PatternOptions
*/
#define QRegularExpression_NoPatternOption                           0x0000
#define QRegularExpression_CaseInsensitiveOption                     0x0001
#define QRegularExpression_DotMatchesEverythingOption                0x0002
#define QRegularExpression_MultilineOption                           0x0004
#define QRegularExpression_ExtendedPatternSyntaxOption               0x0008
#define QRegularExpression_InvertedGreedinessOption                  0x0010
#define QRegularExpression_DontCaptureOption                         0x0020
#define QRegularExpression_UseUnicodePropertiesOption                0x0040
