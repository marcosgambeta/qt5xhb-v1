%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRegion()
$internalConstructor=|new1|

$prototype=QRegion(int x, int y, int w, int h, RegionType t = Rectangle)
$internalConstructor=|new2|int,int,int,int,QRegion::RegionType=QRegion::Rectangle

$prototype=QRegion(const QRect &r, RegionType t = Rectangle)
$internalConstructor=|new3|const QRect &,QRegion::RegionType=QRegion::Rectangle

$prototype=QRegion(const QPolygon &pa, Qt::FillRule fillRule = Qt::OddEvenFill)
$internalConstructor=|new4|const QPolygon &,Qt::FillRule=Qt::OddEvenFill

$prototype=QRegion(const QRegion &region)
$internalConstructor=|new5|const QRegion &

$prototype=QRegion(const QBitmap &bitmap)
$internalConstructor=|new6|const QBitmap &

/*
[1]QRegion()
[2]QRegion(int x, int y, int w, int h, RegionType t = Rectangle)
[3]QRegion(const QRect &r, RegionType t = Rectangle)
[4]QRegion(const QPolygon &pa, Qt::FillRule fillRule = Qt::OddEvenFill)
[5]QRegion(const QRegion &region)
[6]QRegion(const QBitmap &bitmap)
*/

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

$prototype=void swap(QRegion &other)
$method=|void|swap|QRegion &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool contains(const QPoint &p) const
$internalMethod=|bool|contains,contains1|const QPoint &

$prototype=bool contains(const QRect &r) const
$internalMethod=|bool|contains,contains2|const QRect &

/*
[1]bool contains(const QPoint &p) const
[2]bool contains(const QRect &r) const
*/

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
$addMethod=contains

$prototype=void translate(int dx, int dy)
$internalMethod=|void|translate,translate1|int,int

$prototype=void translate(const QPoint &p)
$internalMethod=|void|translate,translate2|const QPoint &

/*
[1]void translate(int dx, int dy)
[2]void translate(const QPoint &p)
*/

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
$addMethod=translate

$prototype=QRegion translated(int dx, int dy) const
$internalMethod=|QRegion|translated,translated1|int,int

$prototype=QRegion translated(const QPoint &p) const
$internalMethod=|QRegion|translated,translated2|const QPoint &

/*
[1]QRegion translated(int dx, int dy) const
[2]QRegion translated(const QPoint &p) const
*/

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
$addMethod=translated

$prototype=QRegion united(const QRegion &r) const
$internalMethod=|QRegion|united,united1|const QRegion &

$prototype=QRegion united(const QRect &r) const
$internalMethod=|QRegion|united,united2|const QRect &

/*
[1]QRegion united(const QRegion &r) const
[2]QRegion united(const QRect &r) const
*/

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
$addMethod=united

$prototype=QRegion subtracted(const QRegion &r) const
$method=|QRegion|subtracted|const QRegion &

$prototype=QRegion xored(const QRegion &r) const
$method=|QRegion|xored|const QRegion &

$prototype=bool intersects(const QRegion &r) const
$internalMethod=|bool|intersects,intersects1|const QRegion &

$prototype=bool intersects(const QRect &r) const
$internalMethod=|bool|intersects,intersects2|const QRect &

/*
[1]bool intersects(const QRegion &r) const
[2]bool intersects(const QRect &r) const
*/

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
$addMethod=intersects

$prototype=QRect boundingRect() const
$method=|QRect|boundingRect|

$prototype=int rectCount() const
$method=|int|rectCount|

$extraMethods

#pragma ENDDUMP
