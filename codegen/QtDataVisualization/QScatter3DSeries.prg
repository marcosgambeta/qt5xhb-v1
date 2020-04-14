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

$prototype=explicit QScatter3DSeries(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QScatter3DSeries(QScatterDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QScatterDataProxy *,QObject *=Q_NULLPTR

$prototype=explicit QScatter3DSeries(QScatter3DSeriesPrivate *d, QObject *parent = Q_NULLPTR) [protected]

/*
[1]explicit QScatter3DSeries(QObject *parent = Q_NULLPTR)
[2]explicit QScatter3DSeries(QScatterDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
*/

HB_FUNC_STATIC( QSCATTER3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QScatter3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQSCATTERDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QScatter3DSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QScatter3DSeries()
$deleteMethod

%%
%% Q_PROPERTY(QScatterDataProxy *dataProxy READ dataProxy WRITE setDataProxy NOTIFY dataProxyChanged)
%%

$prototype=QScatterDataProxy *dataProxy() const
$method=|QScatterDataProxy *|dataProxy|

$prototype=void setDataProxy(QScatterDataProxy *proxy)
$method=|void|setDataProxy|QScatterDataProxy *

%%
%% Q_PROPERTY(int selectedItem READ selectedItem WRITE setSelectedItem NOTIFY selectedItemChanged)
%%

$prototype=int selectedItem() const
$method=|int|selectedItem|

$prototype=void setSelectedItem(int index)
$method=|void|setSelectedItem|int

%%
%% Q_PROPERTY(float itemSize READ itemSize WRITE setItemSize NOTIFY itemSizeChanged)
%%

$prototype=float itemSize() const
$method=|float|itemSize|

$prototype=void setItemSize(float size)
$method=|void|setItemSize|float

%%
%%
%%

$prototype=static int invalidSelectionIndex()
$staticMethod=|int|invalidSelectionIndex|

$beginSignals
$signal=|dataProxyChanged(QScatterDataProxy*)
$signal=|itemSizeChanged(float)
$signal=|selectedItemChanged(int)
$endSignals

#pragma ENDDUMP
