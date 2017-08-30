$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QRegion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEmpty
   METHOD isNull
   METHOD contains
   METHOD translate
   METHOD translated
   METHOD united
   METHOD subtracted
   METHOD xored
   METHOD intersects
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
$internalConstructor=|new1|

/*
QRegion(int x, int y, int w, int h, RegionType t = Rectangle)
*/
$internalConstructor=|new2|int,int,int,int,QRegion::RegionType=QRegion::Rectangle

/*
QRegion(const QRect &r, RegionType t = Rectangle)
*/
$internalConstructor=|new3|const QRect &,QRegion::RegionType=QRegion::Rectangle

/*
QRegion(const QPolygon &pa, Qt::FillRule fillRule = Qt::OddEvenFill)
*/
$internalConstructor=|new4|const QPolygon &,Qt::FillRule=Qt::OddEvenFill

/*
QRegion(const QRegion &region)
*/
$internalConstructor=|new5|const QRegion &

/*
QRegion(const QBitmap &bitmap)
*/
$internalConstructor=|new6|const QBitmap &

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
    QRegion_new1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    QRegion_new2();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTNUM(2) )
  {
    QRegion_new3();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && ISOPTNUM(2) )
  {
    QRegion_new4();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_new5();
  }
  else if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QRegion_new6();
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
$method=|void|swap|QRegion &

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
bool contains(const QPoint &p) const
*/
$internalMethod=|bool|contains,contains1|const QPoint &

/*
bool contains(const QRect &r) const
*/
$internalMethod=|bool|contains,contains2|const QRect &

//[1]bool contains(const QPoint &p) const
//[2]bool contains(const QRect &r) const

HB_FUNC_STATIC( QREGION_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_contains1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void translate(int dx, int dy)
*/
$internalMethod=|void|translate,translate1|int,int

/*
void translate(const QPoint &p)
*/
$internalMethod=|void|translate,translate2|const QPoint &

//[1]void translate(int dx, int dy)
//[2]void translate(const QPoint &p)

HB_FUNC_STATIC( QREGION_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRegion_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion translated(int dx, int dy) const
*/
$internalMethod=|QRegion|translated,translated1|int,int

/*
QRegion translated(const QPoint &p) const
*/
$internalMethod=|QRegion|translated,translated2|const QPoint &

//[1]QRegion translated(int dx, int dy) const
//[2]QRegion translated(const QPoint &p) const

HB_FUNC_STATIC( QREGION_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRegion_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion united(const QRegion &r) const
*/
$internalMethod=|QRegion|united,united1|const QRegion &

/*
QRegion united(const QRect &r) const
*/
$internalMethod=|QRegion|united,united2|const QRect &

//[1]QRegion united(const QRegion &r) const
//[2]QRegion united(const QRect &r) const

HB_FUNC_STATIC( QREGION_UNITED )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_united1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_united2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion subtracted(const QRegion &r) const
*/
$method=|QRegion|subtracted|const QRegion &

/*
QRegion xored(const QRegion &r) const
*/
$method=|QRegion|xored|const QRegion &

/*
bool intersects(const QRegion &r) const
*/
$internalMethod=|bool|intersects,intersects1|const QRegion &

/*
bool intersects(const QRect &r) const
*/
$internalMethod=|bool|intersects,intersects2|const QRect &

//[1]bool intersects(const QRegion &r) const
//[2]bool intersects(const QRect &r) const

HB_FUNC_STATIC( QREGION_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_intersects1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_intersects2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect boundingRect() const
*/
$method=|QRect|boundingRect|

/*
int rectCount() const
*/
$method=|int|rectCount|

$extraMethods

#pragma ENDDUMP
