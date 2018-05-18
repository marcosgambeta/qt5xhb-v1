%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD valuePropertyName
   METHOD registerEditor
   METHOD defaultFactory
   METHOD setDefaultFactory

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
