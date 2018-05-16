%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD category
   METHOD cell
   METHOD combiningClass
   METHOD decompositionTag
   METHOD digitValue
   METHOD direction
   METHOD hasMirrored
   METHOD isDigit
   METHOD isHighSurrogate
   METHOD isLetter
   METHOD isLetterOrNumber
   METHOD isLowSurrogate
   METHOD isLower
   METHOD isMark
   METHOD isNull
   METHOD isNumber
   METHOD isPrint
   METHOD isPunct
   METHOD isSpace
   METHOD isSymbol
   METHOD isTitleCase
   METHOD isUpper
   METHOD joining
   METHOD mirroredChar
   METHOD row
   METHOD toCaseFolded
   METHOD toLatin1
   METHOD toLower
   METHOD toTitleCase
   METHOD toUpper
   METHOD unicode
   METHOD unicodeVersion

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QChar ()
HB_FUNC_STATIC( QCHAR_NEW1 )
{
  QChar * o = new QChar ();
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( char ch )
HB_FUNC_STATIC( QCHAR_NEW2 )
{
  char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( uchar ch )
HB_FUNC_STATIC( QCHAR_NEW3 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( QLatin1Char ch )
HB_FUNC_STATIC( QCHAR_NEW4 )
{
  QChar * o = new QChar ();
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( uchar cell, uchar row )
HB_FUNC_STATIC( QCHAR_NEW5 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  uchar par2 = ISCHAR(2)? (uchar) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QChar * o = new QChar ( par1, par2 );
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( ushort code )
HB_FUNC_STATIC( QCHAR_NEW6 )
{
  ushort par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( short code )
HB_FUNC_STATIC( QCHAR_NEW7 )
{
  short par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( uint code )
HB_FUNC_STATIC( QCHAR_NEW8 )
{
  uint par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( int code )
HB_FUNC_STATIC( QCHAR_NEW9 )
{
  QChar * o = new QChar ( PINT(1) );
  _qt5xhb_returnNewObject( o, false );
}

$prototype=QChar ( SpecialCharacter ch )
HB_FUNC_STATIC( QCHAR_NEW10 )
{
  QChar * o = new QChar ( (QChar::SpecialCharacter) hb_parni(1) );
  _qt5xhb_returnNewObject( o, false );
}

//[01]QChar ()
//[02]QChar ( char ch )
//[03]QChar ( uchar ch )
//[04]QChar ( QLatin1Char ch )
//[05]QChar ( uchar cell, uchar row )
//[06]QChar ( ushort code )
//[07]QChar ( short code )
//[08]QChar ( uint code )
//[09]QChar ( int code )
//[10]QChar ( SpecialCharacter ch )

HB_FUNC_STATIC( QCHAR_NEW ) // TODO: completar implementação
{
  HB_FUNC_EXEC( QCHAR_NEW1 );
}

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
