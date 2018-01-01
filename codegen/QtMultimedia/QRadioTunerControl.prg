%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QRadioTunerControl INHERIT QMediaControl

   METHOD delete
   METHOD state
   METHOD band
   METHOD setBand
   METHOD isBandSupported
   METHOD frequency
   METHOD frequencyStep
   METHOD setFrequency
   METHOD isStereo
   METHOD stereoMode
   METHOD setStereoMode
   METHOD signalStrength
   METHOD volume
   METHOD setVolume
   METHOD isMuted
   METHOD setMuted
   METHOD isSearching
   METHOD isAntennaConnected
   METHOD searchForward
   METHOD searchBackward
   METHOD searchAllStations
   METHOD cancelSearch
   METHOD start
   METHOD stop
   METHOD error
   METHOD errorString

   METHOD onStateChanged
   METHOD onBandChanged
   METHOD onFrequencyChanged
   METHOD onStereoStatusChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onError
   METHOD onStationFound
   METHOD onAntennaConnectedChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QRadioTuner::State state() const = 0
$virtualMethod=|QRadioTuner::State|state|

$prototype=virtual QRadioTuner::Band band() const = 0
$virtualMethod=|QRadioTuner::Band|band|

$prototype=virtual void setBand(QRadioTuner::Band b) = 0
$virtualMethod=|void|setBand|QRadioTuner::Band

$prototype=virtual bool isBandSupported(QRadioTuner::Band b) const = 0
$virtualMethod=|bool|isBandSupported|QRadioTuner::Band

$prototype=virtual int frequency() const = 0
$virtualMethod=|int|frequency|

$prototype=virtual int frequencyStep(QRadioTuner::Band b) const = 0
$virtualMethod=|int|frequencyStep|QRadioTuner::Band

$prototype=virtual void setFrequency(int frequency) = 0
$virtualMethod=|void|setFrequency|int

$prototype=virtual bool isStereo() const = 0
$virtualMethod=|bool|isStereo|

$prototype=virtual QRadioTuner::StereoMode stereoMode() const = 0
$virtualMethod=|QRadioTuner::StereoMode|stereoMode|

$prototype=virtual void setStereoMode(QRadioTuner::StereoMode mode) = 0
$virtualMethod=|void|setStereoMode|QRadioTuner::StereoMode

$prototype=virtual int signalStrength() const = 0
$virtualMethod=|int|signalStrength|

$prototype=virtual int volume() const = 0
$virtualMethod=|int|volume|

$prototype=virtual void setVolume(int volume) = 0
$virtualMethod=|void|setVolume|int

$prototype=virtual bool isMuted() const = 0
$virtualMethod=|bool|isMuted|

$prototype=virtual void setMuted(bool muted) = 0
$virtualMethod=|void|setMuted|bool

$prototype=virtual bool isSearching() const = 0
$virtualMethod=|bool|isSearching|

$prototype=virtual bool isAntennaConnected() const
$virtualMethod=|bool|isAntennaConnected|

$prototype=virtual void searchForward() = 0
$virtualMethod=|void|searchForward|

$prototype=virtual void searchBackward() = 0
$virtualMethod=|void|searchBackward|

$prototype=virtual void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast) = 0
$virtualMethod=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

$prototype=virtual void cancelSearch() = 0
$virtualMethod=|void|cancelSearch|

$prototype=virtual void start() = 0
$virtualMethod=|void|start|

$prototype=virtual void stop() = 0
$virtualMethod=|void|stop|

$prototype=virtual QRadioTuner::Error error() const = 0
$virtualMethod=|QRadioTuner::Error|error|

$prototype=virtual QString errorString() const = 0
$virtualMethod=|QString|errorString|

#pragma ENDDUMP
