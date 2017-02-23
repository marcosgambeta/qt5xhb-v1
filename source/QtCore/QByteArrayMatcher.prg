/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QByteArrayMatcher

   DATA pointer
   DATA class_id INIT Class_Id_QByteArrayMatcher
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD indexIn1
   METHOD indexIn2
   METHOD indexIn
   METHOD pattern
   METHOD setPattern
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QByteArrayMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QByteArrayMatcher>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QByteArrayMatcher>
#endif
#endif

/*
QByteArrayMatcher ()
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArrayMatcher * o = new QByteArrayMatcher (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QByteArrayMatcher ( const QByteArray & pattern )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArrayMatcher * o = new QByteArrayMatcher ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QByteArrayMatcher ( const char * pattern, int length )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  const char * par1 = hb_parc(1);
  int par2 = hb_parni(2);
  QByteArrayMatcher * o = new QByteArrayMatcher (  (const char *) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QByteArrayMatcher ( const QByteArrayMatcher & other )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArrayMatcher * par1 = (QByteArrayMatcher *) _qtxhb_itemGetPtr(1);
  QByteArrayMatcher * o = new QByteArrayMatcher ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QByteArrayMatcher()
//[2]QByteArrayMatcher(const QByteArray & pattern)
//[3]QByteArrayMatcher(const char * pattern, int length)
//[4]QByteArrayMatcher(const QByteArrayMatcher & other)

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAYMATCHER(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
int indexIn ( const QByteArray & ba, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN1 )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->indexIn ( *par1, (int) ISNIL(2)? 0 : hb_parni(2) ) );
  }
}

/*
int indexIn ( const char * str, int len, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN2 )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexIn (  (const char *) par1, (int) hb_parni(2), (int) ISNIL(3)? 0 : hb_parni(3) ) );
  }
}


//[1]int indexIn(const QByteArray & ba, int from = 0) const
//[2]int indexIn(const char * str, int len, int from = 0) const

HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_INDEXIN1 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_INDEXIN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray pattern () const
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_PATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->pattern (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setPattern ( const QByteArray & pattern )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_SETPATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    obj->setPattern ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROM )
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

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_SETSELFDESTRUCTION )
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