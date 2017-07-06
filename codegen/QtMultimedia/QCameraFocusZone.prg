$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QCameraFocusZone

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD area
   METHOD isValid
   METHOD status

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
QCameraFocusZone(const QCameraFocusZone & other)
*/
HB_FUNC_STATIC( QCAMERAFOCUSZONE_NEW )
{
  QCameraFocusZone * o = new QCameraFocusZone ( *PQCAMERAFOCUSZONE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QRectF area() const
*/
HB_FUNC_STATIC( QCAMERAFOCUSZONE_AREA )
{
  QCameraFocusZone * obj = (QCameraFocusZone *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->area () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QCAMERAFOCUSZONE_ISVALID )
{
  QCameraFocusZone * obj = (QCameraFocusZone *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
FocusZoneStatus status() const
*/
HB_FUNC_STATIC( QCAMERAFOCUSZONE_STATUS )
{
  QCameraFocusZone * obj = (QCameraFocusZone *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}



$extraMethods

#pragma ENDDUMP
