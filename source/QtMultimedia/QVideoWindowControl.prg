/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QVideoWindowControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QVideoWindowControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD displayRect
   METHOD setDisplayRect
   METHOD isFullScreen
   METHOD setFullScreen
   METHOD repaint
   METHOD nativeSize
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
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
   METHOD onNativeSizeChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoWindowControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoWindowControl>
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
#include <QVideoWindowControl>
#endif


HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_DELETE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QRect displayRect() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_DISPLAYRECT )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->displayRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void setDisplayRect(const QRect &rect) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETDISPLAYRECT )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setDisplayRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isFullScreen() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ISFULLSCREEN )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFullScreen (  ) );
  }
}


/*
virtual void setFullScreen(bool fullScreen) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETFULLSCREEN )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFullScreen ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void repaint() = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_REPAINT )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->repaint (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize nativeSize() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_NATIVESIZE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->nativeSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual Qt::AspectRatioMode aspectRatioMode() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_ASPECTRATIOMODE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->aspectRatioMode (  ) );
  }
}


/*
virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETASPECTRATIOMODE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAspectRatioMode (  (Qt::AspectRatioMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int brightness() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_BRIGHTNESS )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->brightness (  ) );
  }
}


/*
virtual void setBrightness(int brightness) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETBRIGHTNESS )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBrightness ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int contrast() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_CONTRAST )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->contrast (  ) );
  }
}


/*
virtual void setContrast(int contrast) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETCONTRAST )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContrast ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int hue() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_HUE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hue (  ) );
  }
}


/*
virtual void setHue(int hue) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETHUE )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHue ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int saturation() const = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SATURATION )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->saturation (  ) );
  }
}


/*
virtual void setSaturation(int saturation) = 0
*/
HB_FUNC_STATIC( QVIDEOWINDOWCONTROL_SETSATURATION )
{
  QVideoWindowControl * obj = (QVideoWindowControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSaturation ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
