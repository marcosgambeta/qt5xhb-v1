%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QMatrix>
#include <QTransform>

$prototype=QMatrix4x4()
$internalConstructor=|new1|

$prototype=explicit QMatrix4x4(const float *values)
%% TODO: implementar 'const float *'
%% $internalConstructor=|new2|const float *

$prototype=QMatrix4x4(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44)
$internalConstructor=|new3|float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,float

$prototype=explicit QMatrix4x4(const QGenericMatrix<N, M, float>& matrix);

$prototype=QMatrix4x4(const QTransform& transform)
$internalConstructor=|new5|const QTransform &

$prototype=QMatrix4x4(const QMatrix& matrix)
$internalConstructor=|new6|const QMatrix &

//[1]QMatrix4x4()
//[2]explicit QMatrix4x4(const float *values)
//[3]QMatrix4x4(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44)
//[4]explicit QMatrix4x4(const QGenericMatrix<N, M, float>& matrix);
//[5]QMatrix4x4(const QTransform& transform);
//[6]QMatrix4x4(const QMatrix& matrix);

HB_FUNC_STATIC( QMATRIX4X4_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMatrix4x4_new1();
  }
%%  else if( ISNUMPAR(1) && ISARRAY(1) )
%%  {
%%    QMatrix4x4_new2();
%%  }
  else if( ISNUMPAR(16) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) && ISNUM(10) && ISNUM(11) && ISNUM(12) && ISNUM(13) && ISNUM(14) && ISNUM(15) && ISNUM(16) )
  {
    QMatrix4x4_new3();
  }
%%  else if( ISNUMPAR(1) && ISOBJECT(1) )
%%  {
%%    QMatrix4x4_new4();
%%  }
  else if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    QMatrix4x4_new5();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QMatrix4x4_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QVector4D column(int index) const
$method=|QVector4D|column|int|#ifndef QT_NO_VECTOR4D

$prototype=void setColumn(int index, const QVector4D& value)
$method=|void|setColumn|int,const QVector4D &|#ifndef QT_NO_VECTOR4D

$prototype=QVector4D row(int index) const
$method=|QVector4D|row|int|#ifndef QT_NO_VECTOR4D

$prototype=void setRow(int index, const QVector4D& value)
$method=|void|setRow|int,const QVector4D &|#ifndef QT_NO_VECTOR4D

$prototype=bool isAffine() const
$method=5,5,0|bool|isAffine|

$prototype=bool isIdentity() const
$method=|bool|isIdentity|

$prototype=void setToIdentity()
$method=|void|setToIdentity|

$prototype=void fill(float value)
$method=|void|fill|float

$prototype=double determinant() const
$method=|double|determinant|

$prototype=QMatrix4x4 inverted(bool *invertible = Q_NULLPTR) const
%% TODO: revisar implementacao
$method=|QMatrix4x4|inverted|bool *=Q_NULLPTR

$prototype=QMatrix4x4 transposed() const
$method=|QMatrix4x4|transposed|

$prototype=QMatrix3x3 normalMatrix() const
$method=|QMatrix3x3|normalMatrix|

$prototype=void scale(const QVector3D& vector)
$internalMethod=|void|scale,scale1|const QVector3D &|#ifndef QT_NO_VECTOR3D

$prototype=void scale(float x, float y)
$internalMethod=|void|scale,scale2|float,float

$prototype=void scale(float x, float y, float z)
$internalMethod=|void|scale,scale3|float,float,float

$prototype=void scale(float factor)
$internalMethod=|void|scale,scale4|float

//[1]void scale(const QVector3D& vector)
//[2]void scale(float x, float y)
//[3]void scale(float x, float y, float z)
//[4]void scale(float factor)

