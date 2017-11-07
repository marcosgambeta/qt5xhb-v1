/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDnsTextRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD values

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsTextRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDnsTextRecord>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDnsTextRecord>
#endif

/*
QDnsTextRecord()
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NEW1 )
{
  QDnsTextRecord * o = new QDnsTextRecord ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsTextRecord(const QDnsTextRecord & other)
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NEW2 )
{
  QDnsTextRecord * o = new QDnsTextRecord ( *PQDNSTEXTRECORD(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsTextRecord()
//[2]QDnsTextRecord(const QDnsTextRecord & other)

HB_FUNC_STATIC( QDNSTEXTRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSTEXTRECORD(1) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDNSTEXTRECORD_DELETE )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString name() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NAME )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void swap(QDnsTextRecord & other)
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_SWAP )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsTextRecord * par1 = (QDnsTextRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_TIMETOLIVE )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->timeToLive () );
  }
}


/*
QList<QByteArray> values() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_VALUES )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->values ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



HB_FUNC_STATIC( QDNSTEXTRECORD_NEWFROM )
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

HB_FUNC_STATIC( QDNSTEXTRECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDNSTEXTRECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSTEXTRECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDNSTEXTRECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSTEXTRECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDNSTEXTRECORD_SETSELFDESTRUCTION )
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