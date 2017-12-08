$header

#include "hbclass.ch"

CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString fileName () const = 0
$method=|QString|fileName|

$prototype=virtual bool load () = 0
$method=|bool|load|

$prototype=virtual bool save () = 0
$method=|bool|save|

$prototype=virtual void setFileName ( const QString & fileName ) = 0
$method=|void|setFileName|const QString &

#pragma ENDDUMP
