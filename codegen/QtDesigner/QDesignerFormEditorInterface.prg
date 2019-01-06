%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QExtensionManager>
#include <QDesignerFormWindowManagerInterface>
#include <QDesignerActionEditorInterface>
#include <QDesignerObjectInspectorInterface>
#include <QDesignerPropertyEditorInterface>
#include <QDesignerWidgetBoxInterface>

$prototype=QDesignerFormEditorInterface ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QDesignerActionEditorInterface * actionEditor () const
$method=|QDesignerActionEditorInterface *|actionEditor|

$prototype=QExtensionManager * extensionManager () const
$method=|QExtensionManager *|extensionManager|

$prototype=QDesignerFormWindowManagerInterface * formWindowManager () const
$method=|QDesignerFormWindowManagerInterface *|formWindowManager|

$prototype=QDesignerObjectInspectorInterface * objectInspector () const
$method=|QDesignerObjectInspectorInterface *|objectInspector|

$prototype=QDesignerPropertyEditorInterface * propertyEditor () const
$method=|QDesignerPropertyEditorInterface *|propertyEditor|

$prototype=void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
$method=|void|setActionEditor|QDesignerActionEditorInterface *

$prototype=void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
$method=|void|setObjectInspector|QDesignerObjectInspectorInterface *

$prototype=void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
$method=|void|setPropertyEditor|QDesignerPropertyEditorInterface *

$prototype=void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
$method=|void|setWidgetBox|QDesignerWidgetBoxInterface *

$prototype=QWidget * topLevel () const
$method=|QWidget *|topLevel|

$prototype=QDesignerWidgetBoxInterface * widgetBox () const
$method=|QDesignerWidgetBoxInterface *|widgetBox|

#pragma ENDDUMP
