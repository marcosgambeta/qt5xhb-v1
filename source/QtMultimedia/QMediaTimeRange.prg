/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMEINTERVAL
#endif

CLASS QMediaTimeRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addInterval1
   METHOD addInterval2
   METHOD addInterval
   METHOD addTimeRange
   METHOD clear
   METHOD contains
   METHOD earliestTime
   METHOD intervals
   METHOD isContinuous
   METHOD isEmpty
   METHOD latestTime
   METHOD removeInterval1
   METHOD removeInterval2
   METHOD removeInterval
   METHOD removeTimeRange

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaTimeRange
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaTimeRange>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaTimeRange>
#endif

#include <QList>

/*
QMediaTimeRange()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW1 )
{
  QMediaTimeRange * o = new QMediaTimeRange ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QMediaTimeRange(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW2 )
{
  QMediaTimeRange * o = new QMediaTimeRange ( PQINT64(1), PQINT64(2) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QMediaTimeRange(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW3 )
{
  QMediaTimeRange * o = new QMediaTimeRange ( *PQMEDIATIMEINTERVAL(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QMediaTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW4 )
{
  QMediaTimeRange * o = new QMediaTimeRange ( *PQMEDIATIMERANGE(1) );
  _qt5xhb_returnNewObject( o, false );
}


//[1]QMediaTimeRange()
//[2]QMediaTimeRange(qint64 start, qint64 end)
//[3]QMediaTimeRange(const QMediaTimeInterval & interval)
//[4]QMediaTimeRange(const QMediaTimeRange & range)

HB_FUNC_STATIC( QMEDIATIMERANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMERANGE(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMEDIATIMERANGE_DELETE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addInterval(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL1 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addInterval ( *PQMEDIATIMEINTERVAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL2 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addInterval ( PQINT64(1), PQINT64(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addInterval(const QMediaTimeInterval & interval)
//[2]void addInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_ADDINTERVAL1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_ADDINTERVAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDTIMERANGE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addTimeRange ( *PQMEDIATIMERANGE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CLEAR )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains(qint64 time) const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CONTAINS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( PQINT64(1) ) );
  }
}


/*
qint64 earliestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_EARLIESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->earliestTime () );
  }
}


/*
QList<QMediaTimeInterval> intervals() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_INTERVALS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QMediaTimeInterval> list = obj->intervals ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMEDIATIMEINTERVAL" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QMediaTimeInterval *) new QMediaTimeInterval ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool isContinuous() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ISCONTINUOUS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isContinuous () );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ISEMPTY )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
qint64 latestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_LATESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->latestTime () );
  }
}


/*
void removeInterval(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL1 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeInterval ( *PQMEDIATIMEINTERVAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL2 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeInterval ( PQINT64(1), PQINT64(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void removeInterval(const QMediaTimeInterval & interval)
//[2]void removeInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_REMOVEINTERVAL1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_REMOVEINTERVAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVETIMERANGE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeTimeRange ( *PQMEDIATIMERANGE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QMEDIATIMERANGE_NEWFROM )
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

HB_FUNC_STATIC( QMEDIATIMERANGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIATIMERANGE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIATIMERANGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIATIMERANGE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIATIMERANGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIATIMERANGE_SETSELFDESTRUCTION )
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