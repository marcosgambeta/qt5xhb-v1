%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%%     class TimeStamp {
%%     public:
%%         Q_DECL_CONSTEXPR TimeStamp(qint64 s = 0, qint64 usec = 0) Q_DECL_NOTHROW
%%             : secs(s), usecs(usec) {}
%%
%%         Q_DECL_CONSTEXPR static TimeStamp fromMicroSeconds(qint64 usec) Q_DECL_NOTHROW
%%         { return TimeStamp(usec / 1000000, usec % 1000000); }
%%
%%         Q_DECL_CONSTEXPR qint64 seconds() const Q_DECL_NOTHROW { return secs; }
%%         Q_DECL_CONSTEXPR qint64 microSeconds() const Q_DECL_NOTHROW { return usecs; }
%%
%%     private:
%%         qint64 secs;
%%         qint64 usecs;
%%     };

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=explicit QCanBusFrame(FrameType type = DataFrame) Q_DECL_NOTHROW
$prototype=explicit QCanBusFrame(quint32 identifier, const QByteArray &data)

//[1]explicit QCanBusFrame(FrameType type = DataFrame) Q_DECL_NOTHROW
//[2]explicit QCanBusFrame(quint32 identifier, const QByteArray &data)

HB_FUNC_STATIC( QCANBUSFRAME_NEW )
{
}

$deleteMethod=5,8,0

$prototype=bool isValid() const Q_DECL_NOTHROW

$prototype=FrameType frameType() const Q_DECL_NOTHROW

$prototype=void setFrameType(FrameType newFormat) Q_DECL_NOTHROW

$prototype=bool hasExtendedFrameFormat() const Q_DECL_NOTHROW

$prototype=void setExtendedFrameFormat(bool isExtended) Q_DECL_NOTHROW

$prototype=quint32 frameId() const Q_DECL_NOTHROW

$prototype=void setFrameId(quint32 newFrameId)

$prototype=void setPayload(const QByteArray &data)

$prototype=void setTimeStamp(TimeStamp ts) Q_DECL_NOTHROW

$prototype=QByteArray payload() const

$prototype=TimeStamp timeStamp() const Q_DECL_NOTHROW

$prototype=FrameErrors error() const Q_DECL_NOTHROW

$prototype=void setError(FrameErrors e)

$prototype=QString toString() const

$prototype=bool hasFlexibleDataRateFormat() const Q_DECL_NOTHROW

$prototype=void setFlexibleDataRateFormat(bool isFlexibleData) Q_DECL_NOTHROW

$prototype=bool hasBitrateSwitch() const Q_DECL_NOTHROW

$prototype=void setBitrateSwitch(bool bitrateSwitch) Q_DECL_NOTHROW

$prototype=bool hasErrorStateIndicator() const Q_DECL_NOTHROW

$prototype=void setErrorStateIndicator(bool errorStateIndicator) Q_DECL_NOTHROW

$prototype=bool hasLocalEcho() const Q_DECL_NOTHROW

$prototype=void setLocalEcho(bool localEcho) Q_DECL_NOTHROW

$extraMethods

#pragma ENDDUMP
