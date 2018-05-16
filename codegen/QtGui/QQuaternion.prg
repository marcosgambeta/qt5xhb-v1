%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isIdentity
   METHOD vector
   METHOD setVector
   METHOD x
   METHOD y
   METHOD z
   METHOD scalar
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD setScalar
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD conjugate
   METHOD rotatedVector
   METHOD toVector4D
   METHOD fromAxisAndAngle
   METHOD slerp
   METHOD nlerp

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQuaternion()
$internalConstructor=|new1|

$prototype=QQuaternion(float scalar, float xpos, float ypos, float zpos)
$internalConstructor=|new2|float,float,float,float

$prototype=QQuaternion(float scalar, const QVector3D& vector)
$internalConstructor=|new3|float,const QVector3D &

$prototype=QQuaternion(const QVector4D& vector)
$internalConstructor=|new4|const QVector4D &

//[1]QQuaternion()
//[2]QQuaternion(float scalar, float xpos, float ypos, float zpos)
//[3]QQuaternion(float scalar, const QVector3D& vector)
//[4]QQuaternion(const QVector4D& vector)

HB_FUNC_STATIC( QQUATERNION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQuaternion_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QQuaternion_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
  {
    QQuaternion_new3();
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QQuaternion_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isIdentity() const
$method=|bool|isIdentity|

$prototype=QVector3D vector() const
$method=|QVector3D|vector|

$prototype=void setVector(const QVector3D& vector)
$internalMethod=|void|setVector,setVector1|const QVector3D &

$prototype=void setVector(float x, float y, float z)
$internalMethod=|void|setVector,setVector2|float,float,float

//[1]void setVector(const QVector3D& vector)
//[2]void setVector(float x, float y, float z)

HB_FUNC_STATIC( QQUATERNION_SETVECTOR )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QQuaternion_setVector1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QQuaternion_setVector2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=float x() const
$method=|float|x|

$prototype=float y() const
$method=|float|y|

$prototype=float z() const
$method=|float|z|

$prototype=float scalar() const
$method=|float|scalar|

$prototype=void setX(float x)
$method=|void|setX|float

$prototype=void setY(float y)
$method=|void|setY|float

$prototype=void setZ(float z)
$method=|void|setZ|float

$prototype=void setScalar(float scalar)
$method=|void|setScalar|float

$prototype=float length() const
$method=|float|length|

$prototype=float lengthSquared() const
$method=|float|lengthSquared|

$prototype=QQuaternion normalized() const
$method=|QQuaternion|normalized|

$prototype=void normalize()
$method=|void|normalize|

$prototype=QQuaternion conjugate() const
$method=|QQuaternion|conjugate|

$prototype=QVector3D rotatedVector(const QVector3D& vector) const
$method=|QVector3D|rotatedVector|const QVector3D &

$prototype=QVector4D toVector4D() const
$method=|QVector4D|toVector4D|

$prototype=static QQuaternion fromAxisAndAngle(const QVector3D& axis, float angle)
$internalStaticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle1|const QVector3D &,float

$prototype=static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
$internalStaticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle2|float,float,float,float

//[1]static QQuaternion fromAxisAndAngle(const QVector3D& axis, float angle)
//[2]static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)

HB_FUNC_STATIC( QQUATERNION_FROMAXISANDANGLE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    QQuaternion_fromAxisAndAngle1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QQuaternion_fromAxisAndAngle2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QQuaternion slerp(const QQuaternion& q1, const QQuaternion& q2, float t)
$staticMethod=|QQuaternion|slerp|const QQuaternion &,const QQuaternion &,float

$prototype=static QQuaternion nlerp(const QQuaternion& q1, const QQuaternion& q2, float t)
$staticMethod=|QQuaternion|nlerp|const QQuaternion &,const QQuaternion &,float

$extraMethods

#pragma ENDDUMP
