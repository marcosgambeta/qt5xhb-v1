%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHCandlestickModelMapper INHERIT QCandlestickModelMapper

   METHOD new
%%   METHOD delete

   METHOD closeColumn
   METHOD firstSetRow
   METHOD highColumn
   METHOD lastSetRow
   METHOD lowColumn
   METHOD openColumn
   METHOD orientation
   METHOD setCloseColumn
   METHOD setFirstSetRow
   METHOD setHighColumn
   METHOD setLastSetRow
   METHOD setLowColumn
   METHOD setOpenColumn
   METHOD setTimestampColumn
   METHOD timestampColumn

   METHOD onCloseColumnChanged
   METHOD onFirstSetRowChanged
   METHOD onHighColumnChanged
   METHOD onLastSetRowChanged
   METHOD onLowColumnChanged
   METHOD onOpenColumnChanged
   METHOD onTimestampColumnChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QHCandlestickModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(int timestampColumn READ timestampColumn WRITE setTimestampColumn NOTIFY timestampColumnChanged)
%%

$prototype=int timestampColumn() const
$method=|int|timestampColumn|

$prototype=void setTimestampColumn(int timestampColumn)
$method=|void|setTimestampColumn|int

%%
%% Q_PROPERTY(int openColumn READ openColumn WRITE setOpenColumn NOTIFY openColumnChanged)
%%

$prototype=int openColumn() const
$method=|int|openColumn|

$prototype=void setOpenColumn(int openColumn)
$method=|void|setOpenColumn|int

%%
%% Q_PROPERTY(int highColumn READ highColumn WRITE setHighColumn NOTIFY highColumnChanged)
%%

$prototype=int highColumn() const
$method=|int|highColumn|

$prototype=void setHighColumn(int highColumn)
$method=|void|setHighColumn|int

%%
%% Q_PROPERTY(int lowColumn READ lowColumn WRITE setLowColumn NOTIFY lowColumnChanged)
%%

$prototype=int lowColumn() const
$method=|int|lowColumn|

$prototype=void setLowColumn(int lowColumn)
$method=|void|setLowColumn|int

%%
%% Q_PROPERTY(int closeColumn READ closeColumn WRITE setCloseColumn NOTIFY closeColumnChanged)
%%

$prototype=int closeColumn() const
$method=|int|closeColumn|

$prototype=void setCloseColumn(int closeColumn)
$method=|void|setCloseColumn|int

%%
%% Q_PROPERTY(int firstSetRow READ firstSetRow WRITE setFirstSetRow NOTIFY firstSetRowChanged)
%%

$prototype=int firstSetRow() const
$method=|int|firstSetRow|

$prototype=void setFirstSetRow(int firstSetRow)
$method=|void|setFirstSetRow|int

%%
%% Q_PROPERTY(int lastSetRow READ lastSetRow WRITE setLastSetRow NOTIFY lastSetRowChanged)
%%

$prototype=int lastSetRow() const
$method=|int|lastSetRow|

$prototype=void setLastSetRow(int lastSetRow)
$method=|void|setLastSetRow|int

%%
%%
%%

$prototype=Qt::Orientation orientation() const
$method=|Qt::Orientation|orientation|

#pragma ENDDUMP
