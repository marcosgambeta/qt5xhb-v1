$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QWINDOW
REQUEST QRECT
REQUEST QCOLOR
REQUEST QACCESSIBLETEXTINTERFACE
REQUEST QACCESSIBLEEDITABLETEXTINTERFACE
REQUEST QACCESSIBLEVALUEINTERFACE
REQUEST QACCESSIBLEACTIONINTERFACE
REQUEST QACCESSIBLEIMAGEINTERFACE
REQUEST QACCESSIBLETABLEINTERFACE
REQUEST QACCESSIBLETABLECELLINTERFACE
#endif

CLASS QAccessibleInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD isValid
   METHOD object
   METHOD window
   METHOD focusChild
   METHOD childAt
   METHOD parent
   METHOD child
   METHOD childCount
   METHOD indexOfChild
   METHOD text
   METHOD setText
   METHOD rect
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD textInterface
   METHOD editableTextInterface
   METHOD valueInterface
   METHOD actionInterface
   METHOD imageInterface
   METHOD tableInterface
   METHOD tableCellInterface
   METHOD virtual_hook
   METHOD interface_cast

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

$prototype=virtual bool isValid() const = 0
$method=|bool|isValid|

$prototype=virtual QObject *object() const = 0
$method=|QObject *|object|

$prototype=virtual QWindow *window() const
$method=|QWindow *|window|

$prototype=virtual QAccessibleInterface *focusChild() const
$method=|QAccessibleInterface *|focusChild|

$prototype=virtual QAccessibleInterface *childAt(int x, int y) const = 0
$method=|QAccessibleInterface *|childAt|int,int

$prototype=virtual QAccessibleInterface *parent() const = 0
$method=|QAccessibleInterface *|parent|

$prototype=virtual QAccessibleInterface *child(int index) const = 0
$method=|QAccessibleInterface *|child|int

$prototype=virtual int childCount() const = 0
$method=|int|childCount|

$prototype=virtual int indexOfChild(const QAccessibleInterface *) const = 0
$method=|int|indexOfChild|const QAccessibleInterface *

$prototype=virtual QString text(QAccessible::Text t) const = 0
$method=|QString|text|QAccessible::Text

$prototype=virtual void setText(QAccessible::Text t, const QString &text) = 0
$method=|void|setText|QAccessible::Text,const QString &

$prototype=virtual QRect rect() const = 0
$method=|QRect|rect|

$prototype=virtual QAccessible::Role role() const = 0
$method=|QAccessible::Role|role|

$prototype=virtual QColor foregroundColor() const
$method=|QColor|foregroundColor|

$prototype=virtual QColor backgroundColor() const
$method=|QColor|backgroundColor|

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
$method=|void *|interface_cast|QAccessible::InterfaceType

$extraMethods

#pragma ENDDUMP
