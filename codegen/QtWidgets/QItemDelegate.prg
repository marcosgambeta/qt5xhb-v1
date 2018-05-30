%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD hasClipping
   METHOD itemEditorFactory
   METHOD setClipping
   METHOD setItemEditorFactory

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemDelegate ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool hasClipping () const
$method=|bool|hasClipping|

$prototype=QItemEditorFactory * itemEditorFactory () const
$method=|QItemEditorFactory *|itemEditorFactory|

$prototype=void setClipping ( bool clip )
$method=|void|setClipping|bool

$prototype=void setItemEditorFactory ( QItemEditorFactory * factory )
$method=|void|setItemEditorFactory|QItemEditorFactory *

#pragma ENDDUMP
