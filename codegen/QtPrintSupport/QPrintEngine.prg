$header

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

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

$extraMethods

#pragma ENDDUMP
