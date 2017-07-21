$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERACTIONEDITORINTERFACE
REQUEST QEXTENSIONMANAGER
REQUEST QDESIGNERFORMWINDOWMANAGERINTERFACE
REQUEST QDESIGNEROBJECTINSPECTORINTERFACE
REQUEST QDESIGNERPROPERTYEDITORINTERFACE
REQUEST QWIDGET
REQUEST QDESIGNERWIDGETBOXINTERFACE
#endif

CLASS QDesignerFormEditorInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionEditor
   METHOD extensionManager
   METHOD formWindowManager
   METHOD objectInspector
   METHOD propertyEditor
   METHOD setActionEditor
   METHOD setObjectInspector
   METHOD setPropertyEditor
   METHOD setWidgetBox
   METHOD topLevel
   METHOD widgetBox

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDesignerFormEditorInterface ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QDesignerActionEditorInterface * actionEditor () const
*/
$method=|QDesignerActionEditorInterface *|actionEditor|

/*
QExtensionManager * extensionManager () const
*/
$method=|QExtensionManager *|extensionManager|

/*
QDesignerFormWindowManagerInterface * formWindowManager () const
*/
$method=|QDesignerFormWindowManagerInterface *|formWindowManager|

/*
QDesignerObjectInspectorInterface * objectInspector () const
*/
$method=|QDesignerObjectInspectorInterface *|objectInspector|

/*
QDesignerPropertyEditorInterface * propertyEditor () const
*/
$method=|QDesignerPropertyEditorInterface *|propertyEditor|

/*
void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
*/
$method=|void|setActionEditor|QDesignerActionEditorInterface *

/*
void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
*/
$method=|void|setObjectInspector|QDesignerObjectInspectorInterface *

/*
void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
*/
$method=|void|setPropertyEditor|QDesignerPropertyEditorInterface *

/*
void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
*/
$method=|void|setWidgetBox|QDesignerWidgetBoxInterface *

/*
QWidget * topLevel () const
*/
$method=|QWidget *|topLevel|

/*
QDesignerWidgetBoxInterface * widgetBox () const
*/
$method=|QDesignerWidgetBoxInterface *|widgetBox|

#pragma ENDDUMP
