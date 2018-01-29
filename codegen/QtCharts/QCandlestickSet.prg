%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCandlestickSet INHERIT QObject

   METHOD new
   METHOD delete

   METHOD brush
   METHOD close
   METHOD high
   METHOD low
   METHOD open
   METHOD pen
   METHOD setBrush
   METHOD setClose
   METHOD setHigh
   METHOD setLow
   METHOD setOpen
   METHOD setPen
   METHOD setTimestamp
   METHOD timestamp

   METHOD onBrushChanged
   METHOD onClicked
   METHOD onCloseChanged
   METHOD onDoubleClicked
   METHOD onHighChanged
   METHOD onHovered
   METHOD onLowChanged
   METHOD onOpenChanged
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onTimestampChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCandlestickSet(qreal timestamp = 0.0, QObject *parent = nullptr)
$constructor=|new1|qreal=0.0,QObject *=nullptr

$prototype=explicit QCandlestickSet(qreal open, qreal high, qreal low, qreal close, qreal timestamp = 0.0, QObject *parent = nullptr)
$constructor=|new2|qreal,qreal,qreal,qreal,qreal=0.0,QObject *=nullptr

//[1]explicit QCandlestickSet(qreal timestamp = 0.0, QObject *parent = nullptr)
//[2]explicit QCandlestickSet(qreal open, qreal high, qreal low, qreal close, qreal timestamp = 0.0, QObject *parent = nullptr)

HB_FUNC_STATIC( QCANDLESTICKSET_NEW )
{
}

$prototype=virtual ~QCandlestickSet()
$deleteMethod

%%
%% Q_PROPERTY(qreal timestamp READ timestamp WRITE setTimestamp NOTIFY timestampChanged)
%%

$prototype=qreal timestamp() const
$method=|qreal|timestamp|

$prototype=void setTimestamp(qreal timestamp)
$method=|void|setTimestamp|qreal

%%
%% Q_PROPERTY(qreal open READ open WRITE setOpen NOTIFY openChanged)
%%

$prototype=qreal open() const
$method=|qreal|open|

$prototype=void setOpen(qreal open)
$method=|void|setOpen|qreal

%%
%% Q_PROPERTY(qreal high READ high WRITE setHigh NOTIFY highChanged)
%%

$prototype=qreal high() const
$method=|qreal|high|

$prototype=void setHigh(qreal high)
$method=|void|setHigh|qreal

%%
%% Q_PROPERTY(qreal low READ low WRITE setLow NOTIFY lowChanged)
%%

$prototype=qreal low() const
$method=|qreal|low|

$prototype=void setLow(qreal low)
$method=|void|setLow|qreal

%%
%% Q_PROPERTY(qreal close READ close WRITE setClose NOTIFY closeChanged)
%%

$prototype=qreal close() const
$method=|qreal|close|

$prototype=void setClose(qreal close)
$method=|void|setClose|qreal

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

#pragma ENDDUMP
