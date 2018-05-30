%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QQmlParserStatus

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QCursor>
#include <QSGTextureProvider>
#include <QQuickWindow>

$prototype=QQuickItem(QQuickItem * parent = 0)
$constructor=|new|QQuickItem *=0

$deleteMethod

$prototype=bool acceptHoverEvents() const
$method=|bool|acceptHoverEvents|

$prototype=Qt::MouseButtons acceptedMouseButtons() const
$method=|Qt::MouseButtons|acceptedMouseButtons|

$prototype=bool antialiasing() const
$method=|bool|antialiasing|

$prototype=qreal baselineOffset() const
$method=|qreal|baselineOffset|

$prototype=QQuickItem * childAt(qreal x, qreal y) const
$method=|QQuickItem *|childAt|qreal,qreal

$prototype=QRectF childrenRect()
$method=|QRectF|childrenRect|

$prototype=bool clip() const
$method=|bool|clip|

$prototype=virtual bool contains(const QPointF & point) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=QCursor cursor() const
$method=|QCursor|cursor|

$prototype=bool filtersChildMouseEvents() const
$method=|bool|filtersChildMouseEvents|

$prototype=Flags flags() const
$method=|QQuickItem::Flags|flags|

$prototype=void forceActiveFocus()
$method=|void|forceActiveFocus|

$prototype=void grabMouse()
$method=|void|grabMouse|

$prototype=bool hasActiveFocus() const
$method=|bool|hasActiveFocus|

$prototype=bool hasFocus() const
$method=|bool|hasFocus|

$prototype=qreal height() const
$method=|qreal|height|

$prototype=qreal implicitHeight() const
$method=|qreal|implicitHeight|

$prototype=qreal implicitWidth() const
$method=|qreal|implicitWidth|

$prototype=virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=bool isFocusScope() const
$method=|bool|isFocusScope|

$prototype=virtual bool isTextureProvider() const
$virtualMethod=|bool|isTextureProvider|

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=bool keepMouseGrab() const
$method=|bool|keepMouseGrab|

$prototype=bool keepTouchGrab() const
$method=|bool|keepTouchGrab|

$prototype=QPointF mapFromItem(const QQuickItem * item, const QPointF & point) const
$method=|QPointF|mapFromItem|const QQuickItem *,const QPointF &

$prototype=QPointF mapFromScene(const QPointF & point) const
$method=|QPointF|mapFromScene|const QPointF &

$prototype=QRectF mapRectFromItem(const QQuickItem * item, const QRectF & rect) const
$method=|QRectF|mapRectFromItem|const QQuickItem *,const QRectF &

$prototype=QRectF mapRectFromScene(const QRectF & rect) const
$method=|QRectF|mapRectFromScene|const QRectF &

$prototype=QRectF mapRectToItem(const QQuickItem * item, const QRectF & rect) const
$method=|QRectF|mapRectToItem|const QQuickItem *,const QRectF &

$prototype=QRectF mapRectToScene(const QRectF & rect) const
$method=|QRectF|mapRectToScene|const QRectF &

$prototype=QPointF mapToItem(const QQuickItem * item, const QPointF & point) const
$method=|QPointF|mapToItem|const QQuickItem *,const QPointF &

$prototype=QPointF mapToScene(const QPointF & point) const
$method=|QPointF|mapToScene|const QPointF &

$prototype=qreal opacity() const
$method=|qreal|opacity|

$prototype=QQuickItem * parentItem() const
$method=|QQuickItem *|parentItem|

$prototype=void polish()
$method=|void|polish|

$prototype=void resetHeight()
$method=|void|resetHeight|

$prototype=void resetWidth()
$method=|void|resetWidth|

$prototype=qreal rotation() const
$method=|qreal|rotation|

$prototype=qreal scale() const
$method=|qreal|scale|

$prototype=QQuickItem * scopedFocusItem() const
$method=|QQuickItem *|scopedFocusItem|

