%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaObject

   METHOD new
   METHOD delete

   METHOD availability
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
   METHOD radioData
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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QRadioData>

$prototype=explicit QRadioTuner(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QRadioTuner()
$deleteMethod

%%
%% Q_PROPERTY(State state READ state NOTIFY stateChanged)
%%

$prototype=State state() const
$method=|QRadioTuner::State|state|

%%
%% Q_PROPERTY(Band band READ band WRITE setBand NOTIFY bandChanged)
%%

$prototype=Band band() const
$method=|QRadioTuner::Band|band|

$prototype=void setBand(Band band)
$slotMethod=|void|setBand|QRadioTuner::Band

%%
%% Q_PROPERTY(int frequency READ frequency WRITE setFrequency NOTIFY frequencyChanged)
%%

$prototype=int frequency() const
$method=|int|frequency|

$prototype=void setFrequency(int frequency)
$slotMethod=|void|setFrequency|int

%%
%% Q_PROPERTY(bool stereo READ isStereo NOTIFY stereoStatusChanged)
%%

$prototype=bool isStereo() const
$method=|bool|isStereo|

%%
%% Q_PROPERTY(StereoMode stereoMode READ stereoMode WRITE setStereoMode)
%%

$prototype=StereoMode stereoMode() const
$method=|QRadioTuner::StereoMode|stereoMode|

$prototype=void setStereoMode(QRadioTuner::StereoMode mode)
$method=|void|setStereoMode|QRadioTuner::StereoMode

%%
%% Q_PROPERTY(int signalStrength READ signalStrength NOTIFY signalStrengthChanged)
%%

$prototype=int signalStrength() const
$method=|int|signalStrength|

%%
%% Q_PROPERTY(int volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototype=int volume() const
$method=|int|volume|

$prototype=void setVolume(int volume)
$slotMethod=|void|setVolume|int

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=void setMuted(bool muted)
$slotMethod=|void|setMuted|bool

%%
%% Q_PROPERTY(bool searching READ isSearching NOTIFY searchingChanged)
%%

$prototype=bool isSearching() const
$method=|bool|isSearching|

%%
%% Q_PROPERTY(bool antennaConnected READ isAntennaConnected NOTIFY antennaConnectedChanged)
%%

$prototype=bool isAntennaConnected() const
$method=|bool|isAntennaConnected|

%%
%% Q_PROPERTY(QRadioData *radioData READ radioData CONSTANT)
%%

$prototype=QRadioData *radioData() const
$method=|QRadioData *|radioData|

%%
%%
%%

$prototype=QMultimedia::AvailabilityStatus availability() const override
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=bool isBandSupported(Band b) const
$method=|bool|isBandSupported|QRadioTuner::Band

$prototype=int frequencyStep(Band band) const
$method=|int|frequencyStep|QRadioTuner::Band

$prototype=Error error() const
$method=|QRadioTuner::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void searchForward()
$slotMethod=|void|searchForward|

$prototype=void searchBackward()
$slotMethod=|void|searchBackward|

$prototype=void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast)
$slotMethod=|void|searchAllStations|QRadioTuner::SearchMode=QRadioTuner::SearchFast

$prototype=void cancelSearch()
$slotMethod=|void|cancelSearch|

$prototype=void start()
$slotMethod=|void|start|

$prototype=void stop()
$slotMethod=|void|stop|

$prototype=QPair<int,int> frequencyRange(Band band) const
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
$signal=|stationFound(int,QString)
$signal=|antennaConnectedChanged(bool)
$signal=|error(QRadioTuner::Error)
$endSignals

#pragma ENDDUMP
