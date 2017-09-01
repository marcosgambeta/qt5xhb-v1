$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QRANGELIST
REQUEST QOUTPUTRANGELIST
REQUEST QSENSORFILTER
REQUEST QSENSORREADING
#endif

CLASS QSensor INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD type
   METHOD connectToBackend
   METHOD isConnectedToBackend
   METHOD isBusy
   METHOD setActive
   METHOD isActive
   METHOD isAlwaysOn
   METHOD setAlwaysOn
   METHOD skipDuplicates
   METHOD setSkipDuplicates
   METHOD availableDataRates
   METHOD dataRate
   METHOD setDataRate
   METHOD outputRanges
   METHOD outputRange
   METHOD setOutputRange
   METHOD description
   METHOD error
   METHOD addFilter
   METHOD removeFilter
   METHOD filters
   METHOD reading
   METHOD isFeatureSupported
   METHOD axesOrientationMode
   METHOD setAxesOrientationMode
   METHOD currentOrientation
   METHOD setCurrentOrientation
   METHOD userOrientation
   METHOD setUserOrientation
   METHOD maxBufferSize
   METHOD setMaxBufferSize
   METHOD efficientBufferSize
   METHOD setEfficientBufferSize
   METHOD bufferSize
   METHOD setBufferSize
   METHOD start
   METHOD stop
   METHOD sensorTypes
   METHOD sensorsForType
   METHOD defaultSensorForType

   METHOD onBusyChanged
   METHOD onActiveChanged
   METHOD onReadingChanged
   METHOD onSensorError
   METHOD onAvailableSensorsChanged
   METHOD onAlwaysOnChanged
   METHOD onDataRateChanged
   METHOD onSkipDuplicatesChanged
   METHOD onAxesOrientationModeChanged
   METHOD onCurrentOrientationChanged
   METHOD onUserOrientationChanged
   METHOD onMaxBufferSizeChanged
   METHOD onEfficientBufferSizeChanged
   METHOD onBufferSizeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QSensor(const QByteArray &type, QObject *parent = 0)
*/
$constructor=5,1,0|new|const QByteArray &,QObject *=0

$deleteMethod=5,1,0

/*
QByteArray identifier() const
*/
$method=5,1,0|QByteArray|identifier|

/*
void setIdentifier(const QByteArray &identifier)
*/
$method=5,1,0|void|setIdentifier|const QByteArray &

/*
QByteArray type() const
*/
$method=5,1,0|QByteArray|type|

/*
bool connectToBackend()
*/
$method=5,1,0|bool|connectToBackend|

/*
bool isConnectedToBackend() const
*/
$method=5,1,0|bool|isConnectedToBackend|

/*
bool isBusy() const
*/
$method=5,1,0|bool|isBusy|

/*
void setActive(bool active)
*/
$method=5,1,0|void|setActive|bool

/*
bool isActive() const
*/
$method=5,1,0|bool|isActive|

/*
bool isAlwaysOn() const
*/
$method=5,1,0|bool|isAlwaysOn|

/*
void setAlwaysOn(bool alwaysOn)
*/
$method=5,1,0|void|setAlwaysOn|bool

/*
bool skipDuplicates() const
*/
$method=5,1,0|bool|skipDuplicates|

/*
void setSkipDuplicates(bool skipDuplicates)
*/
$method=5,1,0|void|setSkipDuplicates|bool

/*
qrangelist availableDataRates() const
*/
$method=5,1,0|qrangelist|availableDataRates|

/*
int dataRate() const
*/
$method=5,1,0|int|dataRate|

/*
void setDataRate(int rate)
*/
$method=5,1,0|void|setDataRate|int

/*
qoutputrangelist outputRanges() const
*/
$method=5,1,0|qoutputrangelist|outputRanges|

/*
int outputRange() const
*/
$method=5,1,0|int|outputRange|

/*
void setOutputRange(int index)
*/
$method=5,1,0|void|setOutputRange|int

/*
QString description() const
*/
$method=5,1,0|QString|description|

/*
int error() const
*/
$method=5,1,0|int|error|

/*
void addFilter(QSensorFilter *filter)
*/
$method=5,1,0|void|addFilter|QSensorFilter *

/*
void removeFilter(QSensorFilter *filter)
*/
$method=5,1,0|void|removeFilter|QSensorFilter *

/*
QList<QSensorFilter*> filters() const
*/
$method=5,1,0|QList<QSensorFilter *>|filters|

/*
QSensorReading *reading() const
*/
$method=5,1,0|QSensorReading *|reading|

/*
bool isFeatureSupported(Feature feature) const
*/
$method=5,1,0|bool|isFeatureSupported|QSensor::Feature

/*
AxesOrientationMode axesOrientationMode() const
*/
$method=5,1,0|AxesOrientationMode|axesOrientationMode|

/*
void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
*/
$method=5,1,0|void|setAxesOrientationMode|QSensor::AxesOrientationMode

/*
int currentOrientation() const
*/
$method=5,1,0|int|currentOrientation|

/*
void setCurrentOrientation(int currentOrientation)
*/
$method=5,1,0|void|setCurrentOrientation|int

/*
int userOrientation() const
*/
$method=5,1,0|int|userOrientation|

/*
void setUserOrientation(int userOrientation)
*/
$method=5,1,0|void|setUserOrientation|int

/*
int maxBufferSize() const
*/
$method=5,1,0|int|maxBufferSize|

/*
void setMaxBufferSize(int maxBufferSize)
*/
$method=5,1,0|void|setMaxBufferSize|int

/*
int efficientBufferSize() const
*/
$method=5,1,0|int|efficientBufferSize|

/*
void setEfficientBufferSize(int efficientBufferSize)
*/
$method=5,1,0|void|setEfficientBufferSize|int

/*
int bufferSize() const
*/
$method=5,1,0|int|bufferSize|

/*
void setBufferSize(int bufferSize)
*/
$method=5,1,0|void|setBufferSize|int

/*
bool start()
*/
$method=5,1,0|bool|start|

/*
void stop()
*/
$method=5,1,0|void|stop|

/*
static QList<QByteArray> sensorTypes()
*/
$staticMethod=|QList<QByteArray>|sensorTypes|

/*
static QList<QByteArray> sensorsForType(const QByteArray &type)
*/
$staticMethod=|QList<QByteArray>|sensorsForType|const QByteArray &

/*
static QByteArray defaultSensorForType(const QByteArray &type)
*/
$staticMethod=5,1,0|QByteArray|defaultSensorForType|const QByteArray &

#pragma ENDDUMP
