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

$beginClassFrom=QAbstract3DSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QSurface3DSeries(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QSurface3DSeries(QSurfaceDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QSurfaceDataProxy *,QObject *=Q_NULLPTR

$prototype=explicit QSurface3DSeries(QSurface3DSeriesPrivate *d, QObject *parent = Q_NULLPTR) [protected]

//[1]explicit QSurface3DSeries(QObject *parent = Q_NULLPTR)
//[2]explicit QSurface3DSeries(QSurfaceDataProxy *dataProxy, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QSURFACE3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSurface3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQSURFACEDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSurface3DSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QSurface3DSeries()
$deleteMethod

%%
%% Q_PROPERTY(QSurfaceDataProxy *dataProxy READ dataProxy WRITE setDataProxy NOTIFY dataProxyChanged)
%%

$prototype=QSurfaceDataProxy *dataProxy() const
$method=|QSurfaceDataProxy *|dataProxy|

$prototype=void setDataProxy(QSurfaceDataProxy *proxy)
$method=|void|setDataProxy|QSurfaceDataProxy *

%%
%% Q_PROPERTY(QPoint selectedPoint READ selectedPoint WRITE setSelectedPoint NOTIFY selectedPointChanged)
%%

$prototype=QPoint selectedPoint() const
$method=|QPoint|selectedPoint|

$prototype=void setSelectedPoint(const QPoint &position)
$method=|void|setSelectedPoint|const QPoint &

%%
%% Q_PROPERTY(bool flatShadingEnabled READ isFlatShadingEnabled WRITE setFlatShadingEnabled NOTIFY flatShadingEnabledChanged)
%%

$prototype=bool isFlatShadingEnabled() const
$method=|bool|isFlatShadingEnabled|

$prototype=void setFlatShadingEnabled(bool enabled)
$method=|void|setFlatShadingEnabled|bool

%%
%% Q_PROPERTY(bool flatShadingSupported READ isFlatShadingSupported NOTIFY flatShadingSupportedChanged)
%%

$prototype=bool isFlatShadingSupported() const
$method=|bool|isFlatShadingSupported|

%%
%% Q_PROPERTY(DrawFlags drawMode READ drawMode WRITE setDrawMode NOTIFY drawModeChanged)
%%

$prototype=QSurface3DSeries::DrawFlags drawMode() const
$method=|QSurface3DSeries::DrawFlags|drawMode|

$prototype=void setDrawMode(DrawFlags mode)
$method=|void|setDrawMode|QSurface3DSeries::DrawFlags

%%
%% Q_PROPERTY(QImage texture READ texture WRITE setTexture NOTIFY textureChanged)
%%

$prototype=QImage texture() const
$method=|QImage|texture|

$prototype=void setTexture(const QImage &texture)
$method=|void|setTexture|const QImage &

%%
%% Q_PROPERTY(QString textureFile READ textureFile WRITE setTextureFile NOTIFY textureFileChanged)
%%

$prototype=QString textureFile() const
$method=|QString|textureFile|

$prototype=void setTextureFile(const QString &filename)
$method=|void|setTextureFile|const QString &

%%
%%
%%

$prototype=static QPoint invalidSelectionPosition()
$staticMethod=|QPoint|invalidSelectionPosition|

$beginSignals
$signal=|dataProxyChanged(QSurfaceDataProxy*)
$signal=|drawModeChanged(QSurface3DSeries::DrawFlags)
$signal=|flatShadingEnabledChanged(bool)
$signal=|flatShadingSupportedChanged(bool)
$signal=|selectedPointChanged(QPoint)
$signal=|textureChanged(QImage)
$signal=|textureFileChanged(QString)
$endSignals

#pragma ENDDUMP
