$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QPOINT
#endif

CLASS QPolygon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD swap
   METHOD translate1
   METHOD translate2
   METHOD translated1
   METHOD translated2
   METHOD boundingRect
   METHOD point1
   METHOD point2
   METHOD setPoint
   METHOD setPoint2
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
HB_FUNC_STATIC( QPOLYGON_NEW1 )
{
  QPolygon * o = new QPolygon ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygon(int size)
*/
HB_FUNC_STATIC( QPOLYGON_NEW2 )
{
  QPolygon * o = new QPolygon ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygon(const QPolygon &a)
*/
HB_FUNC_STATIC( QPOLYGON_NEW3 )
{
  QPolygon * o = new QPolygon ( *PQPOLYGON(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygon(const QVector<QPoint> &v)
*/
HB_FUNC_STATIC( QPOLYGON_NEW4 )
{
QVector<QPoint> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QPolygon * o = new QPolygon ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygon(const QRect &r, bool closed=false)
*/
HB_FUNC_STATIC( QPOLYGON_NEW5 )
{
  QPolygon * o = new QPolygon ( *PQRECT(1), OPBOOL(2,false) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QPolygon()
//[2]QPolygon(int size)
//[3]QPolygon(const QPolygon &a)
//[4]QPolygon(const QVector<QPoint> &v)
//[5]QPolygon(const QRect &r, bool closed=false)
//[6]QPolygon(int nPoints, const int *points)

// TODO: resolver conflito entre [3] e [5] quando for 1 parâmetro do tipo O

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW3 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW4 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTLOG(2) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
  //else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  //{
  //  HB_FUNC_EXEC( QPOLYGON_NEW6 );
  //}
}

$deleteMethod

/*
void swap(QPolygon &other)
*/
HB_FUNC_STATIC( QPOLYGON_SWAP )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swap ( *PQPOLYGON(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(int dx, int dy)
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATE1 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(const QPoint &offset)
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATE2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPolygon translated(int dx, int dy) const
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATED1 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->translated ( PINT(1), PINT(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QPolygon translated(const QPoint &offset) const
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATED2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->translated ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QRect boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGON_BOUNDINGRECT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void point(int i, int *x, int *y) const
*/
HB_FUNC_STATIC( QPOLYGON_POINT1 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2;
    int par3;
    obj->point ( PINT(1), &par2, &par3 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPoint point(int i) const
*/
HB_FUNC_STATIC( QPOLYGON_POINT2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->point ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
void setPoint(int index, int x, int y)
*/
HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPoint ( PINT(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPoint(int index, const QPoint &p)
*/
HB_FUNC_STATIC( QPOLYGON_SETPOINT2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPoint ( PINT(1), *PQPOINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






/*
void putPoints(int index, int nPoints, const QPolygon & from, int fromIndex=0)
*/
HB_FUNC_STATIC( QPOLYGON_PUTPOINTS )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->putPoints ( PINT(1), PINT(2), *PQPOLYGON(3), OPINT(4,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool containsPoint(const QPoint &pt, Qt::FillRule fillRule) const
*/
HB_FUNC_STATIC( QPOLYGON_CONTAINSPOINT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->containsPoint ( *PQPOINT(1), (Qt::FillRule) hb_parni(2) ) );
  }
}


/*
QPolygon united(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_UNITED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->united ( *PQPOLYGON(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QPolygon intersected(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_INTERSECTED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->intersected ( *PQPOLYGON(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QPolygon subtracted(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_SUBTRACTED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->subtracted ( *PQPOLYGON(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

$extraMethods

#pragma ENDDUMP
