$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLATFORMBACKINGSTORE
REQUEST QPAINTDEVICE
REQUEST QSIZE
REQUEST QREGION
REQUEST QWINDOW
#endif

CLASS QBackingStore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD beginPaint
   METHOD endPaint
   METHOD flush
   METHOD handle
   METHOD hasStaticContents
   METHOD paintDevice
   METHOD resize
   METHOD scroll
   METHOD setStaticContents
   METHOD size
   METHOD staticContents
   METHOD window

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
QBackingStore(QWindow * window)
*/
HB_FUNC_STATIC( QBACKINGSTORE_NEW )
{
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QBackingStore * o = new QBackingStore ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void beginPaint(const QRegion & region)
*/
HB_FUNC_STATIC( QBACKINGSTORE_BEGINPAINT )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginPaint ( *PQREGION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endPaint()
*/
HB_FUNC_STATIC( QBACKINGSTORE_ENDPAINT )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endPaint ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void flush(const QRegion & region, QWindow * win = 0, const QPoint & offset = QPoint())
*/
HB_FUNC_STATIC( QBACKINGSTORE_FLUSH )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par2 = ISNIL(2)? 0 : (QWindow *) _qt5xhb_itemGetPtr(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) _qt5xhb_itemGetPtr(3);
    obj->flush ( *PQREGION(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPlatformBackingStore * handle() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_HANDLE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlatformBackingStore * ptr = obj->handle ();
    _qt5xhb_createReturnClass ( ptr, "QPLATFORMBACKINGSTORE" );
  }
}


/*
bool hasStaticContents() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_HASSTATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasStaticContents () );
  }
}


/*
QPaintDevice * paintDevice()
*/
HB_FUNC_STATIC( QBACKINGSTORE_PAINTDEVICE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->paintDevice ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
void resize(const QSize & size)
*/
HB_FUNC_STATIC( QBACKINGSTORE_RESIZE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool scroll(const QRegion & area, int dx, int dy)
*/
HB_FUNC_STATIC( QBACKINGSTORE_SCROLL )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->scroll ( *PQREGION(1), PINT(2), PINT(3) ) );
  }
}


/*
void setStaticContents(const QRegion & region)
*/
HB_FUNC_STATIC( QBACKINGSTORE_SETSTATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStaticContents ( *PQREGION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_SIZE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRegion staticContents() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_STATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->staticContents () );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QWindow * window() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_WINDOW )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}

$extraMethods

#pragma ENDDUMP
