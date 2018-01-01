%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRADIODATA
#endif

CLASS QRadioTuner INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD availability
   METHOD state
   METHOD band
   METHOD isBandSupported
   METHOD frequency
   METHOD frequencyStep
   METHOD isStereo
   METHOD setStereoMode
   METHOD stereoMode
   METHOD signalStrength
   METHOD volume
   METHOD isMuted
   METHOD isSearching
   METHOD isAntennaConnected
   METHOD error
   METHOD errorString
   METHOD radioData
   METHOD searchForward
   METHOD searchBackward
   METHOD searchAllStations
   METHOD cancelSearch
   METHOD setBand
   METHOD setFrequency
   METHOD setVolume
   METHOD setMuted
   METHOD start
   METHOD stop

   METHOD onStateChanged
   METHOD onBandChanged
   METHOD onFrequencyChanged
   METHOD onStereoStatusChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onStationFound
   METHOD onAntennaConnectedChanged
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRadioTuner(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QMultimedia::AvailabilityStatus availability() const
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=State state() const
$method=|QRadioTuner::State|state|

$prototype=Band band() const
$method=|QRadioTuner::Band|band|

$prototype=bool isBandSupported(Band b) const
$method=|bool|isBandSupported|QRadioTuner::Band

$prototype=int frequency() const
$method=|int|frequency|

$prototype=int frequencyStep(Band band) const
$method=|int|frequencyStep|QRadioTuner::Band

$prototype=bool isStereo() const
$method=|bool|isStereo|

$prototype=void setStereoMode(QRadioTuner::StereoMode mode)
$method=|void|setStereoMode|QRadioTuner::StereoMode

$prototype=StereoMode stereoMode() const
$method=|QRadioTuner::StereoMode|stereoMode|

$prototype=int signalStrength() const
$method=|int|signalStrength|

$prototype=int volume() const
$method=|int|volume|

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=bool isSearching() const
$method=|bool|isSearching|

$prototype=bool isAntennaConnected() const
$method=|bool|isAntennaConnected|

$prototype=Error error() const
$method=|QRadioTuner::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QRadioData *radioData() const
$method=|QRadioData *|radioData|

$prototype=void searchForward()
$method=|void|searchForward|

$prototype=void searchBackward()
$method=|void|searchBackward|

$prototype=void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast)
$method=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

$prototype=void cancelSearch()
$method=|void|cancelSearch|

$prototype=void setBand(Band band)
$method=|void|setBand|QRadioTuner::Band

$prototype=void setFrequency(int frequency)
$method=|void|setFrequency|int

$prototype=void setVolume(int volume)
$method=|void|setVolume|int

$prototype=void setMuted(bool muted)
$method=|void|setMuted|bool

$prototype=void start()
$method=|void|start|

$prototype=void stop()
$method=|void|stop|

#pragma ENDDUMP
