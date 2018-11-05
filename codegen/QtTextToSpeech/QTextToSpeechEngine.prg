%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

#include <QVector>
#include <QLocale>
#include <QVoice>

$prototype=explicit QTextToSpeechEngine(QObject *parent = nullptr) (abstract)
%% $constructor=5,10,0|new|QObject *=nullptr

$prototype=~QTextToSpeechEngine()
$deleteMethod=5,10,0

$prototype=virtual QVector<QLocale> availableLocales() const = 0
$virtualMethod=5,10,0|QVector<QLocale>|availableLocales|

$prototype=virtual QVector<QVoice> availableVoices() const = 0
$virtualMethod=5,10,0|QVector<QVoice>|availableVoices|

$prototype=virtual void say(const QString &text) = 0
$virtualMethod=5,10,0|void|say|const QString &

$prototype=virtual void stop() = 0
$virtualMethod=5,10,0|void|stop|

$prototype=virtual void pause() = 0
$virtualMethod=5,10,0|void|pause|

$prototype=virtual void resume() = 0
$virtualMethod=5,10,0|void|resume|

$prototype=virtual double rate() const = 0
$virtualMethod=5,10,0|double|rate|

$prototype=virtual bool setRate(double rate) = 0
$virtualMethod=5,10,0|bool|setRate|double

$prototype=virtual double pitch() const = 0
$virtualMethod=5,10,0|double|pitch|

$prototype=virtual bool setPitch(double pitch) = 0
$virtualMethod=5,10,0|bool|setPitch|double

$prototype=virtual QLocale locale() const = 0
$virtualMethod=5,10,0|QLocale|locale|

$prototype=virtual bool setLocale(const QLocale &locale) = 0
$virtualMethod=5,10,0|bool|setLocale|const QLocale &

$prototype=virtual double volume() const = 0
$virtualMethod=5,10,0|double|volume|

$prototype=virtual bool setVolume(double volume) = 0
$virtualMethod=5,10,0|bool|setVolume|double

$prototype=virtual QVoice voice() const = 0
$virtualMethod=5,10,0|QVoice|voice|

$prototype=virtual bool setVoice(const QVoice &voice) = 0
$virtualMethod=5,10,0|bool|setVoice|const QVoice &

$prototype=virtual QTextToSpeech::State state() const = 0
$virtualMethod=5,10,0|QTextToSpeech::State|state|

$prototype=static QVoice createVoice(const QString &name, QVoice::Gender gender, QVoice::Age age, const QVariant &data) [protected]

$prototype=static QVariant voiceData(const QVoice &voice) [protected]

$beginSignals
$signal=5,10,0|stateChanged(QTextToSpeech::State)
$endSignals

#pragma ENDDUMP
