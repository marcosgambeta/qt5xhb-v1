$header

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

$destructor

#pragma BEGINDUMP

$includes

/*
QTransform(Qt::Initialization)
*/
HB_FUNC_STATIC( QTRANSFORM_NEW1 )
{
  QTransform * o = new QTransform ( (Qt::Initialization) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTransform()
*/
HB_FUNC_STATIC( QTRANSFORM_NEW2 )
{
  QTransform * o = new QTransform ();
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

$deleteMethod

/*
bool isAffine() const
*/
HB_FUNC_STATIC( QTRANSFORM_ISAFFINE )
{
  QTransform * obj = (QTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAffine () );
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
    RBOOL( obj->isIdentity () );
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
    RBOOL( obj->isInvertible () );
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
    RBOOL( obj->isScaling () );
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
    RBOOL( obj->isRotating () );
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
    RBOOL( obj->isTranslating () );
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
    hb_retni( obj->type () );
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
    RQREAL( obj->determinant () );
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
    RQREAL( obj->det () );
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
    RQREAL( obj->m11 () );
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
    RQREAL( obj->m12 () );
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
    RQREAL( obj->m13 () );
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
    RQREAL( obj->m21 () );
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
    RQREAL( obj->m22 () );
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
    RQREAL( obj->m23 () );
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
    RQREAL( obj->m31 () );
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
    RQREAL( obj->m32 () );
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
    RQREAL( obj->m33 () );
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
    RQREAL( obj->dx () );
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
    RQREAL( obj->dy () );
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
    QTransform * ptr = new QTransform( obj->adjoint () );
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
    QTransform * ptr = new QTransform( obj->transposed () );
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
    QTransform * ptr = &obj->rotate ( PQREAL(1), (Qt::Axis) par2 );
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
    QTransform * ptr = &obj->rotateRadians ( PQREAL(1), (Qt::Axis) par2 );
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
    obj->reset ();
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
    QPoint * ptr = new QPoint( obj->map ( *PQPOINT(1) ) );
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
    QPointF * ptr = new QPointF( obj->map ( *PQPOINTF(1) ) );
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
    QLine * ptr = new QLine( obj->map ( *PQLINE(1) ) );
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
    QLineF * ptr = new QLineF( obj->map ( *PQLINEF(1) ) );
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
    QPolygonF * ptr = new QPolygonF( obj->map ( *PQPOLYGONF(1) ) );
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
    QPolygon * ptr = new QPolygon( obj->map ( *PQPOLYGON(1) ) );
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
    QRegion * ptr = new QRegion( obj->map ( *PQREGION(1) ) );
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
    QPainterPath * ptr = new QPainterPath( obj->map ( *PQPAINTERPATH(1) ) );
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
    QPolygon * ptr = new QPolygon( obj->mapToPolygon ( *PQRECT(1) ) );
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
    QRect * ptr = new QRect( obj->mapRect ( *PQRECT(1) ) );
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
    QRectF * ptr = new QRectF( obj->mapRect ( *PQRECTF(1) ) );
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
    obj->map ( PINT(1), PINT(2), &par3, &par4 );
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
    const QMatrix * ptr = &obj->toAffine ();
    _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
  }
}


/*
static bool squareToQuad(const QPolygonF &square, QTransform &result)
*/
HB_FUNC_STATIC( QTRANSFORM_SQUARETOQUAD )
{
  QTransform * par2 = (QTransform *) _qt5xhb_itemGetPtr(2);
  RBOOL( QTransform::squareToQuad ( *PQPOLYGONF(1), *par2 ) );
}


/*
static bool quadToSquare(const QPolygonF &quad, QTransform &result)
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOSQUARE )
{
  QTransform * par2 = (QTransform *) _qt5xhb_itemGetPtr(2);
  RBOOL( QTransform::quadToSquare ( *PQPOLYGONF(1), *par2 ) );
}


/*
static bool quadToQuad(const QPolygonF &one,const QPolygonF &two,QTransform &result)
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOQUAD )
{
  QTransform * par3 = (QTransform *) _qt5xhb_itemGetPtr(3);
  RBOOL( QTransform::quadToQuad ( *PQPOLYGONF(1), *PQPOLYGONF(2), *par3 ) );
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

$extraMethods

#pragma ENDDUMP
