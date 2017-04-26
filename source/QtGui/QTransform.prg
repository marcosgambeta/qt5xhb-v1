/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QLINE
REQUEST QLINEF
REQUEST QPOLYGONF
REQUEST QPOLYGON
REQUEST QREGION
REQUEST QPAINTERPATH
REQUEST QRECT
REQUEST QRECTF
REQUEST QMATRIX
#endif

CLASS QTransform

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isAffine
   METHOD isIdentity
   METHOD isInvertible
   METHOD isScaling
   METHOD isRotating
   METHOD isTranslating
   METHOD type
   METHOD determinant
   METHOD det
   METHOD m11
   METHOD m12
   METHOD m13
   METHOD m21
   METHOD m22
   METHOD m23
   METHOD m31
   METHOD m32
   METHOD m33
   METHOD dx
   METHOD dy
   METHOD setMatrix
   METHOD inverted
   METHOD adjoint
   METHOD transposed
   METHOD translate
   METHOD scale
   METHOD shear
   METHOD rotate
   METHOD rotateRadians
   METHOD reset
   METHOD map1
   METHOD map2
   METHOD map3
   METHOD map4
   METHOD map5
   METHOD map6
   METHOD map7
   METHOD map8
   METHOD mapToPolygon
   METHOD mapRect1
   METHOD mapRect2
   METHOD map9
   METHOD map10
   METHOD toAffine
   METHOD squareToQuad
   METHOD quadToSquare
   METHOD quadToQuad
   METHOD fromTranslate
   METHOD fromScale

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTransform
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTransform>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTransform>
#endif

/*
QTransform(Qt::Initialization)
*/
HB_FUNC_STATIC( QTRANSFORM_NEW1 )
{
  int par1 = hb_parni(1);
  QTransform * o = new QTransform (  (Qt::Initialization) par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTransform()
*/
HB_FUNC_STATIC( QTRANSFORM_NEW2 )
{
  QTransform * o = new QTransform (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTransform(qreal h11, qreal h12, qreal h13,qreal h21, qreal h22, qreal h23,qreal h31, qreal h32, qreal h33 = 1.0)
*/
HB_FUNC_STATIC( QTRANSFORM_NEW3 )
{
  QTransform * o = new QTransform ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), (qreal) ISNIL(9)? 1.0 : hb_parnd(9) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTransform(qreal h11, qreal h12, qreal h21,qreal h22, qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QTRANSFORM_NEW4 )
{
  QTransform * o = new QTransform ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QTransform(Qt::Initialization)
//[2]QTransform()
//[3]QTransform(qreal h11, qreal h12, qreal h13,qreal h21, qreal h22, qreal h23,qreal h31, qreal h32, qreal h33 = 1.0)
//[4]QTransform(qreal h11, qreal h12, qreal h21,qreal h22, qreal dx, qreal dy)
//[5]QTransform(const QMatrix &mtx)

HB_FUNC_STATIC( QTRANSFORM_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW2 );
  }
  else if( ISBETWEEN(8,9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISOPTNUM(9) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW3 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QTRANSFORM_NEW5 );
  //}
}

HB_FUNC_STATIC( QTRANSFORM_DELETE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isAffine() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISAFFINE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAffine (  ) );
  }
}


/*
bool isIdentity() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISIDENTITY )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isIdentity (  ) );
  }
}


/*
bool isInvertible() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISINVERTIBLE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isInvertible (  ) );
  }
}


/*
bool isScaling() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISSCALING )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isScaling (  ) );
  }
}


/*
bool isRotating() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISROTATING )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRotating (  ) );
  }
}


/*
bool isTranslating() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISTRANSLATING )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTranslating (  ) );
  }
}


/*
TransformationType type() const
*/
HB_FUNC_STATIC( QTRANSFORM_TYPE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
qreal determinant() const
*/
HB_FUNC_STATIC( QTRANSFORM_DETERMINANT )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->determinant (  ) );
  }
}


/*
qreal det() const
*/
HB_FUNC_STATIC( QTRANSFORM_DET )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->det (  ) );
  }
}


/*
qreal m11() const
*/
HB_FUNC_STATIC( QTRANSFORM_M11 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m11 (  ) );
  }
}


/*
qreal m12() const
*/
HB_FUNC_STATIC( QTRANSFORM_M12 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m12 (  ) );
  }
}


/*
qreal m13() const
*/
HB_FUNC_STATIC( QTRANSFORM_M13 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m13 (  ) );
  }
}


/*
qreal m21() const
*/
HB_FUNC_STATIC( QTRANSFORM_M21 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m21 (  ) );
  }
}


/*
qreal m22() const
*/
HB_FUNC_STATIC( QTRANSFORM_M22 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m22 (  ) );
  }
}


/*
qreal m23() const
*/
HB_FUNC_STATIC( QTRANSFORM_M23 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m23 (  ) );
  }
}


/*
qreal m31() const
*/
HB_FUNC_STATIC( QTRANSFORM_M31 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m31 (  ) );
  }
}


/*
qreal m32() const
*/
HB_FUNC_STATIC( QTRANSFORM_M32 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m32 (  ) );
  }
}


/*
qreal m33() const
*/
HB_FUNC_STATIC( QTRANSFORM_M33 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->m33 (  ) );
  }
}


/*
qreal dx() const
*/
HB_FUNC_STATIC( QTRANSFORM_DX )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dx (  ) );
  }
}


