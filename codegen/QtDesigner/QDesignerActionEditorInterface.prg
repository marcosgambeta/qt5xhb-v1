$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerActionEditorInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD manageAction
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
virtual void manageAction ( QAction * action ) = 0
*/
$method=|void|manageAction|QAction *

/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
$method=|void|setFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
