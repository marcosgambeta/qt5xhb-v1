%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QComponent

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTransform(QNode *parent = nullptr)
$constructor=|new|QNode *=nullptr

$prototype=explicit QTransform(QTransformPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QTransform()
$deleteMethod

%%
%% Q_PROPERTY(QMatrix4x4 matrix READ matrix WRITE setMatrix NOTIFY matrixChanged)
%%

$prototype=QMatrix4x4 matrix() const
$method=|QMatrix4x4|matrix|

$prototype=void setMatrix(const QMatrix4x4 &matrix)
$slotMethod=|void|setMatrix|const QMatrix4x4 &

%%
%% Q_PROPERTY(float scale READ scale WRITE setScale NOTIFY scaleChanged)
%%

$prototype=float scale() const
$method=|float|scale|

$prototype=void setScale(float scale)
$slotMethod=|void|setScale|float

%%
%% Q_PROPERTY(QVector3D scale3D READ scale3D WRITE setScale3D NOTIFY scale3DChanged)
%%

$prototype=QVector3D scale3D() const
$method=|QVector3D|scale3D|

$prototype=void setScale3D(const QVector3D &scale)
$slotMethod=|void|setScale3D|const QVector3D &

%%
%% Q_PROPERTY(QQuaternion rotation READ rotation WRITE setRotation NOTIFY rotationChanged)
%%

$prototype=QQuaternion rotation() const
$method=|QQuaternion|rotation|

$prototype=void setRotation(const QQuaternion &rotation)
$slotMethod=|void|setRotation|const QQuaternion &

%%
%% Q_PROPERTY(QVector3D translation READ translation WRITE setTranslation NOTIFY translationChanged)
%%

$prototype=QVector3D translation() const
$method=|QVector3D|translation|

$prototype=void setTranslation(const QVector3D &translation)
$slotMethod=|void|setTranslation|const QVector3D &

%%
%% Q_PROPERTY(float rotationX READ rotationX WRITE setRotationX NOTIFY rotationXChanged)
%%

$prototype=float rotationX() const
$method=|float|rotationX|

$prototype=void setRotationX(float rotationX)
$slotMethod=|void|setRotationX|float

%%
%% Q_PROPERTY(float rotationY READ rotationY WRITE setRotationY NOTIFY rotationYChanged)
%%

$prototype=float rotationY() const
$method=|float|rotationY|

$prototype=void setRotationY(float rotationY)
$slotMethod=|void|setRotationY|float

%%
%% Q_PROPERTY(float rotationZ READ rotationZ WRITE setRotationZ NOTIFY rotationZChanged)
%%

$prototype=float rotationZ() const
$method=|float|rotationZ|

$prototype=void setRotationZ(float rotationZ)
$slotMethod=|void|setRotationZ|float

%%
%%
%%

$prototype=Q_INVOKABLE static QQuaternion fromAxisAndAngle(const QVector3D &axis, float angle)
$staticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle1|const QVector3D &,float

$prototype=Q_INVOKABLE static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
$staticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle2|float,float,float,float

/*
[1]Q_INVOKABLE static QQuaternion fromAxisAndAngle(const QVector3D &axis, float angle)
[2]Q_INVOKABLE static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
*/

HB_FUNC_STATIC( QTRANSFORM_FROMAXISANDANGLE )
{
%% TODO: implementar
}

$prototype=Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2)
$staticMethod=|QQuaternion|fromAxesAndAngles,fromAxesAndAngles1|const QVector3D &,float,const QVector3D &,float

$prototype=Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2, const QVector3D &axis3, float angle3)
$staticMethod=|QQuaternion|fromAxesAndAngles,fromAxesAndAngles2|const QVector3D &,float,const QVector3D &,float,const QVector3D &,float

/*
[1]Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2)
[2]Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2, const QVector3D &axis3, float angle3)
*/

HB_FUNC_STATIC( QTRANSFORM_FROMAXESANDANGLES )
{
%% TODO: implementar
}

$prototype=Q_INVOKABLE static QQuaternion fromEulerAngles(const QVector3D &eulerAngles)
$staticMethod=|QQuaternion|fromEulerAngles,fromEulerAngles1|const QVector3D &

$prototype=Q_INVOKABLE static QQuaternion fromEulerAngles(float pitch, float yaw, float roll)
$staticMethod=|QQuaternion|fromEulerAngles,fromEulerAngles2|float,float,float

/*
[1]Q_INVOKABLE static QQuaternion fromEulerAngles(const QVector3D &eulerAngles)
[2]Q_INVOKABLE static QQuaternion fromEulerAngles(float pitch, float yaw, float roll)
*/

HB_FUNC_STATIC( QTRANSFORM_FROMEULERANGLES )
{
%% TODO: implementar
}

$prototype=Q_INVOKABLE static QMatrix4x4 rotateAround(const QVector3D &point, float angle, const QVector3D &axis)
$staticMethod=|QMatrix4x4|rotateAround|const QVector3D &,float,const QVector3D &

$prototype=QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

$beginSignals
$signal=|scaleChanged(float)
$signal=|scale3DChanged(QVector3D)
$signal=|rotationChanged(QQuaternion)
$signal=|translationChanged(QVector3D)
$signal=|matrixChanged()
$signal=|rotationXChanged(float)
$signal=|rotationYChanged(float)
$signal=|rotationZChanged(float)
$endSignals

#pragma ENDDUMP
