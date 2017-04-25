/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QCameraZoomControl INHERIT QMediaControl

   //DATA class_id INIT Class_Id_QCameraZoomControl
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QCameraZoomControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraZoomControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraZoomControl>
#endif

HB_FUNC_STATIC( QCAMERAZOOMCONTROL_DELETE )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual qreal currentDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_CURRENTDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->currentDigitalZoom (  ) );
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
    hb_retnd( obj->currentOpticalZoom (  ) );
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
    hb_retnd( obj->maximumDigitalZoom (  ) );
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
    hb_retnd( obj->maximumOpticalZoom (  ) );
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
    hb_retnd( obj->requestedDigitalZoom (  ) );
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
    hb_retnd( obj->requestedOpticalZoom (  ) );
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