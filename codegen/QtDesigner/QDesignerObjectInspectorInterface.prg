$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerObjectInspectorInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QDesignerFormEditorInterface * core () const
*/
$method=|QDesignerFormEditorInterface *|core|

/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
$method=|void|setFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
