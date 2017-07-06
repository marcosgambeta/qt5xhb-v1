$header

#include "hbclass.ch"

CLASS QCameraZoomControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentDigitalZoom
   METHOD currentOpticalZoom
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD requestedDigitalZoom
   METHOD requestedOpticalZoom
   METHOD zoomTo

   METHOD onCurrentDigitalZoomChanged
   METHOD onCurrentOpticalZoomChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onRequestedDigitalZoomChanged
   METHOD onRequestedOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual qreal currentDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_CURRENTDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->currentDigitalZoom () );
  }
}


/*
virtual qreal currentOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_CURRENTOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->currentOpticalZoom () );
  }
}


/*
virtual qreal maximumDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_MAXIMUMDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximumDigitalZoom () );
  }
}


/*
virtual qreal maximumOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_MAXIMUMOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximumOpticalZoom () );
  }
}


/*
virtual qreal requestedDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_REQUESTEDDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->requestedDigitalZoom () );
  }
}


/*
virtual qreal requestedOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_REQUESTEDOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->requestedOpticalZoom () );
  }
}


/*
virtual void zoomTo(qreal optical, qreal digital) = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ZOOMTO )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->zoomTo ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
