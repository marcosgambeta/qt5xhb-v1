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
$method=|QRadioTuner::State|state|

$prototype=virtual QRadioTuner::Band band() const = 0
$method=|QRadioTuner::Band|band|

$prototype=virtual void setBand(QRadioTuner::Band b) = 0
$method=|void|setBand|QRadioTuner::Band

$prototype=virtual bool isBandSupported(QRadioTuner::Band b) const = 0
$method=|bool|isBandSupported|QRadioTuner::Band

$prototype=virtual int frequency() const = 0
$method=|int|frequency|

$prototype=virtual int frequencyStep(QRadioTuner::Band b) const = 0
$method=|int|frequencyStep|QRadioTuner::Band

$prototype=virtual void setFrequency(int frequency) = 0
$method=|void|setFrequency|int

$prototype=virtual bool isStereo() const = 0
$method=|bool|isStereo|

$prototype=virtual QRadioTuner::StereoMode stereoMode() const = 0
$method=|QRadioTuner::StereoMode|stereoMode|

$prototype=virtual void setStereoMode(QRadioTuner::StereoMode mode) = 0
$method=|void|setStereoMode|QRadioTuner::StereoMode

$prototype=virtual int signalStrength() const = 0
$method=|int|signalStrength|

$prototype=virtual int volume() const = 0
$method=|int|volume|

$prototype=virtual void setVolume(int volume) = 0
$method=|void|setVolume|int

$prototype=virtual bool isMuted() const = 0
$method=|bool|isMuted|

$prototype=virtual void setMuted(bool muted) = 0
$method=|void|setMuted|bool

$prototype=virtual bool isSearching() const = 0
$method=|bool|isSearching|

$prototype=virtual bool isAntennaConnected() const
$method=|bool|isAntennaConnected|

$prototype=virtual void searchForward() = 0
$method=|void|searchForward|

$prototype=virtual void searchBackward() = 0
$method=|void|searchBackward|

$prototype=virtual void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast) = 0
$method=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

$prototype=virtual void cancelSearch() = 0
$method=|void|cancelSearch|

$prototype=virtual void start() = 0
$method=|void|start|

$prototype=virtual void stop() = 0
$method=|void|stop|

$prototype=virtual QRadioTuner::Error error() const = 0
$method=|QRadioTuner::Error|error|

$prototype=virtual QString errorString() const = 0
$method=|QString|errorString|

#pragma ENDDUMP
