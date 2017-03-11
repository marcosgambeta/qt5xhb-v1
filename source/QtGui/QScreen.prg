/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLATFORMSCREEN
REQUEST QSIZE
REQUEST QRECT
REQUEST QSIZEF
REQUEST QTRANSFORM
REQUEST QPIXMAP
#endif

CLASS QScreen INHERIT QObject

   DATA class_id INIT Class_Id_QScreen
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD handle
   METHOD name
   METHOD depth
   METHOD size
   METHOD geometry
   METHOD physicalSize
   METHOD physicalDotsPerInchX
   METHOD physicalDotsPerInchY
   METHOD physicalDotsPerInch
   METHOD logicalDotsPerInchX
   METHOD logicalDotsPerInchY
   METHOD logicalDotsPerInch
   METHOD devicePixelRatio
   METHOD availableSize
   METHOD availableGeometry
   METHOD virtualSiblings
   METHOD virtualSize
   METHOD virtualGeometry
   METHOD availableVirtualSize
   METHOD availableVirtualGeometry
   METHOD primaryOrientation
   METHOD orientation
   METHOD orientationUpdateMask
   METHOD setOrientationUpdateMask
   METHOD angleBetween
   METHOD transformBetween
   METHOD mapBetween
   METHOD isPortrait
   METHOD isLandscape
   METHOD grabWindow
   METHOD refreshRate
   METHOD onGeometryChanged
   METHOD onPhysicalSizeChanged
   METHOD onPhysicalDotsPerInchChanged
   METHOD onLogicalDotsPerInchChanged
   METHOD onVirtualGeometryChanged
   METHOD onPrimaryOrientationChanged
   METHOD onOrientationChanged
   METHOD onRefreshRateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScreen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScreen>
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
#include <QScreen>
#endif

#include <QPixmap>


HB_FUNC_STATIC( QSCREEN_DELETE )
{
  QScreen * obj = (QScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPlatformScreen *handle() const
*/
HB_FUNC_STATIC( QSCREEN_HANDLE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlatformScreen * ptr = obj->handle (  );
    _qt5xhb_createReturnClass ( ptr, "QPLATFORMSCREEN" );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QSCREEN_NAME )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
int depth() const
*/
HB_FUNC_STATIC( QSCREEN_DEPTH )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->depth (  ) );
  }
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QSCREEN_SIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRect geometry() const
*/
HB_FUNC_STATIC( QSCREEN_GEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QSizeF physicalSize() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALSIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->physicalSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal physicalDotsPerInchX() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALDOTSPERINCHX )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->physicalDotsPerInchX (  ) );
  }
}


/*
qreal physicalDotsPerInchY() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALDOTSPERINCHY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->physicalDotsPerInchY (  ) );
  }
}


/*
qreal physicalDotsPerInch() const
*/
HB_FUNC_STATIC( QSCREEN_PHYSICALDOTSPERINCH )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->physicalDotsPerInch (  ) );
  }
}


/*
qreal logicalDotsPerInchX() const
*/
HB_FUNC_STATIC( QSCREEN_LOGICALDOTSPERINCHX )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->logicalDotsPerInchX (  ) );
  }
}


/*
qreal logicalDotsPerInchY() const
*/
HB_FUNC_STATIC( QSCREEN_LOGICALDOTSPERINCHY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->logicalDotsPerInchY (  ) );
  }
}


/*
qreal logicalDotsPerInch() const
*/
HB_FUNC_STATIC( QSCREEN_LOGICALDOTSPERINCH )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->logicalDotsPerInch (  ) );
  }
}


/*
qreal devicePixelRatio() const
*/
HB_FUNC_STATIC( QSCREEN_DEVICEPIXELRATIO )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->devicePixelRatio (  ) );
  }
}


/*
QSize availableSize() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLESIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->availableSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRect availableGeometry() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLEGEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->availableGeometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QList<QScreen *> virtualSiblings() const
*/
HB_FUNC_STATIC( QSCREEN_VIRTUALSIBLINGS )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
QSize virtualSize() const
*/
HB_FUNC_STATIC( QSCREEN_VIRTUALSIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->virtualSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRect virtualGeometry() const
*/
HB_FUNC_STATIC( QSCREEN_VIRTUALGEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->virtualGeometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QSize availableVirtualSize() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLEVIRTUALSIZE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->availableVirtualSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRect availableVirtualGeometry() const
*/
HB_FUNC_STATIC( QSCREEN_AVAILABLEVIRTUALGEOMETRY )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->availableVirtualGeometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
Qt::ScreenOrientation primaryOrientation() const
*/
HB_FUNC_STATIC( QSCREEN_PRIMARYORIENTATION )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->primaryOrientation (  ) );
  }
}


/*
Qt::ScreenOrientation orientation() const
*/
HB_FUNC_STATIC( QSCREEN_ORIENTATION )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}


/*
Qt::ScreenOrientations orientationUpdateMask() const
*/
HB_FUNC_STATIC( QSCREEN_ORIENTATIONUPDATEMASK )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientationUpdateMask (  ) );
  }
}


/*
void setOrientationUpdateMask(Qt::ScreenOrientations mask)
*/
HB_FUNC_STATIC( QSCREEN_SETORIENTATIONUPDATEMASK )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientationUpdateMask (  (Qt::ScreenOrientations) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int angleBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b) const
*/
HB_FUNC_STATIC( QSCREEN_ANGLEBETWEEN )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    hb_retni( obj->angleBetween (  (Qt::ScreenOrientation) par1,  (Qt::ScreenOrientation) par2 ) );
  }
}


/*
QTransform transformBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &target) const
*/
HB_FUNC_STATIC( QSCREEN_TRANSFORMBETWEEN )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QRect * par3 = (QRect *) _qt5xhb_itemGetPtr(3);
    QTransform * ptr = new QTransform( obj->transformBetween (  (Qt::ScreenOrientation) par1,  (Qt::ScreenOrientation) par2, *par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
QRect mapBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &rect) const
*/
HB_FUNC_STATIC( QSCREEN_MAPBETWEEN )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QRect * par3 = (QRect *) _qt5xhb_itemGetPtr(3);
    QRect * ptr = new QRect( obj->mapBetween (  (Qt::ScreenOrientation) par1,  (Qt::ScreenOrientation) par2, *par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool isPortrait(Qt::ScreenOrientation orientation) const
*/
HB_FUNC_STATIC( QSCREEN_ISPORTRAIT )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isPortrait (  (Qt::ScreenOrientation) par1 ) );
  }
}


/*
bool isLandscape(Qt::ScreenOrientation orientation) const
*/
HB_FUNC_STATIC( QSCREEN_ISLANDSCAPE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isLandscape (  (Qt::ScreenOrientation) par1 ) );
  }
}


/*
QPixmap grabWindow(WId window, int x = 0, int y = 0, int w = -1, int h = -1)
*/
HB_FUNC_STATIC( QSCREEN_GRABWINDOW )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    WId par1 = (WId) hb_parptr(1);
    QPixmap * ptr = new QPixmap( obj->grabWindow ( par1, (int) ISNIL(2)? 0 : hb_parni(2), (int) ISNIL(3)? 0 : hb_parni(3), (int) ISNIL(4)? -1 : hb_parni(4), (int) ISNIL(5)? -1 : hb_parni(5) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
qreal refreshRate() const
*/
HB_FUNC_STATIC( QSCREEN_REFRESHRATE )
{
  QScreen * obj = (QScreen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->refreshRate (  ) );
  }
}




#pragma ENDDUMP
