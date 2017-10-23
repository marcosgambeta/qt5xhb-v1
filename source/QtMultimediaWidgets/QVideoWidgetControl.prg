/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QVideoWidgetControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD videoWidget
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
   METHOD isFullScreen
   METHOD setFullScreen
   METHOD brightness
   METHOD setBrightness
   METHOD contrast
   METHOD setContrast
   METHOD hue
   METHOD setHue
   METHOD saturation
   METHOD setSaturation

   METHOD onFullScreenChanged
   METHOD onBrightnessChanged
   METHOD onContrastChanged
   METHOD onHueChanged
   METHOD onSaturationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoWidgetControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoWidgetControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoWidgetControl>
#endif


HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_DELETE )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QWidget *videoWidget() = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_VIDEOWIDGET )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->videoWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual Qt::AspectRatioMode aspectRatioMode() const = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_ASPECTRATIOMODE )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->aspectRatioMode () );
  }
}


/*
virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_SETASPECTRATIOMODE )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAspectRatioMode ( (Qt::AspectRatioMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isFullScreen() const = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_ISFULLSCREEN )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFullScreen () );
  }
}


/*
virtual void setFullScreen(bool fullScreen) = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_SETFULLSCREEN )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFullScreen ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int brightness() const = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_BRIGHTNESS )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->brightness () );
  }
}


/*
virtual void setBrightness(int brightness) = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_SETBRIGHTNESS )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBrightness ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int contrast() const = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_CONTRAST )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->contrast () );
  }
}


/*
virtual void setContrast(int contrast) = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_SETCONTRAST )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContrast ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int hue() const = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_HUE )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->hue () );
  }
}


/*
virtual void setHue(int hue) = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_SETHUE )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int saturation() const = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_SATURATION )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->saturation () );
  }
}


/*
virtual void setSaturation(int saturation) = 0
*/
HB_FUNC_STATIC( QVIDEOWIDGETCONTROL_SETSATURATION )
{
  QVideoWidgetControl * obj = (QVideoWidgetControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSaturation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
