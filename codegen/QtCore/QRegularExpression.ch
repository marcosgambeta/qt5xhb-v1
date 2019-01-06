%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QRegularExpression::MatchOption
flags QRegularExpression::MatchOptions
*/
#define QRegularExpression_NoMatchOption                             0x0000
#define QRegularExpression_AnchoredMatchOption                       0x0001
#define QRegularExpression_DontCheckSubjectStringMatchOption         0x0002

/*
enum QRegularExpression::MatchType
*/
#define QRegularExpression_NormalMatch                               0
#define QRegularExpression_PartialPreferCompleteMatch                1
#define QRegularExpression_PartialPreferFirstMatch                   2
#define QRegularExpression_NoMatch                                   3

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
#define QRegularExpression_OptimizeOnFirstUsageOption                0x0080
#define QRegularExpression_DontAutomaticallyOptimizeOption           0x0100
