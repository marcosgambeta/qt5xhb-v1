$header

#include "hbclass.ch"

CLASS QMediaAvailabilityControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availability

   METHOD onAvailabilityChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QMultimedia::AvailabilityStatus availability() const = 0
*/
HB_FUNC_STATIC( QMEDIAAVAILABILITYCONTROL_AVAILABILITY )
{
  QMediaAvailabilityControl * obj = (QMediaAvailabilityControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}

#pragma ENDDUMP
