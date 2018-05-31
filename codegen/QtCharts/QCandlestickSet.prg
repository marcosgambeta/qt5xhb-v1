%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QCandlestickSet(qreal timestamp = 0.0, QObject *parent = nullptr)
$internalConstructor=5,8,0|new1|qreal=0.0,QObject *=nullptr

$prototype=explicit QCandlestickSet(qreal open, qreal high, qreal low, qreal close, qreal timestamp = 0.0, QObject *parent = nullptr)
$internalConstructor=5,8,0|new2|qreal,qreal,qreal,qreal,qreal=0.0,QObject *=nullptr

//[1]explicit QCandlestickSet(qreal timestamp = 0.0, QObject *parent = nullptr)
//[2]explicit QCandlestickSet(qreal open, qreal high, qreal low, qreal close, qreal timestamp = 0.0, QObject *parent = nullptr)

HB_FUNC_STATIC( QCANDLESTICKSET_NEW )
{
  if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QCandlestickSet_new1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCandlestickSet_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QCandlestickSet()
$deleteMethod=5,8,0

%%
%% Q_PROPERTY(qreal timestamp READ timestamp WRITE setTimestamp NOTIFY timestampChanged)
%%

$prototype=qreal timestamp() const
$method=5,8,0|qreal|timestamp|

$prototype=void setTimestamp(qreal timestamp)
$method=5,8,0|void|setTimestamp|qreal

%%
%% Q_PROPERTY(qreal open READ open WRITE setOpen NOTIFY openChanged)
%%

$prototype=qreal open() const
$method=5,8,0|qreal|open|

$prototype=void setOpen(qreal open)
$method=5,8,0|void|setOpen|qreal

%%
%% Q_PROPERTY(qreal high READ high WRITE setHigh NOTIFY highChanged)
%%

$prototype=qreal high() const
$method=5,8,0|qreal|high|

$prototype=void setHigh(qreal high)
$method=5,8,0|void|setHigh|qreal

%%
%% Q_PROPERTY(qreal low READ low WRITE setLow NOTIFY lowChanged)
%%

$prototype=qreal low() const
$method=5,8,0|qreal|low|

$prototype=void setLow(qreal low)
$method=5,8,0|void|setLow|qreal

%%
%% Q_PROPERTY(qreal close READ close WRITE setClose NOTIFY closeChanged)
%%

$prototype=qreal close() const
$method=5,8,0|qreal|close|

$prototype=void setClose(qreal close)
$method=5,8,0|void|setClose|qreal

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=5,8,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,8,0|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=5,8,0|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=5,8,0|void|setPen|const QPen &

$beginSignals
$signal=5,8,0|brushChanged()
$signal=5,8,0|clicked()
$signal=5,8,0|closeChanged()
$signal=5,8,0|doubleClicked()
$signal=5,8,0|highChanged()
$signal=5,8,0|hovered(bool)
$signal=5,8,0|lowChanged()
$signal=5,8,0|openChanged()
$signal=5,8,0|penChanged()
$signal=5,8,0|pressed()
$signal=5,8,0|released()
$signal=5,8,0|timestampChanged()
$endSignals

#pragma ENDDUMP