$prototype=void setAcceptHoverEvents(bool enabled)
$method=|void|setAcceptHoverEvents|bool

$prototype=void setAcceptedMouseButtons(Qt::MouseButtons buttons)
$method=|void|setAcceptedMouseButtons|Qt::MouseButtons

$prototype=void setAntialiasing(bool)
$method=|void|setAntialiasing|bool

$prototype=void setBaselineOffset(qreal)
$method=|void|setBaselineOffset|qreal

$prototype=void setClip(bool)
$method=|void|setClip|bool

$prototype=void setCursor(const QCursor & cursor)
$method=|void|setCursor|const QCursor &

$prototype=void setEnabled(bool)
$method=|void|setEnabled|bool

$prototype=void setFiltersChildMouseEvents(bool filter)
$method=|void|setFiltersChildMouseEvents|bool

$prototype=void setFlag(Flag flag, bool enabled = true)
$method=|void|setFlag|QQuickItem::Flag,bool=true

$prototype=void setFlags(Flags flags)
$method=|void|setFlags|QQuickItem::Flags

$prototype=void setFocus(bool)
$method=|void|setFocus|bool

$prototype=void setHeight(qreal)
$method=|void|setHeight|qreal

$prototype=void setImplicitHeight(qreal)
$method=|void|setImplicitHeight|qreal

$prototype=void setImplicitWidth(qreal)
$method=|void|setImplicitWidth|qreal

$prototype=void setKeepMouseGrab(bool keep)
$method=|void|setKeepMouseGrab|bool

$prototype=void setKeepTouchGrab(bool keep)
$method=|void|setKeepTouchGrab|bool

$prototype=void setOpacity(qreal)
$method=|void|setOpacity|qreal

$prototype=void setParentItem(QQuickItem * parent)
$method=|void|setParentItem|QQuickItem *

$prototype=void setRotation(qreal)
$method=|void|setRotation|qreal

$prototype=void setScale(qreal)
$method=|void|setScale|qreal

$prototype=void setSmooth(bool)
$method=|void|setSmooth|bool

$prototype=void setState(const QString &)
$method=|void|setState|const QString &

$prototype=void setTransformOrigin(TransformOrigin)
$method=|void|setTransformOrigin|QQuickItem::TransformOrigin

$prototype=void setVisible(bool)
$method=|void|setVisible|bool

$prototype=void setWidth(qreal)
$method=|void|setWidth|qreal

$prototype=void setX(qreal)
$method=|void|setX|qreal

$prototype=void setY(qreal)
$method=|void|setY|qreal

$prototype=void setZ(qreal)
$method=|void|setZ|qreal

$prototype=bool smooth() const
$method=|bool|smooth|

$prototype=void stackAfter(const QQuickItem * sibling)
$method=|void|stackAfter|const QQuickItem *

$prototype=void stackBefore(const QQuickItem * sibling)
$method=|void|stackBefore|const QQuickItem *

$prototype=QString state() const
$method=|QString|state|

$prototype=virtual QSGTextureProvider * textureProvider() const
$virtualMethod=|QSGTextureProvider *|textureProvider|

$prototype=TransformOrigin transformOrigin() const
$method=|QQuickItem::TransformOrigin|transformOrigin|

$prototype=void ungrabMouse()
$method=|void|ungrabMouse|

$prototype=void ungrabTouchPoints()
$method=|void|ungrabTouchPoints|

$prototype=void unsetCursor()
$method=|void|unsetCursor|

$prototype=qreal width() const
$method=|qreal|width|

$prototype=QQuickWindow * window() const
$method=|QQuickWindow *|window|

$prototype=qreal x() const
$method=|qreal|x|

$prototype=qreal y() const
$method=|qreal|y|

$prototype=qreal z() const
$method=|qreal|z|

$prototype=void update()
$method=|void|update|

#pragma ENDDUMP
