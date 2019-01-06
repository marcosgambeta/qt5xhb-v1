%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

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

$prototype=explicit QSoundEffect(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QSoundEffect()
$deleteMethod

%%
%% Q_PROPERTY(QUrl source READ source WRITE setSource NOTIFY sourceChanged)
%%

$prototype=QUrl source() const
$method=|QUrl|source|

$prototype=void setSource(const QUrl &url)
$method=|void|setSource|const QUrl &

%%
%% Q_PROPERTY(int loops READ loopCount WRITE setLoopCount NOTIFY loopCountChanged)
%%

$prototype=int loopCount() const
$method=|int|loopCount|

$prototype=void setLoopCount(int loopCount)
$method=|void|setLoopCount|int

%%
%% Q_PROPERTY(int loopsRemaining READ loopsRemaining NOTIFY loopsRemainingChanged)
%%

$prototype=int loopsRemaining() const
$method=|int|loopsRemaining|

%%
%% Q_PROPERTY(qreal volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototype=qreal volume() const
$method=|qreal|volume|

$prototype=void setVolume(qreal volume)
$method=|void|setVolume|qreal

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=void setMuted(bool muted)
$method=|void|setMuted|bool

%%
%% Q_PROPERTY(bool playing READ isPlaying NOTIFY playingChanged)
%%

$prototype=bool isPlaying() const
$method=|bool|isPlaying|

%%
%% Q_PROPERTY(Status status READ status NOTIFY statusChanged)
%%

$prototype=Status status() const
$method=|QSoundEffect::Status|status|

%%
%% Q_PROPERTY(QString category READ category WRITE setCategory NOTIFY categoryChanged)
%%

$prototype=QString category() const
$method=|QString|category|

$prototype=void setCategory(const QString &category)
$method=|void|setCategory|const QString &

%%
%%
%%

$prototype=bool isLoaded() const
$method=|bool|isLoaded|

$prototype=void play()
$slotMethod=|void|play|

$prototype=void stop()
$slotMethod=|void|stop|

$prototype=static QStringList supportedMimeTypes()
$staticMethod=|QStringList|supportedMimeTypes|

$beginSignals
$signal=|sourceChanged()
$signal=|loopCountChanged()
$signal=|loopsRemainingChanged()
$signal=|volumeChanged()
$signal=|mutedChanged()
$signal=|loadedChanged()
$signal=|playingChanged()
$signal=|statusChanged()
$signal=|categoryChanged()
$endSignals

#pragma ENDDUMP