/*
qreal dy() const
*/
HB_FUNC_STATIC( QTRANSFORM_DY )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dy (  ) );
  }
}


/*
void setMatrix(qreal m11, qreal m12, qreal m13,qreal m21, qreal m22, qreal m23,qreal m31, qreal m32, qreal m33)
*/
HB_FUNC_STATIC( QTRANSFORM_SETMATRIX )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMatrix ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), PQREAL(9) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTransform inverted(bool *invertible = 0) const
*/
HB_FUNC_STATIC( QTRANSFORM_INVERTED )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    QTransform * ptr = new QTransform( obj->inverted ( &par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
    hb_storl( par1, 1 );
  }
}


/*
QTransform adjoint() const
*/
HB_FUNC_STATIC( QTRANSFORM_ADJOINT )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->adjoint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
QTransform transposed() const
*/
HB_FUNC_STATIC( QTRANSFORM_TRANSPOSED )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transposed (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
QTransform &translate(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QTRANSFORM_TRANSLATE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = &obj->translate ( PQREAL(1), PQREAL(2) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}


/*
QTransform &scale(qreal sx, qreal sy)
*/
HB_FUNC_STATIC( QTRANSFORM_SCALE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = &obj->scale ( PQREAL(1), PQREAL(2) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}


/*
QTransform &shear(qreal sh, qreal sv)
*/
HB_FUNC_STATIC( QTRANSFORM_SHEAR )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = &obj->shear ( PQREAL(1), PQREAL(2) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}


/*
QTransform &rotate(qreal a, Qt::Axis axis = Qt::ZAxis)
*/
HB_FUNC_STATIC( QTRANSFORM_ROTATE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::ZAxis : hb_parni(2);
    QTransform * ptr = &obj->rotate ( PQREAL(1),  (Qt::Axis) par2 );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}


/*
QTransform &rotateRadians(qreal a, Qt::Axis axis = Qt::ZAxis)
*/
HB_FUNC_STATIC( QTRANSFORM_ROTATERADIANS )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::ZAxis : hb_parni(2);
    QTransform * ptr = &obj->rotateRadians ( PQREAL(1),  (Qt::Axis) par2 );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}


/*
void reset()
*/
HB_FUNC_STATIC( QTRANSFORM_RESET )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPoint map(const QPoint &p) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP1 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF map(const QPointF &p) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP2 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QLine map(const QLine &l) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP3 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLine * par1 = (QLine *) _qt5xhb_itemGetPtr(1);
    QLine * ptr = new QLine( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QLINE", true );
  }
}


/*
QLineF map(const QLineF &l) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP4 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLineF * par1 = (QLineF *) _qt5xhb_itemGetPtr(1);
    QLineF * ptr = new QLineF( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}


/*
QPolygonF map(const QPolygonF &a) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP5 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygon map(const QPolygon &a) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP6 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QRegion map(const QRegion &r) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP7 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    QRegion * ptr = new QRegion( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QPainterPath map(const QPainterPath &p) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP8 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->map ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
QPolygon mapToPolygon(const QRect &r) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPTOPOLYGON )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->mapToPolygon ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QRect mapRect(const QRect &) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPRECT1 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->mapRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF mapRect(const QRectF &) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPRECT2 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void map(int x, int y, int *tx, int *ty) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP9 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3;
    int par4;
    obj->map ( (int) hb_parni(1), (int) hb_parni(2), &par3, &par4 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void map(qreal x, qreal y, qreal *tx, qreal *ty) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP10 )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par3;
    qreal par4;
    obj->map ( PQREAL(1), PQREAL(2), &par3, &par4 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QMatrix &toAffine() const
*/
HB_FUNC_STATIC( QTRANSFORM_TOAFFINE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMatrix * ptr = &obj->toAffine (  );
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
static bool squareToQuad(const QPolygonF &square, QTransform &result)
*/
HB_FUNC_STATIC( QTRANSFORM_SQUARETOQUAD )
{
  QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
  QTransform * par2 = (QTransform *) _qt5xhb_itemGetPtr(2);
  hb_retl( QTransform::squareToQuad ( *par1, *par2 ) );
}


/*
static bool quadToSquare(const QPolygonF &quad, QTransform &result)
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOSQUARE )
{
  QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
  QTransform * par2 = (QTransform *) _qt5xhb_itemGetPtr(2);
  hb_retl( QTransform::quadToSquare ( *par1, *par2 ) );
}


/*
static bool quadToQuad(const QPolygonF &one,const QPolygonF &two,QTransform &result)
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOQUAD )
{
  QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
  QPolygonF * par2 = (QPolygonF *) _qt5xhb_itemGetPtr(2);
  QTransform * par3 = (QTransform *) _qt5xhb_itemGetPtr(3);
  hb_retl( QTransform::quadToQuad ( *par1, *par2, *par3 ) );
}


/*
static QTransform fromTranslate(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QTRANSFORM_FROMTRANSLATE )
{
  QTransform * ptr = new QTransform( QTransform::fromTranslate ( PQREAL(1), PQREAL(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}


/*
static QTransform fromScale(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QTRANSFORM_FROMSCALE )
{
  QTransform * ptr = new QTransform( QTransform::fromScale ( PQREAL(1), PQREAL(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}



HB_FUNC_STATIC( QTRANSFORM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTRANSFORM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTRANSFORM_NEWFROM );
}

HB_FUNC_STATIC( QTRANSFORM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTRANSFORM_NEWFROM );
}

HB_FUNC_STATIC( QTRANSFORM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTRANSFORM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
