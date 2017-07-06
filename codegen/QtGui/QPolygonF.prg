$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOLYGON
REQUEST QRECTF
#endif

CLASS QPolygonF

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
   METHOD translate1
   METHOD translate2
   METHOD translated1
   METHOD translated2
   METHOD toPolygon
   METHOD isClosed
   METHOD boundingRect
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
QPolygonF()
*/
HB_FUNC_STATIC( QPOLYGONF_NEW1 )
{
  QPolygonF * o = new QPolygonF ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(int size)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW2 )
{
  QPolygonF * o = new QPolygonF ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QPolygonF &a)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW3 )
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGONF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QVector<QPointF> &v)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW4 )
{
QVector<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QPolygonF * o = new QPolygonF ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QRectF &r)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW5 )
{
  QPolygonF * o = new QPolygonF ( *PQRECTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QPolygon &a)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW6 )
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGON(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QPolygonF()
//[2]QPolygonF(int size)
//[3]QPolygonF(const QPolygonF &a)
//[4]QPolygonF(const QVector<QPointF> &v)
//[5]QPolygonF(const QRectF &r)
//[6]QPolygonF(const QPolygon &a)

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QPolygonF &other)
*/
HB_FUNC_STATIC( QPOLYGONF_SWAP )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATE1 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(const QPointF &offset)
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATE2 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPolygonF translated(qreal dx, qreal dy) const
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATED1 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygonF translated(const QPointF &offset) const
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATED2 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->translated ( *PQPOINTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygon toPolygon() const
*/
HB_FUNC_STATIC( QPOLYGONF_TOPOLYGON )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->toPolygon () );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
bool isClosed() const
*/
HB_FUNC_STATIC( QPOLYGONF_ISCLOSED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isClosed () );
  }
}


/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGONF_BOUNDINGRECT )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool containsPoint(const QPointF &pt, Qt::FillRule fillRule) const
*/
HB_FUNC_STATIC( QPOLYGONF_CONTAINSPOINT )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->containsPoint ( *PQPOINTF(1), (Qt::FillRule) hb_parni(2) ) );
  }
}


/*
QPolygonF united(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_UNITED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->united ( *PQPOLYGONF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygonF intersected(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_INTERSECTED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->intersected ( *PQPOLYGONF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygonF subtracted(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_SUBTRACTED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->subtracted ( *PQPOLYGONF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

$extraMethods

#pragma ENDDUMP
