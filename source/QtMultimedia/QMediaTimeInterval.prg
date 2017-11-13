/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QMediaTimeInterval

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD contains
   METHOD end
   METHOD isNormal
   METHOD normalized
   METHOD start
   METHOD translated

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaTimeInterval
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaTimeInterval>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaTimeInterval>
#endif

/*
QMediaTimeInterval()
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW1 )
{
  QMediaTimeInterval * o = new QMediaTimeInterval ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaTimeInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW2 )
{
  QMediaTimeInterval * o = new QMediaTimeInterval ( PQINT64(1), PQINT64(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaTimeInterval(const QMediaTimeInterval & other)
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW3 )
{
  QMediaTimeInterval * o = new QMediaTimeInterval ( *PQMEDIATIMEINTERVAL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QMediaTimeInterval()
//[2]QMediaTimeInterval(qint64 start, qint64 end)
//[3]QMediaTimeInterval(const QMediaTimeInterval & other)

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_DELETE )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool contains(qint64 time) const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_CONTAINS )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( PQINT64(1) ) );
  }
}


/*
qint64 end() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_END )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->end () );
  }
}


/*
bool isNormal() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_ISNORMAL )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNormal () );
  }
}


/*
QMediaTimeInterval normalized() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NORMALIZED )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeInterval * ptr = new QMediaTimeInterval( obj->normalized () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIATIMEINTERVAL" );
  }
}


/*
qint64 start() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_START )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->start () );
  }
}


/*
QMediaTimeInterval translated(qint64 offset) const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_TRANSLATED )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeInterval * ptr = new QMediaTimeInterval( obj->translated ( PQINT64(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIATIMEINTERVAL" );
  }
}



HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEWFROM )
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

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEWFROM );
}

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEWFROM );
}

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_SETSELFDESTRUCTION )
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