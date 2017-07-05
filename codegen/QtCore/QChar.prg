$header

#include "hbclass.ch"

CLASS QChar

   DATA pointer
   DATA self_destruction INIT .F.

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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QChar ()
*/
HB_FUNC_STATIC( QCHAR_NEW1 )
{
  QChar * o = new QChar ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( char ch )
*/
HB_FUNC_STATIC( QCHAR_NEW2 )
{
  char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( uchar ch )
*/
HB_FUNC_STATIC( QCHAR_NEW3 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( QLatin1Char ch )
*/
HB_FUNC_STATIC( QCHAR_NEW4 )
{
  QChar * o = new QChar ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( uchar cell, uchar row )
*/
HB_FUNC_STATIC( QCHAR_NEW5 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  uchar par2 = ISCHAR(2)? (uchar) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QChar * o = new QChar ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( ushort code )
*/
HB_FUNC_STATIC( QCHAR_NEW6 )
{
  ushort par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( short code )
*/
HB_FUNC_STATIC( QCHAR_NEW7 )
{
  short par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( uint code )
*/
HB_FUNC_STATIC( QCHAR_NEW8 )
{
  uint par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( int code )
*/
HB_FUNC_STATIC( QCHAR_NEW9 )
{
  QChar * o = new QChar ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QChar ( SpecialCharacter ch )
*/
HB_FUNC_STATIC( QCHAR_NEW10 )
{
  QChar * o = new QChar ( (QChar::SpecialCharacter) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, false );
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

/*
Category category () const
*/
HB_FUNC_STATIC( QCHAR_CATEGORY )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->category () );
  }
}

/*
uchar cell () const
*/
HB_FUNC_STATIC( QCHAR_CELL )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->cell () );
  }
}

/*
unsigned char combiningClass () const
*/
HB_FUNC_STATIC( QCHAR_COMBININGCLASS )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->combiningClass () );
  }
}

/*
Decomposition decompositionTag () const
*/
HB_FUNC_STATIC( QCHAR_DECOMPOSITIONTAG )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->decompositionTag () );
  }
}

/*
int digitValue () const
*/
$method=|int|digitValue|

/*
Direction direction () const
*/
HB_FUNC_STATIC( QCHAR_DIRECTION )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->direction () );
  }
}

/*
bool hasMirrored () const
*/
$method=|bool|hasMirrored|

/*
bool isDigit () const
*/
$method=|bool|isDigit|

/*
bool isHighSurrogate () const
*/
$method=|bool|isHighSurrogate|

/*
bool isLetter () const
*/
$method=|bool|isLetter|

/*
bool isLetterOrNumber () const
*/
$method=|bool|isLetterOrNumber|

/*
bool isLowSurrogate () const
*/
$method=|bool|isLowSurrogate|

/*
bool isLower () const
*/
$method=|bool|isLower|

/*
bool isMark () const
*/
$method=|bool|isMark|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isNumber () const
*/
$method=|bool|isNumber|

/*
bool isPrint () const
*/
$method=|bool|isPrint|

/*
bool isPunct () const
*/
$method=|bool|isPunct|

/*
bool isSpace () const
*/
$method=|bool|isSpace|

/*
bool isSymbol () const
*/
$method=|bool|isSymbol|

/*
bool isTitleCase () const
*/
$method=|bool|isTitleCase|

/*
bool isUpper () const
*/
$method=|bool|isUpper|

/*
Joining joining () const
*/
HB_FUNC_STATIC( QCHAR_JOINING )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->joining () );
  }
}

/*
QChar mirroredChar () const
*/
$method=|QChar|mirroredChar|

/*
uchar row () const
*/
HB_FUNC_STATIC( QCHAR_ROW )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->row () );
  }
}

/*
QChar toCaseFolded () const
*/
$method=|QChar|toCaseFolded|

/*
char toLatin1 () const
*/
HB_FUNC_STATIC( QCHAR_TOLATIN1 )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toLatin1 () );
  }
}

/*
QChar toLower () const
*/
$method=|QChar|toLower|

/*
QChar toTitleCase () const
*/
$method=|QChar|toTitleCase|

/*
QChar toUpper () const
*/
$method=|QChar|toUpper|

/*
ushort unicode () const
*/
HB_FUNC_STATIC( QCHAR_UNICODE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->unicode () );
  }
}

/*
UnicodeVersion unicodeVersion () const
*/
HB_FUNC_STATIC( QCHAR_UNICODEVERSION )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->unicodeVersion () );
  }
}

// TODO: implementar metódos estáticos

$extraMethods

#pragma ENDDUMP
