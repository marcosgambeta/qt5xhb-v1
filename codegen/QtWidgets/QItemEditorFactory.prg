%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemEditorFactory()
$constructor=|new|

$deleteMethod

$prototype=virtual QWidget *createEditor(int userType, QWidget *parent) const
$virtualMethod=|QWidget *|createEditor|int,QWidget *

$prototype=virtual QByteArray valuePropertyName(int userType) const
$virtualMethod=|QByteArray|valuePropertyName|int

$prototype=void registerEditor(int userType, QItemEditorCreatorBase *creator)
$method=|void|registerEditor|int,QItemEditorCreatorBase *

$prototype=static const QItemEditorFactory *defaultFactory()
$staticMethod=|const QItemEditorFactory *|defaultFactory|

$prototype=static void setDefaultFactory(QItemEditorFactory *factory)
$staticMethod=|void|setDefaultFactory|QItemEditorFactory *

$extraMethods

#pragma ENDDUMP
