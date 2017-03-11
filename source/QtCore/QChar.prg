/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QChar

   DATA pointer
   DATA class_id INIT Class_Id_QChar
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QChar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QChar>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QChar>
#endif

/*
QChar ()
*/
HB_FUNC_STATIC( QCHAR_NEW1 )
{
  QChar * o = new QChar (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( char ch )
*/
HB_FUNC_STATIC( QCHAR_NEW2 )
{
  char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( uchar ch )
*/
HB_FUNC_STATIC( QCHAR_NEW3 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( QLatin1Char ch )
*/
HB_FUNC_STATIC( QCHAR_NEW4 )
{
  QChar * o = new QChar (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( uchar cell, uchar row )
*/
HB_FUNC_STATIC( QCHAR_NEW5 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  uchar par2 = ISCHAR(2)? (uchar) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QChar * o = new QChar ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( ushort code )
*/
HB_FUNC_STATIC( QCHAR_NEW6 )
{
  ushort par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( short code )
*/
HB_FUNC_STATIC( QCHAR_NEW7 )
{
  short par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( uint code )
*/
HB_FUNC_STATIC( QCHAR_NEW8 )
{
  uint par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( int code )
*/
HB_FUNC_STATIC( QCHAR_NEW9 )
{
  int par1 = hb_parni(1);
  QChar * o = new QChar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QChar ( SpecialCharacter ch )
*/
HB_FUNC_STATIC( QCHAR_NEW10 )
{
  int par1 = hb_parni(1);
  QChar * o = new QChar (  (QChar::SpecialCharacter) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QChar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QCHAR_DELETE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Category category () const
*/
HB_FUNC_STATIC( QCHAR_CATEGORY )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->category (  ) );
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
    hb_retni( obj->cell (  ) );
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
    hb_retni( obj->combiningClass (  ) );
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
    hb_retni( obj->decompositionTag (  ) );
  }
}


/*
int digitValue () const
*/
HB_FUNC_STATIC( QCHAR_DIGITVALUE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->digitValue (  ) );
  }
}


/*
Direction direction () const
*/
HB_FUNC_STATIC( QCHAR_DIRECTION )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->direction (  ) );
  }
}


/*
bool hasMirrored () const
*/
HB_FUNC_STATIC( QCHAR_HASMIRRORED )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasMirrored (  ) );
  }
}


/*
bool isDigit () const
*/
HB_FUNC_STATIC( QCHAR_ISDIGIT )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDigit (  ) );
  }
}


/*
bool isHighSurrogate () const
*/
HB_FUNC_STATIC( QCHAR_ISHIGHSURROGATE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isHighSurrogate (  ) );
  }
}


/*
bool isLetter () const
*/
HB_FUNC_STATIC( QCHAR_ISLETTER )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLetter (  ) );
  }
}


/*
bool isLetterOrNumber () const
*/
HB_FUNC_STATIC( QCHAR_ISLETTERORNUMBER )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLetterOrNumber (  ) );
  }
}


/*
bool isLowSurrogate () const
*/
HB_FUNC_STATIC( QCHAR_ISLOWSURROGATE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLowSurrogate (  ) );
  }
}


/*
bool isLower () const
*/
HB_FUNC_STATIC( QCHAR_ISLOWER )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLower (  ) );
  }
}


/*
bool isMark () const
*/
HB_FUNC_STATIC( QCHAR_ISMARK )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMark (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QCHAR_ISNULL )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isNumber () const
*/
HB_FUNC_STATIC( QCHAR_ISNUMBER )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNumber (  ) );
  }
}


/*
bool isPrint () const
*/
HB_FUNC_STATIC( QCHAR_ISPRINT )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isPrint (  ) );
  }
}


/*
bool isPunct () const
*/
HB_FUNC_STATIC( QCHAR_ISPUNCT )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isPunct (  ) );
  }
}


/*
bool isSpace () const
*/
HB_FUNC_STATIC( QCHAR_ISSPACE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSpace (  ) );
  }
}


/*
bool isSymbol () const
*/
HB_FUNC_STATIC( QCHAR_ISSYMBOL )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSymbol (  ) );
  }
}


/*
bool isTitleCase () const
*/
HB_FUNC_STATIC( QCHAR_ISTITLECASE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTitleCase (  ) );
  }
}


/*
bool isUpper () const
*/
HB_FUNC_STATIC( QCHAR_ISUPPER )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isUpper (  ) );
  }
}


/*
Joining joining () const
*/
HB_FUNC_STATIC( QCHAR_JOINING )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->joining (  ) );
  }
}


/*
QChar mirroredChar () const
*/
HB_FUNC_STATIC( QCHAR_MIRROREDCHAR )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->mirroredChar (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
uchar row () const
*/
HB_FUNC_STATIC( QCHAR_ROW )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->row (  ) );
  }
}



/*
QChar toCaseFolded () const
*/
HB_FUNC_STATIC( QCHAR_TOCASEFOLDED )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->toCaseFolded (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
char toLatin1 () const
*/
HB_FUNC_STATIC( QCHAR_TOLATIN1 )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toLatin1 (  ) );
  }
}


/*
QChar toLower () const
*/
HB_FUNC_STATIC( QCHAR_TOLOWER )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->toLower (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QChar toTitleCase () const
*/
HB_FUNC_STATIC( QCHAR_TOTITLECASE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->toTitleCase (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QChar toUpper () const
*/
HB_FUNC_STATIC( QCHAR_TOUPPER )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->toUpper (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}



/*
ushort unicode () const
*/
HB_FUNC_STATIC( QCHAR_UNICODE )
{
  QChar * obj = (QChar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->unicode (  ) );
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
    hb_retni( obj->unicodeVersion (  ) );
  }
}


// TODO: implementar metódos estáticos



































HB_FUNC_STATIC( QCHAR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QCHAR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCHAR_NEWFROM );
}

HB_FUNC_STATIC( QCHAR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCHAR_NEWFROM );
}

HB_FUNC_STATIC( QCHAR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCHAR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
