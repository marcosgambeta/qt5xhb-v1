%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QCustom3DItem(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QCustom3DItem(const QString &meshFile, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, const QImage &texture, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|const QString &,const QVector3D &,const QVector3D &,const QQuaternion &,const QImage &,QObject *=Q_NULLPTR

$prototype=QCustom3DItem(QCustom3DItemPrivate *d, QObject *parent = Q_NULLPTR) [protected]

//[1]explicit QCustom3DItem(QObject *parent = Q_NULLPTR)
//[2]explicit QCustom3DItem(const QString &meshFile, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, const QImage &texture, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCUSTOM3DITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DItem_new1();
  }
  else if( ISBETWEEN(5,6) && ISCHAR(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) && ISQQUATERNION(4) && ISQIMAGE(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCustom3DItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QCustom3DItem()
$deleteMethod

%%
%% Q_PROPERTY(QString meshFile READ meshFile WRITE setMeshFile NOTIFY meshFileChanged)
%%

$prototype=QString meshFile() const
$method=|QString|meshFile|

$prototype=void setMeshFile(const QString &meshFile)
$method=|void|setMeshFile|const QString &

%%
%% Q_PROPERTY(QString textureFile READ textureFile WRITE setTextureFile NOTIFY textureFileChanged)
%%

$prototype=QString textureFile() const
$method=|QString|textureFile|

$prototype=void setTextureFile(const QString &textureFile)
$method=|void|setTextureFile|const QString &

%%
%% Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototype=QVector3D position() const
$method=|QVector3D|position|

$prototype=void setPosition(const QVector3D &position)
$method=|void|setPosition|const QVector3D &

%%
%% Q_PROPERTY(bool positionAbsolute READ isPositionAbsolute WRITE setPositionAbsolute NOTIFY positionAbsoluteChanged)
%%

$prototype=bool isPositionAbsolute() const
$method=|bool|isPositionAbsolute|

$prototype=void setPositionAbsolute(bool positionAbsolute)
$method=|void|setPositionAbsolute|bool

%%
%% Q_PROPERTY(QVector3D scaling READ scaling WRITE setScaling NOTIFY scalingChanged)
%%

$prototype=QVector3D scaling() const
$method=|QVector3D|scaling|

$prototype=void setScaling(const QVector3D &scaling)
$method=|void|setScaling|const QVector3D &

%%
%% Q_PROPERTY(QQuaternion rotation READ rotation WRITE setRotation NOTIFY rotationChanged)
%%

$prototype=QQuaternion rotation()
$method=|QQuaternion|rotation|

$prototype=void setRotation(const QQuaternion &rotation)
$method=|void|setRotation|const QQuaternion &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

%%
%% Q_PROPERTY(bool shadowCasting READ isShadowCasting WRITE setShadowCasting NOTIFY shadowCastingChanged)
%%

$prototype=bool isShadowCasting() const
$method=|bool|isShadowCasting|

$prototype=void setShadowCasting(bool enabled)
$method=|void|setShadowCasting|bool

%%
%% Q_PROPERTY(bool scalingAbsolute READ isScalingAbsolute WRITE setScalingAbsolute NOTIFY scalingAbsoluteChanged REVISION 1)
%%

$prototype=bool isScalingAbsolute() const
$method=|bool|isScalingAbsolute|

$prototype=void setScalingAbsolute(bool scalingAbsolute)
$method=|void|setScalingAbsolute|bool

%%
%%
%%

$prototype=Q_INVOKABLE void setRotationAxisAndAngle(const QVector3D &axis, float angle)
$method=|void|setRotationAxisAndAngle|const QVector3D &,float

$prototype=void setTextureImage(const QImage &textureImage)
$method=|void|setTextureImage|const QImage &

$beginSignals
$signal=|meshFileChanged(QString)
$signal=|positionAbsoluteChanged(bool)
$signal=|positionChanged(QVector3D)
$signal=|rotationChanged(QQuaternion)
$signal=|scalingAbsoluteChanged(bool)
$signal=|scalingChanged(QVector3D)
$signal=|shadowCastingChanged(bool)
$signal=|textureFileChanged(QString)
$signal=|visibleChanged(bool)
$endSignals

#pragma ENDDUMP
