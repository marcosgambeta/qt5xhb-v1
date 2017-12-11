$header

#include "hbclass.ch"

CLASS QAudioInputSelectorControl INHERIT QMediaControl

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

$prototype=virtual QString activeInput() const = 0
$method=|QString|activeInput|

$prototype=virtual QList<QString> availableInputs() const = 0
$method=|QList<QString>|availableInputs|

$prototype=virtual QString defaultInput() const = 0
$method=|QString|defaultInput|

$prototype=virtual QString inputDescription(const QString & name) const = 0
$method=|QString|inputDescription|const QString &

$prototype=virtual void setActiveInput(const QString & name) = 0
$method=|void|setActiveInput|const QString &

#pragma ENDDUMP
