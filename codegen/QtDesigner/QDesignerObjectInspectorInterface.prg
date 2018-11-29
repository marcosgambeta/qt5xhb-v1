%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDesignerFormEditorInterface>

$deleteMethod

$prototype=virtual QDesignerFormEditorInterface * core () const
$virtualMethod=|QDesignerFormEditorInterface *|core|

$prototype=virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
$virtualMethod=|void|setFormWindow|QDesignerFormWindowInterface *

#pragma ENDDUMP