HB_FUNC_STATIC( QMATRIX4X4_SCALE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_scale1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMatrix4x4_scale2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QMatrix4x4_scale3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix4x4_scale4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void translate(const QVector3D& vector)
$internalMethod=|void|translate,translate1|const QVector3D &|#ifndef QT_NO_VECTOR3D

$prototype=void translate(float x, float y)
$internalMethod=|void|translate,translate2|float,float

$prototype=void translate(float x, float y, float z)
$internalMethod=|void|translate,translate3|float,float,float

//[1]void translate(const QVector3D& vector)
//[2]void translate(float x, float y)
//[3]void translate(float x, float y, float z)

HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_translate1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMatrix4x4_translate2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QMatrix4x4_translate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void rotate(float angle, const QVector3D& vector)
$internalMethod=|void|rotate,rotate1|float,const QVector3D &|#ifndef QT_NO_VECTOR3D

$prototype=void rotate(float angle, float x, float y, float z = 0.0f)
$internalMethod=|void|rotate,rotate2|float,float,float,float=0.0f

$prototype=void rotate(const QQuaternion& quaternion)
$internalMethod=|void|rotate,rotate3|const QQuaternion &|#ifndef QT_NO_QUATERNION

//[1]void rotate(float angle, const QVector3D& vector)
//[2]void rotate(float angle, float x, float y, float z = 0.0f)
//[3]void rotate(const QQuaternion& quaternion)

HB_FUNC_STATIC( QMATRIX4X4_ROTATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVECTOR3D(2) )
  {
    QMatrix4x4_rotate1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QMatrix4x4_rotate2();
  }
  else if( ISNUMPAR(1) && ISQQUATERNION(1) )
  {
    QMatrix4x4_rotate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void ortho(const QRect& rect)
$internalMethod=|void|ortho,ortho1|const QRect &

$prototype=void ortho(const QRectF& rect)
$internalMethod=|void|ortho,ortho2|const QRectF &

$prototype=void ortho(float left, float right, float bottom, float top, float nearPlane, float farPlane)
$internalMethod=|void|ortho,ortho3|float,float,float,float,float,float

//[1]void ortho(const QRect& rect)
//[2]void ortho(const QRectF& rect)
//[3]void ortho(float left, float right, float bottom, float top, float nearPlane, float farPlane)

HB_FUNC_STATIC( QMATRIX4X4_ORTHO )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix4x4_ortho1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_ortho2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMatrix4x4_ortho3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void frustum(float left, float right, float bottom, float top, float nearPlane, float farPlane)
$method=|void|frustum|float,float,float,float,float,float

$prototype=void perspective(float verticalAngle, float aspectRatio, float nearPlane, float farPlane)
$method=|void|perspective|float,float,float,float

$prototype=void lookAt(const QVector3D& eye, const QVector3D& center, const QVector3D& up)
$method=|void|lookAt|const QVector3D &,const QVector3D &,const QVector3D &|#ifndef QT_NO_VECTOR3D

%% TODO: viewport nao presente na 5.2

$prototype=void viewport(const QRectF &rect)
$internalMethod=5,3,0|void|viewport,viewport1|const QRectF &

$prototype=void viewport(float left, float bottom, float width, float height, float nearPlane = 0.0f, float farPlane = 1.0f)
$internalMethod=5,3,0|void|viewport,viewport2|float,float,float,float,float=0.0f,float=1.0f

//[1]void viewport(const QRectF &rect)
//[2]void viewport(float left, float bottom, float width, float height, float nearPlane = 0.0f, float farPlane = 1.0f)

HB_FUNC_STATIC( QMATRIX4X4_VIEWPORT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_viewport1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) )
  {
    QMatrix4x4_viewport2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void flipCoordinates()
$method=|void|flipCoordinates|

$prototype=QMatrix toAffine() const
$method=|QMatrix|toAffine|

$prototype=QTransform toTransform() const
$internalMethod=|QTransform|toTransform,toTransform1|

$prototype=QTransform toTransform(float distanceToPlane) const
$internalMethod=|QTransform|toTransform,toTransform2|float

//[1]QTransform toTransform() const
//[2]QTransform toTransform(float distanceToPlane) const

HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM )
{
  if( ISNUMPAR(0) )
  {
    QMatrix4x4_toTransform1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix4x4_toTransform2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPoint map(const QPoint& point) const
$internalMethod=|QPoint|map,map1|const QPoint &

$prototype=QPointF map(const QPointF& point) const
$internalMethod=|QPointF|map,map2|const QPointF &

$prototype=QVector3D map(const QVector3D& point) const
$internalMethod=|QVector3D|map,map3|const QVector3D &|#ifndef QT_NO_VECTOR3D

$prototype=QVector4D map(const QVector4D& point) const
$internalMethod=|QVector4D|map,map4|const QVector4D &|#ifndef QT_NO_VECTOR4D

//[1]QPoint map(const QPoint& point) const
//[2]QPointF map(const QPointF& point) const
//[3]QVector3D map(const QVector3D& point) const
//[4]QVector4D map(const QVector4D& point) const

HB_FUNC_STATIC( QMATRIX4X4_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QMatrix4x4_map1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QMatrix4x4_map2();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QMatrix4x4_map3();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QMatrix4x4_map4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QVector3D mapVector(const QVector3D& vector) const
$method=|QVector3D|mapVector|const QVector3D &|#ifndef QT_NO_VECTOR3D

$prototype=QRect mapRect(const QRect& rect) const
$internalMethod=|QRect|mapRect,mapRect1|const QRect &

$prototype=QRectF mapRect(const QRectF& rect) const
$internalMethod=|QRectF|mapRect,mapRect2|const QRectF &

//[1]QRect mapRect(const QRect& rect) const
//[2]QRectF mapRect(const QRectF& rect) const

HB_FUNC_STATIC( QMATRIX4X4_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix4x4_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix4x4_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void optimize()
$method=|void|optimize|

$extraMethods

#pragma ENDDUMP
