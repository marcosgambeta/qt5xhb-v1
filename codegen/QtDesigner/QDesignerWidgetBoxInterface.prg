$header

#include "hbclass.ch"

CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   DATA self_destruction INIT .F.

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

/*
virtual QString fileName () const = 0
*/
$method=|QString|fileName|

/*
virtual bool load () = 0
*/
$method=|bool|load|

/*
virtual bool save () = 0
*/
$method=|bool|save|

/*
virtual void setFileName ( const QString & fileName ) = 0
*/
$method=|void|setFileName|const QString &

#pragma ENDDUMP
