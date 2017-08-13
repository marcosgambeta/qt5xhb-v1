$header

#include "hbclass.ch"

CLASS QAudioInputSelectorControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activeInput
   METHOD availableInputs
   METHOD defaultInput
   METHOD inputDescription
   METHOD setActiveInput

   METHOD onActiveInputChanged
   METHOD onAvailableInputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QString activeInput() const = 0
*/
$method=|QString|activeInput|

/*
virtual QList<QString> availableInputs() const = 0
*/
$method=|QList<QString>|availableInputs|

/*
virtual QString defaultInput() const = 0
*/
$method=|QString|defaultInput|

/*
virtual QString inputDescription(const QString & name) const = 0
*/
$method=|QString|inputDescription|const QString &

/*
virtual void setActiveInput(const QString & name) = 0
*/
$method=|void|setActiveInput|const QString &

#pragma ENDDUMP
