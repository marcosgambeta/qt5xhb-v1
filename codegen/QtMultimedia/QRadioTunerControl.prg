%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QRadioTunerControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD band
   METHOD cancelSearch
   METHOD error
   METHOD errorString
   METHOD frequency
   METHOD frequencyStep
   METHOD isAntennaConnected
   METHOD isBandSupported
   METHOD isMuted
   METHOD isSearching
   METHOD isStereo
   METHOD searchAllStations
   METHOD searchBackward
   METHOD searchForward
   METHOD setBand
   METHOD setFrequency
   METHOD setMuted
   METHOD setStereoMode
   METHOD setVolume
   METHOD signalStrength
   METHOD start
   METHOD state
   METHOD stereoMode
   METHOD stop
   METHOD volume

   METHOD onAntennaConnectedChanged
   METHOD onBandChanged
   METHOD onError
   METHOD onFrequencyChanged
   METHOD onMutedChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onStateChanged
   METHOD onStationFound
   METHOD onStereoStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QRadioTunerControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QRadioTunerControl()
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

$prototype=virtual QPair<int,int> frequencyRange(QRadioTuner::Band b) const = 0
%% TODO: QPair<int,int>

$beginSignals
$signal=|stateChanged(QRadioTuner::State)
$signal=|bandChanged(QRadioTuner::Band)
$signal=|frequencyChanged(int)
$signal=|stereoStatusChanged(bool)
$signal=|searchingChanged(bool)
$signal=|signalStrengthChanged(int)
$signal=|volumeChanged(int)
$signal=|mutedChanged(bool)
$signal=|error(QRadioTuner::Error)
$signal=|stationFound(int,QString)
$signal=|antennaConnectedChanged(bool)
$endSignals

#pragma ENDDUMP
