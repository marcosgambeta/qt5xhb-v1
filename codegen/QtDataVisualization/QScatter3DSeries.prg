%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QScatter3DSeries INHERIT QAbstract3DSeries

   METHOD new
   METHOD delete

   METHOD dataProxy
   METHOD invalidSelectionIndex
   METHOD itemSize
   METHOD selectedItem
   METHOD setDataProxy
   METHOD setItemSize
   METHOD setSelectedItem

   METHOD onDataProxyChanged
   METHOD onItemSizeChanged
   METHOD onSelectedItemChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QScatter3DSeries(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QScatter3DSeries(QScatterDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QScatterDataProxy *,QObject *=Q_NULLPTR

$prototype=explicit QScatter3DSeries(QScatter3DSeriesPrivate *d, QObject *parent = Q_NULLPTR) (protected)

//[1]explicit QScatter3DSeries(QObject *parent = Q_NULLPTR)
//[2]explicit QScatter3DSeries(QScatterDataProxy *dataProxy, QObject *parent = Q_NULLPTR)

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

#pragma ENDDUMP
