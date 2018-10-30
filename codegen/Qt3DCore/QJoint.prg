%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QJoint(Qt3DCore::QNode *parent = nullptr)
$constructor=|new|Qt3DCore::QNode *=nullptr

$prototype=~QJoint()
$deleteMethod

%%
%% Q_PROPERTY(QVector3D scale READ scale WRITE setScale NOTIFY scaleChanged)
%%

$prototype=QVector3D scale() const
$method=|QVector3D|scale|

$prototype=void setScale(const QVector3D &scale) (slot)
$slotMethod=|void|setScale|const QVector3D &

%%
%% Q_PROPERTY(QQuaternion rotation READ rotation WRITE setRotation NOTIFY rotationChanged)
%%

$prototype=QQuaternion rotation() const
$method=|QQuaternion|rotation|

$prototype=void setRotation(const QQuaternion &rotation) (slot)
$slotMethod=|void|setRotation|const QQuaternion &

%%
%% Q_PROPERTY(QVector3D translation READ translation WRITE setTranslation NOTIFY translationChanged)
%%

$prototype=QVector3D translation() const
$method=|QVector3D|translation|

$prototype=void setTranslation(const QVector3D &translation) (slot)
$slotMethod=|void|setTranslation|const QVector3D &

%%
%% Q_PROPERTY(QMatrix4x4 inverseBindMatrix READ inverseBindMatrix WRITE setInverseBindMatrix NOTIFY inverseBindMatrixChanged)
%%

$prototype=QMatrix4x4 inverseBindMatrix() const
$method=|QMatrix4x4|inverseBindMatrix|

$prototype=void setInverseBindMatrix(const QMatrix4x4 &inverseBindMatrix) (slot)
$slotMethod=|void|setInverseBindMatrix|const QMatrix4x4 &

%%
%% Q_PROPERTY(float rotationX READ rotationX WRITE setRotationX NOTIFY rotationXChanged)
%%

$prototype=float rotationX() const
$method=|float|rotationX|

$prototype=void setRotationX(float rotationX) (slot)
$method=|void|setRotationX|float

%%
%% Q_PROPERTY(float rotationY READ rotationY WRITE setRotationY NOTIFY rotationYChanged)
%%

$prototype=float rotationY() const
$method=|float|rotationY|

$prototype=void setRotationY(float rotationY) (slot)
$slotMethod=|void|setRotationY|float

%%
%% Q_PROPERTY(float rotationZ READ rotationZ WRITE setRotationZ NOTIFY rotationZChanged)
%%

$prototype=float rotationZ() const
$method=|float|rotationZ|

$prototype=void setRotationZ(float rotationZ) (slot)
$slotMethod=|void|setRotationZ|float

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name) (slot)
$slotMethod=|void|setName|const QString &

%%
%%
%%

$prototype=void addChildJoint(QJoint *joint)
$method=|void|addChildJoint|QJoint *

$prototype=void removeChildJoint(QJoint *joint)
$method=|void|removeChildJoint|QJoint *

$prototype=QVector<QJoint *> childJoints() const
$method=|QVector<QJoint *>|childJoints|

$prototype=void setToIdentity() (slot)
$slotMethod=|void|setToIdentity|

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const override [private]

$beginSignals
$signal=|scaleChanged(QVector3D)
$signal=|rotationChanged(QQuaternion)
$signal=|translationChanged(QVector3D)
$signal=|inverseBindMatrixChanged(QMatrix4x4)
$signal=|rotationXChanged(float)
$signal=|rotationYChanged(float)
$signal=|rotationZChanged(float)
$signal=|nameChanged(QString)
$endSignals

#pragma ENDDUMP
