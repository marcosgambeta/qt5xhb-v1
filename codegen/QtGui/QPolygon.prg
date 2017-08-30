$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QPOINT
#endif

CLASS QPolygon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD boundingRect
   METHOD point
   METHOD setPoint
   METHOD putPoints
   METHOD containsPoint
   METHOD united
   METHOD intersected
   METHOD subtracted

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
QPolygon()
*/
$internalConstructor=|new1|

/*
QPolygon(int size)
*/
$internalConstructor=|new2|int

/*
QPolygon(const QPolygon &a)
*/
$internalConstructor=|new3|const QPolygon &

/*
QPolygon(const QVector<QPoint> &v)
*/
$internalConstructor=|new4|const QVector<QPoint> &

/*
QPolygon(const QRect &r, bool closed=false)
*/
$internalConstructor=|new5|const QRect &,bool=false

/*
QPolygon(int nPoints, const int *points)
*/
$internalConstructor=|new6|int,const int *

//[1]QPolygon()
//[2]QPolygon(int size)
//[3]QPolygon(const QPolygon &a)
//[4]QPolygon(const QVector<QPoint> &v)
//[5]QPolygon(const QRect &r, bool closed=false)
//[6]QPolygon(int nPoints, const int *points)

%% TODO: resolver conflito entre [3] e [5] quando for 1 parâmetro do tipo O

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPolygon_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_new2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPolygon_new3();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPolygon_new4();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTLOG(2) )
  {
    QPolygon_new5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QPolygon_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QPolygon &other)
*/
$method=|void|swap|QPolygon &

/*
void translate(int dx, int dy)
*/
%internalMethod=|void|translate,translate1|int,int

/*
void translate(const QPoint &offset)
*/
$internalMethod=|void|translate,translate2|const QPoint &

//[1]void translate(int dx, int dy)
//[2]void translate(const QPoint &offset)

HB_FUNC_STATIC( QPOLYGON_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon translated(int dx, int dy) const
*/
$internalMethod=|QPolygon|translated,translated1|int,int

/*
QPolygon translated(const QPoint &offset) const
*/
$internalMethod=|QPolygon|translated,translated2|const QPoint &

//[1]QPolygon translated(int dx, int dy) const
//[2]QPolygon translated(const QPoint &offset) const

HB_FUNC_STATIC( QPOLYGON_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translated2();
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
void point(int i, int *x, int *y) const
*/
$internalMethod=|void|point,point1|int,int *,int *

/*
QPoint point(int i) const
*/
$internalMethod=|QPoint|point,point2|int

//[1]void point(int i, int *x, int *y) const
//[2]QPoint point(int i) const

HB_FUNC_STATIC( QPOLYGON_POINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_point1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_point2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPoint(int index, int x, int y)
*/
$internalMethod=|void|setPoint,setPoint1|int,int,int

/*
void setPoint(int index, const QPoint &p)
*/
$internalMethod=|void|setPoint,setPoint2|int,const QPoint &

//[1]void setPoint(int index, int x, int y)
//[2]void setPoint(int index, const QPoint &p)

HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_setPoint1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    QPolygon_setPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void putPoints(int index, int nPoints, const QPolygon & from, int fromIndex=0)
*/
$method=|void|putPoints|int,int,const QPolygon &,int=0

/*
bool containsPoint(const QPoint &pt, Qt::FillRule fillRule) const
*/
$method=|bool|containsPoint|const QPoint &,Qt::FillRule

/*
QPolygon united(const QPolygon &r) const
*/
$method=|QPolygon|united|const QPolygon &

/*
QPolygon intersected(const QPolygon &r) const
*/
$method=|QPolygon|intersected|const QPolygon &

/*
QPolygon subtracted(const QPolygon &r) const
*/
$method=|QPolygon|subtracted|const QPolygon &

$extraMethods

#pragma ENDDUMP
