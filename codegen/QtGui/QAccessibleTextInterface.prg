%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QAccessibleTextInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD selection
   METHOD selectionCount
   METHOD addSelection
   METHOD removeSelection
   METHOD setSelection
   METHOD cursorPosition
   METHOD setCursorPosition
   METHOD text
   METHOD characterCount
   METHOD characterRect
   METHOD offsetAtPoint
   METHOD scrollToSubstring
   METHOD attributes

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void selection(int selectionIndex, int *startOffset, int *endOffset) const = 0
$virtualMethod=|void|selection|int,int *,int *

$prototype=virtual int selectionCount() const = 0
$virtualMethod=|int|selectionCount|

$prototype=virtual void addSelection(int startOffset, int endOffset) = 0
$virtualMethod=|void|addSelection|int,int

$prototype=virtual void removeSelection(int selectionIndex) = 0
$virtualMethod=|void|removeSelection|int

$prototype=virtual void setSelection(int selectionIndex, int startOffset, int endOffset) = 0
$virtualMethod=|void|setSelection|int,int,int

$prototype=virtual int cursorPosition() const = 0
$virtualMethod=|int|cursorPosition|

$prototype=virtual void setCursorPosition(int position) = 0
$virtualMethod=|void|setCursorPosition|int

$prototype=virtual QString text(int startOffset, int endOffset) const = 0
$virtualMethod=|QString|text|int,int

$prototype=virtual int characterCount() const = 0
$virtualMethod=|int|characterCount|

$prototype=virtual QRect characterRect(int offset) const = 0
$virtualMethod=|QRect|characterRect|int

$prototype=virtual int offsetAtPoint(const QPoint &point) const = 0
$virtualMethod=|int|offsetAtPoint|const QPoint &

$prototype=virtual void scrollToSubstring(int startIndex, int endIndex) = 0
$virtualMethod=|void|scrollToSubstring|int,int

$prototype=virtual QString attributes(int offset, int *startOffset, int *endOffset) const = 0
$virtualMethod=|QString|attributes|int,int *,int *

$extraMethods

#pragma ENDDUMP
