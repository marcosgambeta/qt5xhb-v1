%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QChar ()
$constructor=|new1|

$prototype=QChar ( char ch )
HB_FUNC_STATIC( QCHAR_NEW2 )
{
  char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  Qt5xHb::returnNewObject( o, false );
}
$addMethod=new2

$prototype=QChar ( uchar ch )
HB_FUNC_STATIC( QCHAR_NEW3 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  Qt5xHb::returnNewObject( o, false );
}
$addMethod=new3

$prototype=QChar ( QLatin1Char ch )
%% TODO: $constructor=|new4|QLatin1Char

$prototype=QChar ( uchar cell, uchar row )
HB_FUNC_STATIC( QCHAR_NEW5 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  uchar par2 = ISCHAR(2)? (uchar) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QChar * o = new QChar ( par1, par2 );
  Qt5xHb::returnNewObject( o, false );
}
$addMethod=new5

$prototype=QChar ( ushort code )
$constructor=|new6|ushort

$prototype=QChar ( short code )
$constructor=|new7|short

$prototype=QChar ( uint code )
$constructor=|new8|uint

$prototype=QChar ( int code )
$constructor=|new9|int

$prototype=QChar ( SpecialCharacter ch )
$constructor=|new10|QChar::SpecialCharacter

/*
[01]QChar ()
[02]QChar ( char ch )
[03]QChar ( uchar ch )
[04]QChar ( QLatin1Char ch )
[05]QChar ( uchar cell, uchar row )
[06]QChar ( ushort code )
[07]QChar ( short code )
[08]QChar ( uint code )
[09]QChar ( int code )
[10]QChar ( SpecialCharacter ch )
*/

%% TODO: completar implementação
HB_FUNC_STATIC( QCHAR_NEW )
{
  HB_FUNC_EXEC( QCHAR_NEW1 );
}
$addMethod=new

$deleteMethod

$prototype=Category category () const
$method=|QChar::Category|category|

$prototype=uchar cell () const
$method=|uchar|cell|

$prototype=unsigned char combiningClass () const
$method=|unsigned char|combiningClass|

$prototype=Decomposition decompositionTag () const
$method=|QChar::Decomposition|decompositionTag|

$prototype=int digitValue () const
$method=|int|digitValue|

$prototype=Direction direction () const
$method=|QChar::Direction|direction|

$prototype=bool hasMirrored () const
$method=|bool|hasMirrored|

$prototype=bool isDigit () const
$method=|bool|isDigit|

$prototype=bool isHighSurrogate () const
$method=|bool|isHighSurrogate|

$prototype=bool isLetter () const
$method=|bool|isLetter|

$prototype=bool isLetterOrNumber () const
$method=|bool|isLetterOrNumber|

$prototype=bool isLowSurrogate () const
$method=|bool|isLowSurrogate|

$prototype=bool isLower () const
$method=|bool|isLower|

$prototype=bool isMark () const
$method=|bool|isMark|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isNumber () const
$method=|bool|isNumber|

$prototype=bool isPrint () const
$method=|bool|isPrint|

$prototype=bool isPunct () const
$method=|bool|isPunct|

$prototype=bool isSpace () const
$method=|bool|isSpace|

$prototype=bool isSymbol () const
$method=|bool|isSymbol|

$prototype=bool isTitleCase () const
$method=|bool|isTitleCase|

$prototype=bool isUpper () const
$method=|bool|isUpper|

$prototype=Joining joining () const
$method=|QChar::Joining|joining|

$prototype=QChar mirroredChar () const
$method=|QChar|mirroredChar|

$prototype=uchar row () const
$method=|uchar|row|

$prototype=QChar toCaseFolded () const
$method=|QChar|toCaseFolded|

$prototype=char toLatin1 () const
$method=|char|toLatin1|

$prototype=QChar toLower () const
$method=|QChar|toLower|

$prototype=QChar toTitleCase () const
$method=|QChar|toTitleCase|

$prototype=QChar toUpper () const
$method=|QChar|toUpper|

$prototype=ushort unicode () const
$method=|ushort|unicode|

$prototype=UnicodeVersion unicodeVersion () const
$method=|QChar::UnicodeVersion|unicodeVersion|

%% TODO: implementar metódos estáticos

$extraMethods

#pragma ENDDUMP
