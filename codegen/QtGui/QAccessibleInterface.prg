%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QWindow>

$prototype=virtual bool isValid() const = 0
$virtualMethod=|bool|isValid|

$prototype=virtual QObject *object() const = 0
$virtualMethod=|QObject *|object|

$prototype=virtual QWindow *window() const
$virtualMethod=|QWindow *|window|

$prototype=virtual QAccessibleInterface *focusChild() const
$virtualMethod=|QAccessibleInterface *|focusChild|

$prototype=virtual QAccessibleInterface *childAt(int x, int y) const = 0
$virtualMethod=|QAccessibleInterface *|childAt|int,int

$prototype=virtual QAccessibleInterface *parent() const = 0
$virtualMethod=|QAccessibleInterface *|parent|

$prototype=virtual QAccessibleInterface *child(int index) const = 0
$virtualMethod=|QAccessibleInterface *|child|int

$prototype=virtual int childCount() const = 0
$virtualMethod=|int|childCount|

$prototype=virtual int indexOfChild(const QAccessibleInterface *) const = 0
$virtualMethod=|int|indexOfChild|const QAccessibleInterface *

$prototype=virtual QString text(QAccessible::Text t) const = 0
$virtualMethod=|QString|text|QAccessible::Text

$prototype=virtual void setText(QAccessible::Text t, const QString &text) = 0
$virtualMethod=|void|setText|QAccessible::Text,const QString &

$prototype=virtual QRect rect() const = 0
$virtualMethod=|QRect|rect|

$prototype=virtual QAccessible::Role role() const = 0
$virtualMethod=|QAccessible::Role|role|

$prototype=virtual QColor foregroundColor() const
$virtualMethod=|QColor|foregroundColor|

$prototype=virtual QColor backgroundColor() const
$virtualMethod=|QColor|backgroundColor|

$prototype=QAccessibleTextInterface *textInterface()
$method=|QAccessibleTextInterface *|textInterface|

$prototype=QAccessibleEditableTextInterface *editableTextInterface()
$method=|QAccessibleEditableTextInterface *|editableTextInterface|

$prototype=QAccessibleValueInterface *valueInterface()
$method=|QAccessibleValueInterface *|valueInterface|

$prototype=QAccessibleActionInterface *actionInterface()
$method=|QAccessibleActionInterface *|actionInterface|

$prototype=QAccessibleImageInterface *imageInterface()
$method=|QAccessibleImageInterface *|imageInterface|

$prototype=QAccessibleTableInterface *tableInterface()
$method=|QAccessibleTableInterface *|tableInterface|

$prototype=QAccessibleTableCellInterface *tableCellInterface()
$method=|QAccessibleTableCellInterface *|tableCellInterface|

$prototype=void virtual_hook(int id, void *data)
$method=|void|virtual_hook|int,void *

$prototype=virtual void *interface_cast(QAccessible::InterfaceType)
$virtualMethod=|void *|interface_cast|QAccessible::InterfaceType

$extraMethods

#pragma ENDDUMP
