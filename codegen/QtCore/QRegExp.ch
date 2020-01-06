%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QRegExp::CaretMode
*/
#define QRegExp_CaretAtZero                                          0
#define QRegExp_CaretAtOffset                                        1
#define QRegExp_CaretWontMatch                                       2

/*
enum QRegExp::PatternSyntax
*/
#define QRegExp_RegExp                                               0
#define QRegExp_RegExp2                                              3
#define QRegExp_Wildcard                                             1
#define QRegExp_WildcardUnix                                         4
#define QRegExp_FixedString                                          2
#define QRegExp_W3CXmlSchema11                                       5
