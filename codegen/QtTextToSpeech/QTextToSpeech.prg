$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVOICE
#endif

CLASS QTextToSpeech INHERIT QObject

   METHOD new
%%   METHOD delete
   METHOD state
   METHOD availableLocales
   METHOD locale
   METHOD voice
   METHOD availableVoices
   METHOD rate
   METHOD pitch
   METHOD volume
   METHOD availableEngines
   METHOD say
   METHOD stop
   METHOD pause
   METHOD resume
   METHOD setLocale
   METHOD setRate
   METHOD setPitch
   METHOD setVolume
   METHOD setVoice

%%    METHOD onStateChanged
%%    METHOD onLocaleChanged
%%    METHOD onRateChanged
%%    METHOD onPitchChanged
%%    METHOD onVolumeChanged
%%    METHOD onVoiceChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTextToSpeech(QObject *parent = nullptr)
$internalConstructor=5,10,0|new1|QObject *=nullptr

$prototype=explicit QTextToSpeech(const QString &engine, QObject *parent = nullptr)
$internalConstructor=5,10,0|new2|const QString &,QObject *=nullptr

//[1]explicit QTextToSpeech(QObject *parent = nullptr)
//[2]explicit QTextToSpeech(const QString &engine, QObject *parent = nullptr)

HB_FUNC_STATIC( QTEXTTOSPEECH_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QTextToSpeech_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QTextToSpeech_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

%% Q_PROPERTY(State state READ state NOTIFY stateChanged)

$prototype=State state() const
$method=5,10,0|QTextToSpeech::State|state|

$prototype=QVector<QLocale> availableLocales() const
$method=5,10,0|QVector<QLocale>|availableLocales|

%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale NOTIFY localeChanged)

$prototype=QLocale locale() const
$method=5,10,0|QLocale|locale|

$prototype=void setLocale(const QLocale &locale)
$slotMethod=5,10,0|void|setLocale|const QLocale &

%% Q_PROPERTY(QVoice voice READ voice WRITE setVoice NOTIFY voiceChanged)

$prototype=QVoice voice() const
$method=5,10,0|QVoice|voice|

$prototype=void setVoice(const QVoice &voice)
$slotMethod=5,10,0|void|setVoice|const QVoice &

$prototype=QVector<QVoice> availableVoices() const
$method=5,10,0|QVector<QVoice>|availableVoices|

%% Q_PROPERTY(double rate READ rate WRITE setRate NOTIFY rateChanged)

$prototype=double rate() const
$method=5,10,0|double|rate|

$prototype=void setRate(double rate)
$slotMethod=5,10,0|void|setRate|double

%% Q_PROPERTY(double pitch READ pitch WRITE setPitch NOTIFY pitchChanged)

$prototype=double pitch() const
$method=5,10,0|double|pitch|

$prototype=void setPitch(double pitch)
$slotMethod=5,10,0|void|setPitch|double

%% Q_PROPERTY(int volume READ volume WRITE setVolume NOTIFY volumeChanged)

$prototype=double volume() const
$method=5,10,0|double|volume|

$prototype=void setVolume(double volume)
$slotMethod=5,10,0|void|setVolume|double

$prototype=static QStringList availableEngines()
$staticMethod=5,10,0|QStringList|availableEngines|

$prototype=void say(const QString &text)
$slotMethod=5,10,0|void|say|const QString &

$prototype=void stop()
$slotMethod=5,10,0|void|stop|

$prototype=void pause()
$slotMethod=5,10,0|void|pause|

$prototype=void resume()
$slotMethod=5,10,0|void|resume|

#pragma ENDDUMP

%% Q_SIGNALS:
%% void stateChanged(QTextToSpeech::State state)
%% void localeChanged(const QLocale &locale)
%% void rateChanged(double rate)
%% void pitchChanged(double pitch)
%% void volumeChanged(int volume)
%% void voiceChanged(const QVoice &voice)
