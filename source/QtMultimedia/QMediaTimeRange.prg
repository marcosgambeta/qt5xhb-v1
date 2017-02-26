/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMEDIATIMEINTERVAL
#endif

CLASS QMediaTimeRange

   DATA pointer
   DATA class_id INIT Class_Id_QMediaTimeRange
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMediaTimeRange>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMediaTimeRange>
#endif
#endif

#include <QList>

/*
QMediaTimeRange()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaTimeRange * o = new QMediaTimeRange (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaTimeRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QMediaTimeRange(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  qint64 par1 = hb_parni(1);
  qint64 par2 = hb_parni(2);
  QMediaTimeRange * o = new QMediaTimeRange ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaTimeRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QMediaTimeRange(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaTimeInterval * par1 = (QMediaTimeInterval *) _qtxhb_itemGetPtr(1);
  QMediaTimeRange * o = new QMediaTimeRange ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaTimeRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QMediaTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaTimeRange * par1 = (QMediaTimeRange *) _qtxhb_itemGetPtr(1);
  QMediaTimeRange * o = new QMediaTimeRange ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaTimeRange *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void addInterval(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL1 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeInterval * par1 = (QMediaTimeInterval *) _qtxhb_itemGetPtr(1);
    obj->addInterval ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL2 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addInterval ( (qint64) hb_parni(1), (qint64) hb_parni(2) );
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
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeRange * par1 = (QMediaTimeRange *) _qtxhb_itemGetPtr(1);
    obj->addTimeRange ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CLEAR )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains(qint64 time) const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CONTAINS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->contains ( (qint64) hb_parni(1) ) );
  }
}


/*
qint64 earliestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_EARLIESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->earliestTime (  ) );
  }
}


/*
QList<QMediaTimeInterval> intervals() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_INTERVALS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QMediaTimeInterval> list = obj->intervals (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMEDIATIMEINTERVAL" );
    #else
    pDynSym = hb_dynsymFindName( "QMEDIATIMEINTERVAL" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isContinuous (  ) );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ISEMPTY )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
qint64 latestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_LATESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->latestTime (  ) );
  }
}


/*
void removeInterval(const QMediaTimeInterval & interval)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL1 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeInterval * par1 = (QMediaTimeInterval *) _qtxhb_itemGetPtr(1);
    obj->removeInterval ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL2 )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeInterval ( (qint64) hb_parni(1), (qint64) hb_parni(2) );
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
  QMediaTimeRange * obj = (QMediaTimeRange *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeRange * par1 = (QMediaTimeRange *) _qtxhb_itemGetPtr(1);
    obj->removeTimeRange ( *par1 );
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