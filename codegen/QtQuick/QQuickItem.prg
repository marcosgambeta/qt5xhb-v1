$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QCURSOR
REQUEST QVARIANT
REQUEST QPOINTF
REQUEST QSGTEXTUREPROVIDER
REQUEST QQUICKWINDOW
#endif

CLASS QQuickItem INHERIT QObject,QQmlParserStatus

   METHOD new
   METHOD delete
   METHOD acceptHoverEvents
   METHOD acceptedMouseButtons
   METHOD antialiasing
   METHOD baselineOffset
   METHOD childAt
   METHOD childrenRect
   METHOD clip
   METHOD contains
   METHOD cursor
   METHOD filtersChildMouseEvents
   METHOD flags
   METHOD forceActiveFocus
   METHOD grabMouse
   METHOD hasActiveFocus
   METHOD hasFocus
   METHOD height
   METHOD implicitHeight
   METHOD implicitWidth
   METHOD inputMethodQuery
   METHOD isEnabled
   METHOD isFocusScope
   METHOD isTextureProvider
   METHOD isVisible
   METHOD keepMouseGrab
   METHOD keepTouchGrab
   METHOD mapFromItem
   METHOD mapFromScene
   METHOD mapRectFromItem
   METHOD mapRectFromScene
   METHOD mapRectToItem
   METHOD mapRectToScene
   METHOD mapToItem
   METHOD mapToScene
   METHOD opacity
   METHOD parentItem
   METHOD polish
   METHOD resetHeight
   METHOD resetWidth
   METHOD rotation
   METHOD scale
   METHOD scopedFocusItem
   METHOD setAcceptHoverEvents
   METHOD setAcceptedMouseButtons
   METHOD setAntialiasing
   METHOD setBaselineOffset
   METHOD setClip
   METHOD setCursor
   METHOD setEnabled
   METHOD setFiltersChildMouseEvents
   METHOD setFlag
   METHOD setFlags
   METHOD setFocus
   METHOD setHeight
   METHOD setImplicitHeight
   METHOD setImplicitWidth
   METHOD setKeepMouseGrab
   METHOD setKeepTouchGrab
   METHOD setOpacity
   METHOD setParentItem
   METHOD setRotation
   METHOD setScale
   METHOD setSmooth
   METHOD setState
   METHOD setTransformOrigin
   METHOD setVisible
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD smooth
   METHOD stackAfter
   METHOD stackBefore
   METHOD state
   METHOD textureProvider
   METHOD transformOrigin
   METHOD ungrabMouse
   METHOD ungrabTouchPoints
   METHOD unsetCursor
   METHOD width
   METHOD window
   METHOD x
   METHOD y
   METHOD z
   METHOD update

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QCursor>

/*
QQuickItem(QQuickItem * parent = 0)
*/
$constructor=|new|QQuickItem *=0

$deleteMethod

/*
bool acceptHoverEvents() const
*/
$method=|bool|acceptHoverEvents|

/*
Qt::MouseButtons acceptedMouseButtons() const
*/
$method=|Qt::MouseButtons|acceptedMouseButtons|

/*
bool antialiasing() const
*/
$method=|bool|antialiasing|

/*
qreal baselineOffset() const
*/
$method=|qreal|baselineOffset|

/*
QQuickItem * childAt(qreal x, qreal y) const
*/
$method=|QQuickItem *|childAt|qreal,qreal

/*
QRectF childrenRect()
*/
$method=|QRectF|childrenRect|

/*
bool clip() const
*/
$method=|bool|clip|

/*
virtual bool contains(const QPointF & point) const
*/
$virtualMethod=|bool|contains|const QPointF &

/*
QCursor cursor() const
*/
$method=|QCursor|cursor|

/*
bool filtersChildMouseEvents() const
*/
$method=|bool|filtersChildMouseEvents|

/*
Flags flags() const
*/
$method=|QQuickItem::Flags|flags|

/*
void forceActiveFocus()
*/
$method=|void|forceActiveFocus|

/*
void grabMouse()
*/
$method=|void|grabMouse|

/*
bool hasActiveFocus() const
*/
$method=|bool|hasActiveFocus|

/*
bool hasFocus() const
*/
$method=|bool|hasFocus|

/*
qreal height() const
*/
$method=|qreal|height|

/*
qreal implicitHeight() const
*/
$method=|qreal|implicitHeight|

/*
qreal implicitWidth() const
*/
$method=|qreal|implicitWidth|

/*
virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
*/
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
bool isEnabled() const
*/
$method=|bool|isEnabled|

/*
bool isFocusScope() const
*/
$method=|bool|isFocusScope|

/*
virtual bool isTextureProvider() const
*/
$virtualMethod=|bool|isTextureProvider|

/*
bool isVisible() const
*/
$method=|bool|isVisible|

/*
bool keepMouseGrab() const
*/
$method=|bool|keepMouseGrab|

/*
bool keepTouchGrab() const
*/
$method=|bool|keepTouchGrab|

/*
QPointF mapFromItem(const QQuickItem * item, const QPointF & point) const
*/
$method=|QPointF|mapFromItem|const QQuickItem *,const QPointF &

/*
QPointF mapFromScene(const QPointF & point) const
*/
$method=|QPointF|mapFromScene|const QPointF &

/*
QRectF mapRectFromItem(const QQuickItem * item, const QRectF & rect) const
*/
$method=|QRectF|mapRectFromItem|const QQuickItem *,const QRectF &

