/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QDnsServiceRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD port
   METHOD priority
   METHOD swap
   METHOD target
   METHOD timeToLive
   METHOD weight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsServiceRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDnsServiceRecord>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDnsServiceRecord>
#endif

/*
QDnsServiceRecord()
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_NEW1 )
{
  QDnsServiceRecord * o = new QDnsServiceRecord ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsServiceRecord(const QDnsServiceRecord & other)
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_NEW2 )
{
  QDnsServiceRecord * o = new QDnsServiceRecord ( *PQDNSSERVICERECORD(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsServiceRecord()
//[2]QDnsServiceRecord(const QDnsServiceRecord & other)

HB_FUNC_STATIC( QDNSSERVICERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSSERVICERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSSERVICERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSSERVICERECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDNSSERVICERECORD_DELETE )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QDNSSERVICERECORD_NAME )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
quint16 port() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_PORT )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->port () );
  }
}


/*
quint16 priority() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_PRIORITY )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->priority () );
  }
}


/*
void swap(QDnsServiceRecord & other)
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_SWAP )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsServiceRecord * par1 = (QDnsServiceRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString target() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_TARGET )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->target () );
  }
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_TIMETOLIVE )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->timeToLive () );
  }
}


/*
quint16 weight() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_WEIGHT )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->weight () );
  }
}



HB_FUNC_STATIC( QDNSSERVICERECORD_NEWFROM )
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

HB_FUNC_STATIC( QDNSSERVICERECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDNSSERVICERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSSERVICERECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDNSSERVICERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSSERVICERECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDNSSERVICERECORD_SETSELFDESTRUCTION )
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