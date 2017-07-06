$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QVideoWidget INHERIT QWidget,QMediaBindableInterface

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

/*
QVideoWidget(QWidget *parent = 0)
*/
HB_FUNC_STATIC( QVIDEOWIDGET_NEW )
{
  QVideoWidget * o = new QVideoWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QMediaObject *mediaObject() const
*/
HB_FUNC_STATIC( QVIDEOWIDGET_MEDIAOBJECT )
{
  QVideoWidget * obj = (QVideoWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
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
    RBOOL( obj->isFullScreen () );
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
    hb_retni( obj->aspectRatioMode () );
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
    RINT( obj->brightness () );
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
    RINT( obj->contrast () );
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
    RINT( obj->hue () );
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
    RINT( obj->saturation () );
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
    QSize * ptr = new QSize( obj->sizeHint () );
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
    obj->setFullScreen ( PBOOL(1) );
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
    obj->setAspectRatioMode ( (Qt::AspectRatioMode) hb_parni(1) );
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
    obj->setBrightness ( PINT(1) );
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
    obj->setContrast ( PINT(1) );
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
    obj->setHue ( PINT(1) );
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
    obj->setSaturation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
