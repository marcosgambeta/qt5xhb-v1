$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRADIODATA
#endif

CLASS QRadioTuner INHERIT QMediaObject

   DATA self_destruction INIT .F.

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

/*
QRadioTuner(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QMultimedia::AvailabilityStatus availability() const
*/
$method=|QMultimedia::AvailabilityStatus|availability|

/*
State state() const
*/
$method=|QRadioTuner::State|state|

/*
Band band() const
*/
$method=|QRadioTuner::Band|band|

/*
bool isBandSupported(Band b) const
*/
$method=|bool|isBandSupported|QRadioTuner::Band

/*
int frequency() const
*/
$method=|int|frequency|

/*
int frequencyStep(Band band) const
*/
$method=|int|frequencyStep|QRadioTuner::Band

/*
bool isStereo() const
*/
$method=|bool|isStereo|

/*
void setStereoMode(QRadioTuner::StereoMode mode)
*/
$method=|void|setStereoMode|QRadioTuner::StereoMode

/*
StereoMode stereoMode() const
*/
$method=|QRadioTuner::StereoMode|stereoMode|

/*
int signalStrength() const
*/
$method=|int|signalStrength|

/*
int volume() const
*/
$method=|int|volume|

/*
bool isMuted() const
*/
$method=|bool|isMuted|

/*
bool isSearching() const
*/
$method=|bool|isSearching|

/*
bool isAntennaConnected() const
*/
$method=|bool|isAntennaConnected|

/*
Error error() const
*/
$method=|QRadioTuner::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
QRadioData *radioData() const
*/
$method=|QRadioData *|radioData|

/*
void searchForward()
*/
$method=|void|searchForward|

/*
void searchBackward()
*/
$method=|void|searchBackward|

/*
void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast)
*/
$method=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

/*
void cancelSearch()
*/
$method=|void|cancelSearch|

/*
void setBand(Band band)
*/
$method=|void|setBand|QRadioTuner::Band

/*
void setFrequency(int frequency)
*/
$method=|void|setFrequency|int

/*
void setVolume(int volume)
*/
$method=|void|setVolume|int

/*
void setMuted(bool muted)
*/
$method=|void|setMuted|bool

/*
void start()
*/
$method=|void|start|

/*
void stop()
*/
$method=|void|stop|

#pragma ENDDUMP
