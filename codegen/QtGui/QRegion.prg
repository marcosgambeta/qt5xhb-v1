$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QRegion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEmpty
   METHOD isNull
   METHOD contains1
   METHOD contains2
   METHOD translate1
   METHOD translate2
   METHOD translated1
   METHOD translated2
   METHOD united1
   METHOD united2
   METHOD subtracted
   METHOD xored
   METHOD intersects1
   METHOD intersects2
   METHOD boundingRect
   METHOD rectCount

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
QRegion()
*/
HB_FUNC_STATIC( QREGION_NEW1 )
{
  QRegion * o = new QRegion ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegion(int x, int y, int w, int h, RegionType t = Rectangle)
*/
HB_FUNC_STATIC( QREGION_NEW2 )
{
  int par5 = ISNIL(5)? (int) QRegion::Rectangle : hb_parni(5);
  QRegion * o = new QRegion ( PINT(1), PINT(2), PINT(3), PINT(4), (QRegion::RegionType) par5 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegion(const QRect &r, RegionType t = Rectangle)
*/
HB_FUNC_STATIC( QREGION_NEW3 )
{
  int par2 = ISNIL(2)? (int) QRegion::Rectangle : hb_parni(2);
  QRegion * o = new QRegion ( *PQRECT(1), (QRegion::RegionType) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegion(const QPolygon &pa, Qt::FillRule fillRule = Qt::OddEvenFill)
*/
HB_FUNC_STATIC( QREGION_NEW4 )
{
  int par2 = ISNIL(2)? (int) Qt::OddEvenFill : hb_parni(2);
  QRegion * o = new QRegion ( *PQPOLYGON(1), (Qt::FillRule) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegion(const QRegion &region)
*/
HB_FUNC_STATIC( QREGION_NEW5 )
{
  QRegion * o = new QRegion ( *PQREGION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegion(const QBitmap &bitmap)
*/
HB_FUNC_STATIC( QREGION_NEW6 )
{
  QRegion * o = new QRegion ( *PQBITMAP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QRegion()
//[2]QRegion(int x, int y, int w, int h, RegionType t = Rectangle)
//[3]QRegion(const QRect &r, RegionType t = Rectangle)
//[4]QRegion(const QPolygon &pa, Qt::FillRule fillRule = Qt::OddEvenFill)
//[5]QRegion(const QRegion &region)
//[6]QRegion(const QBitmap &bitmap)

HB_FUNC_STATIC( QREGION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREGION_NEW1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QREGION_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QREGION_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QREGION_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QREGION_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    HB_FUNC_EXEC( QREGION_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QRegion &other)
*/
HB_FUNC_STATIC( QREGION_SWAP )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QREGION_ISEMPTY )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QREGION_ISNULL )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool contains(const QPoint &p) const
*/
HB_FUNC_STATIC( QREGION_CONTAINS1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINT(1) ) );
  }
}


/*
bool contains(const QRect &r) const
*/
HB_FUNC_STATIC( QREGION_CONTAINS2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( *PQRECT(1) ) );
  }
}


/*
void translate(int dx, int dy)
*/
HB_FUNC_STATIC( QREGION_TRANSLATE1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(const QPoint &p)
*/
HB_FUNC_STATIC( QREGION_TRANSLATE2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRegion translated(int dx, int dy) const
*/
HB_FUNC_STATIC( QREGION_TRANSLATED1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->translated ( PINT(1), PINT(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion translated(const QPoint &p) const
*/
HB_FUNC_STATIC( QREGION_TRANSLATED2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->translated ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion united(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_UNITED1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->united ( *PQREGION(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion united(const QRect &r) const
*/
HB_FUNC_STATIC( QREGION_UNITED2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->united ( *PQRECT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}




/*
QRegion subtracted(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_SUBTRACTED )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->subtracted ( *PQREGION(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion xored(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_XORED )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->xored ( *PQREGION(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}








/*
bool intersects(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTS1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->intersects ( *PQREGION(1) ) );
  }
}


/*
bool intersects(const QRect &r) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTS2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->intersects ( *PQRECT(1) ) );
  }
}


/*
QRect boundingRect() const
*/
HB_FUNC_STATIC( QREGION_BOUNDINGRECT )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}




/*
int rectCount() const
*/
HB_FUNC_STATIC( QREGION_RECTCOUNT )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rectCount () );
  }
}

$extraMethods

#pragma ENDDUMP
