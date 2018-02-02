%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBar3DSeries INHERIT QAbstract3DSeries

   METHOD new
   METHOD delete

   METHOD dataProxy
   METHOD invalidSelectionPosition
   METHOD meshAngle
   METHOD selectedBar
   METHOD setDataProxy
   METHOD setMeshAngle
   METHOD setSelectedBar

   METHOD onDataProxyChanged
   METHOD onMeshAngleChanged
   METHOD onSelectedBarChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QBar3DSeries(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QBarDataProxy *,QObject *=Q_NULLPTR

//[1]explicit QBar3DSeries(QObject *parent = Q_NULLPTR)
//[2]explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QBAR3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBar3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBARDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBar3DSeries_new2();
  }
}

$prototype=virtual ~QBar3DSeries()
$deleteMethod

%%
%% Q_PROPERTY(QBarDataProxy *dataProxy READ dataProxy WRITE setDataProxy NOTIFY dataProxyChanged)
%%

$prototype=QBarDataProxy *dataProxy() const
$method=|QBarDataProxy *|dataProxy|

$prototype=void setDataProxy(QBarDataProxy *proxy)
$method=|void|setDataProxy|QBarDataProxy *

%%
%% Q_PROPERTY(QPoint selectedBar READ selectedBar WRITE setSelectedBar NOTIFY selectedBarChanged)
%%

$prototype=QPoint selectedBar() const;
$method=|QPoint|selectedBar|

$prototype=void setSelectedBar(const QPoint &position)
$method=|void|setSelectedBar|const QPoint &

%%
%% Q_PROPERTY(float meshAngle READ meshAngle WRITE setMeshAngle NOTIFY meshAngleChanged)
%%

$prototype=float meshAngle() const
$method=|float|meshAngle|

$prototype=void setMeshAngle(float angle)
$method=|void|setMeshAngle|float

%%
%%
%%

$prototype=static QPoint invalidSelectionPosition()
$staticMethod=|QPoint|invalidSelectionPosition|

#pragma ENDDUMP
