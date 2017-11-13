/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QPrintEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD abort
   METHOD metric
   METHOD newPage
   METHOD printerState
   METHOD property
   METHOD setProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrintEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPrintEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPrintEngine>
#endif

HB_FUNC_STATIC( QPRINTENGINE_DELETE )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual bool abort () = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_ABORT )
{
  QPrintEngine * obj = (QPrintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->abort () );
  }
}

/*
virtual int metric ( QPaintDevice::PaintDeviceMetric id ) const = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_METRIC )
{
  QPrintEngine * obj = (QPrintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->metric ( (QPaintDevice::PaintDeviceMetric) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool newPage () = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_NEWPAGE )
{
  QPrintEngine * obj = (QPrintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->newPage () );
  }
}

/*
virtual QPrinter::PrinterState printerState () const = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_PRINTERSTATE )
{
  QPrintEngine * obj = (QPrintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->printerState () );
  }
}

/*
virtual QVariant property ( PrintEnginePropertyKey key ) const = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_PROPERTY )
{
  QPrintEngine * obj = (QPrintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->property ( (QPrintEngine::PrintEnginePropertyKey) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setProperty ( PrintEnginePropertyKey key, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_SETPROPERTY )
{
  QPrintEngine * obj = (QPrintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setProperty ( (QPrintEngine::PrintEnginePropertyKey) hb_parni(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QPRINTENGINE_NEWFROM )
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

HB_FUNC_STATIC( QPRINTENGINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPRINTENGINE_NEWFROM );
}

HB_FUNC_STATIC( QPRINTENGINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPRINTENGINE_NEWFROM );
}

HB_FUNC_STATIC( QPRINTENGINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPRINTENGINE_SETSELFDESTRUCTION )
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
