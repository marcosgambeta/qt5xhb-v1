$header

#include "hbclass.ch"

CLASS QAudioRecorder INHERIT QMediaRecorder

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD audioInput
   METHOD audioInputDescription
   METHOD audioInputs
   METHOD defaultAudioInput
   METHOD setAudioInput

   METHOD onAudioInputChanged
   METHOD onAvailableAudioInputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAudioRecorder(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QString audioInput() const
*/
$method=|QString|audioInput|

/*
QString audioInputDescription(const QString & name) const
*/
$method=|QString|audioInputDescription|const QString &

/*
QStringList audioInputs() const
*/
$method=|QStringList|audioInputs|

/*
QString defaultAudioInput() const
*/
$method=|QString|defaultAudioInput|

/*
void setAudioInput(const QString & name)
*/
$method=|void|setAudioInput|const QString &

#pragma ENDDUMP
