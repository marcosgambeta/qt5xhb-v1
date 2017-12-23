$header

#include "hbclass.ch"

CLASS QAudioOutputSelectorControl INHERIT QMediaControl

   METHOD delete
   METHOD activeOutput
   METHOD availableOutputs
   METHOD defaultOutput
   METHOD outputDescription
   METHOD setActiveOutput

   METHOD onActiveOutputChanged
   METHOD onAvailableOutputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString activeOutput() const = 0
$virtualMethod=|QString|activeOutput|

$prototype=virtual QList<QString> availableOutputs() const = 0
$virtualMethod=|QList<QString>|availableOutputs|

$prototype=virtual QString defaultOutput() const = 0
$virtualMethod=|QString|defaultOutput|

$prototype=virtual QString outputDescription(const QString & name) const = 0
$virtualMethod=|QString|outputDescription|const QString &

$prototype=virtual void setActiveOutput(const QString & name) = 0
$virtualMethod=|void|setActiveOutput|const QString &

#pragma ENDDUMP
