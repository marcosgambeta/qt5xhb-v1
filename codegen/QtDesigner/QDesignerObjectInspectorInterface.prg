%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerObjectInspectorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QDesignerFormEditorInterface * core () const
$virtualMethod=|QDesignerFormEditorInterface *|core|

$prototype=virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
$virtualMethod=|void|setFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
