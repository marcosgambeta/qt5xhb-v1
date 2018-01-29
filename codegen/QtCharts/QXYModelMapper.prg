%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QXYModelMapper INHERIT QObject

   METHOD new
   METHOD delete

   METHOD count
   METHOD first
   METHOD model
   METHOD orientation
   METHOD series
   METHOD setCount
   METHOD setFirst
   METHOD setModel
   METHOD setOrientation
   METHOD setSeries
   METHOD setXSection
   METHOD setYSection
   METHOD xSection
   METHOD ySection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QXYModelMapper(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

%% $deleteMethod

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

$prototype=QXYSeries *series() const
$method=|QXYSeries *|series|

$prototype=void setSeries(QXYSeries *series)
$method=|void|setSeries|QXYSeries *

$prototype=int first() const
$method=|int|first|

$prototype=void setFirst(int first)
$method=|void|setFirst|int

$prototype=int count() const
$method=|int|count|

$prototype=void setCount(int count)
$method=|void|setCount|int

$prototype=Qt::Orientation orientation() const
$method=|Qt::Orientation|orientation|

$prototype=void setOrientation(Qt::Orientation orientation)
$method=|void|setOrientation|Qt::Orientation

$prototype=int xSection() const
$method=|int|xSection|

$prototype=void setXSection(int xSection)
$method=|void|setXSection|int

$prototype=int ySection() const
$method=|int|ySection|

$prototype=void setYSection(int ySection)
$method=|void|setYSection|int

#pragma ENDDUMP
