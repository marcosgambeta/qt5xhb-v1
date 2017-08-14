$header

#include "hbclass.ch"

CLASS QRadioTunerControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual QRadioTuner::State state() const = 0
*/
$method=|QRadioTuner::State|state|

/*
virtual QRadioTuner::Band band() const = 0
*/
$method=|QRadioTuner::Band|band|

/*
virtual void setBand(QRadioTuner::Band b) = 0
*/
$method=|void|setBand|QRadioTuner::Band

/*
virtual bool isBandSupported(QRadioTuner::Band b) const = 0
*/
$method=|bool|isBandSupported|QRadioTuner::Band

/*
virtual int frequency() const = 0
*/
$method=|int|frequency|

/*
virtual int frequencyStep(QRadioTuner::Band b) const = 0
*/
$method=|int|frequencyStep|QRadioTuner::Band

/*
virtual void setFrequency(int frequency) = 0
*/
$method=|void|setFrequency|int

/*
virtual bool isStereo() const = 0
*/
$method=|bool|isStereo|

/*
virtual QRadioTuner::StereoMode stereoMode() const = 0
*/
$method=|QRadioTuner::StereoMode|stereoMode|

/*
virtual void setStereoMode(QRadioTuner::StereoMode mode) = 0
*/
$method=|void|setStereoMode|QRadioTuner::StereoMode

/*
virtual int signalStrength() const = 0
*/
$method=|int|signalStrength|

/*
virtual int volume() const = 0
*/
$method=|int|volume|

/*
virtual void setVolume(int volume) = 0
*/
$method=|void|setVolume|int

/*
virtual bool isMuted() const = 0
*/
$method=|bool|isMuted|

/*
virtual void setMuted(bool muted) = 0
*/
$method=|void|setMuted|bool

/*
virtual bool isSearching() const = 0
*/
$method=|bool|isSearching|

/*
virtual bool isAntennaConnected() const
*/
$method=|bool|isAntennaConnected|

/*
virtual void searchForward() = 0
*/
$method=|void|searchForward|

/*
virtual void searchBackward() = 0
*/
$method=|void|searchBackward|

/*
virtual void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast) = 0
*/
$method=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

/*
virtual void cancelSearch() = 0
*/
$method=|void|cancelSearch|

/*
virtual void start() = 0
*/
$method=|void|start|

/*
virtual void stop() = 0
*/
$method=|void|stop|

/*
virtual QRadioTuner::Error error() const = 0
*/
$method=|QRadioTuner::Error|error|

/*
virtual QString errorString() const = 0
*/
$method=|QString|errorString|

#pragma ENDDUMP
