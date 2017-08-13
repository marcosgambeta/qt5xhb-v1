$header

#include "hbclass.ch"

CLASS QAudioOutputSelectorControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual QString activeOutput() const = 0
*/
$method=|QString|activeOutput|

/*
virtual QList<QString> availableOutputs() const = 0
*/
$method=|QList<QString>|availableOutputs|

/*
virtual QString defaultOutput() const = 0
*/
$method=|QString|defaultOutput|

/*
virtual QString outputDescription(const QString & name) const = 0
*/
$method=|QString|outputDescription|const QString &

/*
virtual void setActiveOutput(const QString & name) = 0
*/
$method=|void|setActiveOutput|const QString &

#pragma ENDDUMP