/*
QRectF mapRectFromScene(const QRectF & rect) const
*/
$method=|QRectF|mapRectFromScene|const QRectF &

/*
QRectF mapRectToItem(const QQuickItem * item, const QRectF & rect) const
*/
$method=|QRectF|mapRectToItem|const QQuickItem *,const QRectF &

/*
QRectF mapRectToScene(const QRectF & rect) const
*/
$method=|QRectF|mapRectToScene|const QRectF &

/*
QPointF mapToItem(const QQuickItem * item, const QPointF & point) const
*/
$method=|QPointF|mapToItem|const QQuickItem *,const QPointF &

/*
QPointF mapToScene(const QPointF & point) const
*/
$method=|QPointF|mapToScene|const QPointF &

/*
qreal opacity() const
*/
$method=|qreal|opacity|

/*
QQuickItem * parentItem() const
*/
$method=|QQuickItem *|parentItem|

/*
void polish()
*/
$method=|void|polish|

/*
void resetHeight()
*/
$method=|void|resetHeight|

/*
void resetWidth()
*/
$method=|void|resetWidth|

/*
qreal rotation() const
*/
$method=|qreal|rotation|

/*
qreal scale() const
*/
$method=|qreal|scale|

/*
QQuickItem * scopedFocusItem() const
*/
$method=|QQuickItem *|scopedFocusItem|

/*
void setAcceptHoverEvents(bool enabled)
*/
$method=|void|setAcceptHoverEvents|bool

/*
void setAcceptedMouseButtons(Qt::MouseButtons buttons)
*/
$method=|void|setAcceptedMouseButtons|Qt::MouseButtons

/*
void setAntialiasing(bool)
*/
$method=|void|setAntialiasing|bool

/*
void setBaselineOffset(qreal)
*/
$method=|void|setBaselineOffset|qreal

/*
void setClip(bool)
*/
$method=|void|setClip|bool

/*
void setCursor(const QCursor & cursor)
*/
$method=|void|setCursor|const QCursor &

/*
void setEnabled(bool)
*/
$method=|void|setEnabled|bool

/*
void setFiltersChildMouseEvents(bool filter)
*/
$method=|void|setFiltersChildMouseEvents|bool

/*
void setFlag(Flag flag, bool enabled = true)
*/
$method=|void|setFlag|QQuickItem::Flag,bool=true

/*
void setFlags(Flags flags)
*/
$method=|void|setFlags|QQuickItem::Flags

/*
void setFocus(bool)
*/
$method=|void|setFocus|bool

/*
void setHeight(qreal)
*/
$method=|void|setHeight|qreal

/*
void setImplicitHeight(qreal)
*/
$method=|void|setImplicitHeight|qreal

/*
void setImplicitWidth(qreal)
*/
$method=|void|setImplicitWidth|qreal

/*
void setKeepMouseGrab(bool keep)
*/
$method=|void|setKeepMouseGrab|bool

/*
void setKeepTouchGrab(bool keep)
*/
$method=|void|setKeepTouchGrab|bool

/*
void setOpacity(qreal)
*/
$method=|void|setOpacity|qreal

/*
void setParentItem(QQuickItem * parent)
*/
$method=|void|setParentItem|QQuickItem *

/*
void setRotation(qreal)
*/
$method=|void|setRotation|qreal

/*
void setScale(qreal)
*/
$method=|void|setScale|qreal

/*
void setSmooth(bool)
*/
$method=|void|setSmooth|bool

/*
void setState(const QString &)
*/
$method=|void|setState|const QString &

/*
void setTransformOrigin(TransformOrigin)
*/
$method=|void|setTransformOrigin|QQuickItem::TransformOrigin

/*
void setVisible(bool)
*/
$method=|void|setVisible|bool

/*
void setWidth(qreal)
*/
$method=|void|setWidth|qreal

/*
void setX(qreal)
*/
$method=|void|setX|qreal

/*
void setY(qreal)
*/
$method=|void|setY|qreal

/*
void setZ(qreal)
*/
$method=|void|setZ|qreal

/*
bool smooth() const
*/
$method=|bool|smooth|

/*
void stackAfter(const QQuickItem * sibling)
*/
$method=|void|stackAfter|const QQuickItem *

/*
void stackBefore(const QQuickItem * sibling)
*/
$method=|void|stackBefore|const QQuickItem *

/*
QString state() const
*/
$method=|QString|state|

/*
virtual QSGTextureProvider * textureProvider() const
*/
$virtualMethod=|QSGTextureProvider *|textureProvider|

/*
TransformOrigin transformOrigin() const
*/
$method=|QQuickItem::TransformOrigin|transformOrigin|

/*
void ungrabMouse()
*/
$method=|void|ungrabMouse|

/*
void ungrabTouchPoints()
*/
$method=|void|ungrabTouchPoints|

/*
void unsetCursor()
*/
$method=|void|unsetCursor|

/*
qreal width() const
*/
$method=|qreal|width|

/*
QQuickWindow * window() const
*/
$method=|QQuickWindow *|window|

/*
qreal x() const
*/
$method=|qreal|x|

/*
qreal y() const
*/
$method=|qreal|y|

/*
qreal z() const
*/
$method=|qreal|z|

/*
void update()
*/
$method=|void|update|

#pragma ENDDUMP
