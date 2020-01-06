%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString codeTemplate () const
$virtualMethod=|QString|codeTemplate|

$prototype=virtual QWidget * createWidget ( QWidget * parent ) = 0
$virtualMethod=|QWidget *|createWidget|QWidget *

$prototype=virtual QString domXml () const
$virtualMethod=|QString|domXml|

$prototype=virtual QString group () const = 0
$virtualMethod=|QString|group|

$prototype=virtual QIcon icon () const = 0
$virtualMethod=|QIcon|icon|

$prototype=virtual QString includeFile () const = 0
$virtualMethod=|QString|includeFile|

$prototype=virtual void initialize ( QDesignerFormEditorInterface * formEditor )
$virtualMethod=|void|initialize|QDesignerFormEditorInterface *

$prototype=virtual bool isContainer () const = 0
$virtualMethod=|bool|isContainer|

$prototype=virtual bool isInitialized () const
$virtualMethod=|bool|isInitialized|

$prototype=virtual QString name () const = 0
$virtualMethod=|QString|name|

$prototype=virtual QString toolTip () const = 0
$virtualMethod=|QString|toolTip|

$prototype=virtual QString whatsThis () const = 0
$virtualMethod=|QString|whatsThis|

$extraMethods

#pragma ENDDUMP
