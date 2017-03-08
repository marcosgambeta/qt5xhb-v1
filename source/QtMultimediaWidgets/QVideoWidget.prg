/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QVideoWidget INHERIT QWidget,QMediaBindableInterface

   DATA class_id INIT Class_Id_QVideoWidget
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD mediaObject
   METHOD isFullScreen
   METHOD aspectRatioMode
   METHOD brightness
   METHOD contrast
   METHOD hue
   METHOD saturation
   METHOD sizeHint
   METHOD setFullScreen
   METHOD setAspectRatioMode
   METHOD setBrightness
   METHOD setContrast
   METHOD setHue
   METHOD setSaturation
   METHOD onFullScreenChanged
   METHOD onBrightnessChanged
   METHOD onContrastChanged
   METHOD onHueChanged
   METHOD onSaturationChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoWidget>
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
#include <QVideoWidget>
#endif

/*
QVideoWidget(QWidget *parent = 0)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QVideoWidget * o = new QVideoWidget ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QVIDEOWIDGET_DELETE )
{
  QVideoWidget * obj = (QVideoWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMediaObject *mediaObject() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_MEDIAOBJECT )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject (  );
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
bool isFullScreen() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_ISFULLSCREEN )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFullScreen (  ) );
  }
}


/*
Qt::AspectRatioMode aspectRatioMode() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_ASPECTRATIOMODE )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->aspectRatioMode (  ) );
  }
}


/*
int brightness() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_BRIGHTNESS )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->brightness (  ) );
  }
}


/*
int contrast() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_CONTRAST )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->contrast (  ) );
  }
}


/*
int hue() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_HUE )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hue (  ) );
  }
}


/*
int saturation() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SATURATION )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->saturation (  ) );
  }
}


/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SIZEHINT )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setFullScreen(bool fullScreen)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SETFULLSCREEN )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFullScreen ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAspectRatioMode(Qt::AspectRatioMode mode)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SETASPECTRATIOMODE )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAspectRatioMode (  (Qt::AspectRatioMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBrightness(int brightness)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SETBRIGHTNESS )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBrightness ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContrast(int contrast)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SETCONTRAST )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContrast ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHue(int hue)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SETHUE )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHue ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSaturation(int saturation)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_SETSATURATION )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSaturation ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
