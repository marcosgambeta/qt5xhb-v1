$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QREGION
REQUEST QPAINTERPATH
REQUEST QCURSOR
REQUEST QVARIANT
REQUEST QTRANSFORM
REQUEST QGRAPHICSEFFECT
REQUEST QGRAPHICSITEMGROUP
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QGRAPHICSOBJECT
REQUEST QGRAPHICSWIDGET
REQUEST QGRAPHICSSCENE
#endif

CLASS QGraphicsItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD acceptDrops
   METHOD acceptHoverEvents
   METHOD acceptTouchEvents
   METHOD acceptedMouseButtons
   METHOD advance
   METHOD boundingRect
   METHOD boundingRegion
   METHOD boundingRegionGranularity
   METHOD cacheMode
   METHOD childrenBoundingRect
   METHOD clearFocus
   METHOD clipPath
   METHOD collidesWithItem
   METHOD collidesWithPath
   METHOD commonAncestorItem
   METHOD contains
   METHOD cursor
   METHOD data
   METHOD deviceTransform
   METHOD effectiveOpacity
   METHOD ensureVisible
   METHOD filtersChildEvents
   METHOD flags
   METHOD focusItem
   METHOD focusProxy
   METHOD grabKeyboard
   METHOD grabMouse
   METHOD graphicsEffect
   METHOD group
   METHOD hasCursor
   METHOD hasFocus
   METHOD hide
   METHOD inputMethodHints
   METHOD installSceneEventFilter
   METHOD isActive
   METHOD isAncestorOf
   METHOD isBlockedByModalPanel
   METHOD isClipped
   METHOD isEnabled
   METHOD isObscured
   METHOD isObscuredBy
   METHOD isPanel
   METHOD isSelected
   METHOD isUnderMouse
   METHOD isVisible
   METHOD isVisibleTo
   METHOD isWidget
   METHOD isWindow
   METHOD itemTransform
   METHOD mapFromItem
   METHOD mapFromParent
   METHOD mapFromScene
   METHOD mapRectFromItem
   METHOD mapRectFromParent
   METHOD mapRectFromScene
   METHOD mapRectToItem
   METHOD mapRectToParent
   METHOD mapRectToScene
   METHOD mapToItem
   METHOD mapToParent
   METHOD mapToScene
   METHOD moveBy
   METHOD opacity
   METHOD opaqueArea
   METHOD paint
   METHOD panel
   METHOD panelModality
   METHOD parentItem
   METHOD parentObject
   METHOD parentWidget
   METHOD pos
   METHOD removeSceneEventFilter
   METHOD resetTransform
   METHOD rotation
   METHOD scale
   METHOD scene
   METHOD sceneBoundingRect
   METHOD scenePos
   METHOD sceneTransform
   METHOD scroll
   METHOD setAcceptDrops
   METHOD setAcceptHoverEvents
   METHOD setAcceptTouchEvents
   METHOD setAcceptedMouseButtons
   METHOD setActive
   METHOD setBoundingRegionGranularity
   METHOD setCacheMode
   METHOD setCursor
   METHOD setData
   METHOD setEnabled
   METHOD setFiltersChildEvents
   METHOD setFlag
   METHOD setFlags
   METHOD setFocus
   METHOD setFocusProxy
   METHOD setGraphicsEffect
   METHOD setGroup
   METHOD setInputMethodHints
   METHOD setOpacity
   METHOD setPanelModality
   METHOD setParentItem
   METHOD setPos
   METHOD setRotation
   METHOD setScale
   METHOD setSelected
   METHOD setToolTip
   METHOD setTransform
   METHOD setTransformOriginPoint
   METHOD setVisible
   METHOD setX
   METHOD setY
   METHOD setZValue
   METHOD shape
   METHOD show
   METHOD stackBefore
   METHOD toGraphicsObject
   METHOD toolTip
   METHOD topLevelItem
   METHOD topLevelWidget
   METHOD transform
   METHOD transformOriginPoint
   METHOD type
   METHOD ungrabKeyboard
   METHOD ungrabMouse
   METHOD unsetCursor
   METHOD update
   METHOD window
   METHOD x
   METHOD y
   METHOD zValue

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

#include <QCursor>

$deleteMethod

/*
bool acceptDrops () const
*/
$method=|bool|acceptDrops|

/*
bool acceptHoverEvents () const
*/
$method=|bool|acceptHoverEvents|

/*
bool acceptTouchEvents () const
*/
$method=|bool|acceptTouchEvents|

/*
Qt::MouseButtons acceptedMouseButtons () const
*/
$method=|Qt::MouseButtons|acceptedMouseButtons|

/*
virtual void advance ( int phase )
*/
$method=|void|advance|int

/*
virtual QRectF boundingRect () const = 0
*/
$method=|QRectF|boundingRect|

/*
QRegion boundingRegion ( const QTransform & itemToDeviceTransform ) const
*/
$method=|QRegion|boundingRegion|const QTransform &

/*
qreal boundingRegionGranularity () const
*/
$method=|qreal|boundingRegionGranularity|

/*
CacheMode cacheMode () const
*/
$method=|QGraphicsItem::CacheMode|cacheMode|

/*
QRectF childrenBoundingRect () const
*/
$method=|QRectF|childrenBoundingRect|

/*
void clearFocus ()
*/
$method=|void|clearFocus|

/*
QPainterPath clipPath () const
*/
$method=|QPainterPath|clipPath|

/*
virtual bool collidesWithItem ( const QGraphicsItem * other, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
$method=|bool|collidesWithItem|const QGraphicsItem *,Qt::ItemSelectionMode=Qt::IntersectsItemShape

/*
virtual bool collidesWithPath ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
$method=|bool|collidesWithPath|const QPainterPath &,Qt::ItemSelectionMode=Qt::IntersectsItemShape

/*
QGraphicsItem * commonAncestorItem ( const QGraphicsItem * other ) const
*/
$method=|QGraphicsItem *|commonAncestorItem|const QGraphicsItem *

/*
virtual bool contains ( const QPointF & point ) const
*/
$method=|bool|contains|const QPointF &

/*
QCursor cursor () const
*/
$method=|QCursor|cursor|

/*
QVariant data ( int key ) const
*/
$method=|QVariant|data|int

/*
QTransform deviceTransform ( const QTransform & viewportTransform ) const
*/
$method=|QTransform|deviceTransform|const QTransform &

/*
qreal effectiveOpacity () const
*/
$method=|qreal|effectiveOpacity|

/*
void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
*/
$internalMethod=|void|ensureVisible,ensureVisible1|const QRectF &=QRectF(),int=50,int=50

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
$internalMethod=|void|ensureVisible,ensureVisible2|qreal,qreal,qreal,qreal,int=50,int=50

//[1]void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
//[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )

HB_FUNC_STATIC( QGRAPHICSITEM_ENSUREVISIBLE )
{
  if( ISBETWEEN(0,3) && (ISQRECTF(1)||ISNIL(1)) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGraphicsItem_ensureVisible1();
  }
  if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) )
  {
    QGraphicsItem_ensureVisible2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool filtersChildEvents () const
*/
$method=|bool|filtersChildEvents|

/*
GraphicsItemFlags flags () const
*/
$method=|QGraphicsItem::GraphicsItemFlags|flags|

/*
QGraphicsItem * focusItem () const
*/
$method=|QGraphicsItem *|focusItem|

/*
QGraphicsItem * focusProxy () const
*/
$method=|QGraphicsItem *|focusProxy|

/*
void grabKeyboard ()
*/
$method=|void|grabKeyboard|

/*
void grabMouse ()
*/
$method=|void|grabMouse|

/*
QGraphicsEffect * graphicsEffect () const
*/
$method=|QGraphicsEffect *|graphicsEffect|

/*
QGraphicsItemGroup * group () const
*/
$method=|QGraphicsItemGroup *|group|

/*
bool hasCursor () const
*/
$method=|bool|hasCursor|

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
void hide ()
*/
$method=|void|hide|

/*
Qt::InputMethodHints inputMethodHints () const
*/
$method=|Qt::InputMethodHints|inputMethodHints|

/*
void installSceneEventFilter ( QGraphicsItem * filterItem )
*/
$method=|void|installSceneEventFilter|QGraphicsItem *

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isAncestorOf ( const QGraphicsItem * child ) const
*/
$method=|bool|isAncestorOf|const QGraphicsItem *

/*
bool isBlockedByModalPanel ( QGraphicsItem ** blockingPanel = 0 ) const
*/
%% TODO: corrigir codigo da funcao
$method=|bool|isBlockedByModalPanel|QGraphicsItem **=0

/*
bool isClipped () const
*/
$method=|bool|isClipped|

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isObscured () const
*/
$internalMethod=|bool|isObscured,isObscured1|

/*
bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|bool|isObscured,isObscured2|qreal,qreal,qreal,qreal

/*
bool isObscured ( const QRectF & rect ) const
*/
$internalMethod=|bool|isObscured,isObscured3|const QRectF &

//[1]bool isObscured () const
//[2]bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
//[3]bool isObscured ( const QRectF & rect ) const

HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCURED )
{
  if( ISNUMPAR(0) )
  {
    QGraphicsItem_isObscured1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_isObscured2();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_isObscured3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$method=|bool|isObscuredBy|const QGraphicsItem *

/*
bool isPanel () const
*/
$method=|bool|isPanel|

/*
bool isSelected () const
*/
$method=|bool|isSelected|

/*
bool isUnderMouse () const
*/
$method=|bool|isUnderMouse|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
bool isVisibleTo ( const QGraphicsItem * parent ) const
*/
$method=|bool|isVisibleTo|const QGraphicsItem *

/*
bool isWidget () const
*/
$method=|bool|isWidget|

/*
bool isWindow () const
*/
$method=|bool|isWindow|

/*
QTransform itemTransform ( const QGraphicsItem * other, bool * ok = 0 ) const
*/
$method=|QTransform|itemTransform|const QGraphicsItem *,bool *=0

/*
QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
*/
$internalMethod=|QPointF|mapFromItem,mapFromItem1|const QGraphicsItem *,const QPointF &

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
$internalMethod=|QPolygonF|mapFromItem,mapFromItem2|const QGraphicsItem *,const QRectF &

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
$internalMethod=|QPolygonF|mapFromItem,mapFromItem3|const QGraphicsItem *,const QPolygonF &

/*
QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapFromItem,mapFromItem4|const QGraphicsItem *,const QPainterPath &

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QPolygonF|mapFromItem,mapFromItem5|const QGraphicsItem *,qreal,qreal,qreal,qreal

/*
QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
$internalMethod=|QPointF|mapFromItem,mapFromItem6|const QGraphicsItem *,qreal,qreal

//[1]QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
//[2]QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[3]QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
//[4]QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
//[5]QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOINTF(2) )
  {
    QGraphicsItem_mapFromItem1();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapFromItem2();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOLYGONF(2) )
  {
    QGraphicsItem_mapFromItem3();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPAINTERPATH(2) )
  {
    QGraphicsItem_mapFromItem4();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapFromItem5();
  }
  else if( ISNUMPAR(3) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGraphicsItem_mapFromItem6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapFromParent ( const QPointF & point ) const
*/
$internalMethod=|QPointF|mapFromParent,mapFromParent1|const QPointF &

/*
QPolygonF mapFromParent ( const QRectF & rect ) const
*/
$ijnternalMethod=|QPolygonF|mapFromParent,mapFromParent2|const QRectF &

/*
QPolygonF mapFromParent ( const QPolygonF & polygon ) const
*/
$internalMethod=|QPolygonF|mapFromParent,mapFromParent3|const QPolygonF &

/*
QPainterPath mapFromParent ( const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapFromParent,mapFromParent4|const QPainterPath &

/*
QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QPolygonF|mapFromParent,mapFromParent5|qreal,qreal,qreal,qreal

/*
QPointF mapFromParent ( qreal x, qreal y ) const
*/
$internalMethod=|QPointF|mapFromParent,mapFromParent6|qreal,qreal

//[1]QPointF mapFromParent ( const QPointF & point ) const
//[2]QPolygonF mapFromParent ( const QRectF & rect ) const
//[3]QPolygonF mapFromParent ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromParent ( const QPainterPath & path ) const
//[5]QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapFromParent ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapFromParent1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapFromParent2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapFromParent3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapFromParent4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapFromParent5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapFromParent6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapFromScene ( const QPointF & point ) const
*/
$internalMethod=|QPointF|mapFromScene,mapFromScene1|const QPointF &

/*
QPolygonF mapFromScene ( const QRectF & rect ) const
*/
$internalMethod=|QPolygonF|mapFromScene,mapFromScene2|const QRectF &

/*
QPolygonF mapFromScene ( const QPolygonF & polygon ) const
*/
$internalMethod=|QPolygonF|mapFromScene,mapFromScene3|const QPolygonF &

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapFromScene,mapFromScene4|const QPainterPath &

/*
QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QPolygonF|mapFromScene,mapFromScene5|qreal,qreal,qreal,qreal

/*
QPointF mapFromScene ( qreal x, qreal y ) const
*/
$internalMethod=|QPointF|mapFromScene,mapFromScene6|qreal,qreal

//[1]QPointF mapFromScene ( const QPointF & point ) const
//[2]QPolygonF mapFromScene ( const QRectF & rect ) const
//[3]QPolygonF mapFromScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
//[5]QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapFromScene ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapFromScene1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapFromScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapFromScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapFromScene4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapFromScene5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapFromScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF mapRectFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
$internalMethod=|QRectF|mapRectFromItem,mapRectFromItem1|const QGraphicsItem *,const QRectF &

/*
QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QRectF|mapRectFromItem,mapRectFromItem2|const QGraphicsItem *,qreal,qreal,qreal,qreal

//[1]QRectF mapRectFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[2]QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapRectFromItem1();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapRectFromItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF mapRectFromParent ( const QRectF & rect ) const
*/
$internalMethod=|QRectF|mapRectFromParent,mapRectFromParent1|const QRectF &

/*
QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QRectF|mapRectFromParent,mapRectFromParent2|qreal,qreal,qreal,qreal

//[1]QRectF mapRectFromParent ( const QRectF & rect ) const
//[2]QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMPARENT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    GraphicsItem_mapRectFromParent1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    GraphicsItem_mapRectFromParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF mapRectFromScene ( const QRectF & rect ) const
*/
$internalMethod=|QRectF|mapRectFromScene,mapRectFromScene1|const QRectF &

/*
QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QRectF|mapRectFromScene,mapRectFromScene2|qreal,qreal,qreal,qreal

//[1]QRectF mapRectFromScene ( const QRectF & rect ) const
//[2]QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMSCENE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapRectFromScene1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapRectFromScene2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF mapRectToItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
$internalMethod=|QRectF|mapRectToItem,mapRectToItem1|const QGraphicsItem *,const QRectF &

/*
QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QRectF|mapRectToItem,mapRectToItem2|const QGraphicsItem *,qreal,qreal,qreal,qreal

//[1]QRectF mapRectToItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[2]QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapRectToItem1();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapRectToItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF mapRectToParent ( const QRectF & rect ) const
*/
$internalMethod=|QRectF|mapRectToParent,mapRectToParent1|const QRectF &

/*
QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QRectF|mapRectToParent,mapRectToParent2|qreal,qreal,qreal,qreal

//[1]QRectF mapRectToParent ( const QRectF & rect ) const
//[2]QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOPARENT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapRectToParent1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapRectToParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF mapRectToScene ( const QRectF & rect ) const
*/
$internalMethod=|QRectF|mapRectToScene,mapRectToScene1|const QRectF &

/*
QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QRectF|mapRectToScene,mapRectToScene2|qreal,qreal,qreal,qreal

//[1]QRectF mapRectToScene ( const QRectF & rect ) const
//[2]QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOSCENE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapRectToScene1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapRectToScene2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapToItem ( const QGraphicsItem * item, const QPointF & point ) const
*/
$internalMethod=|QPointF|mapToItem,mapToItem1|const QGraphicsItem *,const QPointF &

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
$internalMethod=|QPolygonF|mapToItem,mapToItem2|const QGraphicsItem *,const QRectF &

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
$internalMethod=|QPolygonF|mapToItem,mapToItem3|const QGraphicsItem *,const QPolygonF &

/*
QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapToItem,mapToItem4|const QGraphicsItem *,const QPainterPath &

/*
QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QPolygonF|mapToItem,mapToItem5|const QGraphicsItem *,qreal,qreal,qreal,qreal

/*
QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
$internalMethod=|QPointF|mapToItem,mapToItem6|const QGraphicsItem *,qreal,qreal

//[1]QPointF mapToItem ( const QGraphicsItem * item, const QPointF & point ) const
//[2]QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
//[3]QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
//[4]QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
//[5]QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOINTF(2) )
  {
    QGraphicsItem_mapToItem1();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapToItem2();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOLYGONF(2) )
  {
    QGraphicsItem_mapToItem3();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPAINTERPATH(2) )
  {
    QGraphicsItem_mapToItem4();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapToItem5();
  }
  else if( ISNUMPAR(3) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGraphicsItem_mapToItem6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapToParent ( const QPointF & point ) const
*/
$internalMethod=|QPointF|mapToParent,mapToParent1|const QPointF &

/*
QPolygonF mapToParent ( const QRectF & rect ) const
*/
$internalMethod=|QPolygonF|mapToParent,mapToParent2|const QRectF &

/*
QPolygonF mapToParent ( const QPolygonF & polygon ) const
*/
$internalMethod=|QPolygonF|mapToParent,mapToParent3|const QPolygonF &

/*
QPainterPath mapToParent ( const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapToParent,mapToParent4|const QPainterPath &

/*
QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QPolygonF|mapToParent,mapToParent5|qreal,qreal,qreal,qreal

/*
QPointF mapToParent ( qreal x, qreal y ) const
*/
$internalMethod=|QPointF|mapToParent,mapToParent6|qreal,qreal

//[1]QPointF mapToParent ( const QPointF & point ) const
//[2]QPolygonF mapToParent ( const QRectF & rect ) const
//[3]QPolygonF mapToParent ( const QPolygonF & polygon ) const
//[4]QPainterPath mapToParent ( const QPainterPath & path ) const
//[5]QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapToParent ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapToParent1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapToParent2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapToParent3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapToParent4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapToParent5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapToParent6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapToScene ( const QPointF & point ) const
*/
$internalMethod=|QPointF|mapToScene,mapToScene1|const QPointF &

/*
QPolygonF mapToScene ( const QRectF & rect ) const
*/
$internalMethod=|QPolygonF|mapToScene,mapToScene2|const QRectF &

/*
QPolygonF mapToScene ( const QPolygonF & polygon ) const
*/
$internalMethod=|QPolygonF|mapToScene,mapToScene3|const QPolygonF &

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
$internalMethod=|QPainterPath|mapToScene,mapToScene4|const QPainterPath &

/*
QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
$internalMethod=|QPolygonF|mapToScene,mapToScene5|qreal,qreal,qreal,qreal

/*
QPointF mapToScene ( qreal x, qreal y ) const
*/
$internalMethod=|QPointF|mapToScene,mapToScene6|qreal,qreal

//[1]QPointF mapToScene ( const QPointF & point ) const
//[2]QPolygonF mapToScene ( const QRectF & rect ) const
//[3]QPolygonF mapToScene ( const QPolygonF & polygon ) const
//[4]QPainterPath mapToScene ( const QPainterPath & path ) const
//[5]QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
//[6]QPointF mapToScene ( qreal x, qreal y ) const

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapToScene1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapToScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapToScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapToScene4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapToScene5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapToScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveBy ( qreal dx, qreal dy )
*/
$method=|void|moveBy|qreal,qreal

/*
qreal opacity () const
*/
$method=|qreal|opacity|

/*
virtual QPainterPath opaqueArea () const
*/
$method=|QPainterPath|opaqueArea|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 ) = 0
*/
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
QGraphicsItem * panel () const
*/
$method=|QGraphicsItem *|panel|

/*
PanelModality panelModality () const
*/
$method=|QGraphicsItem::PanelModality|panelModality|

/*
QGraphicsItem * parentItem () const
*/
$method=|QGraphicsItem *|parentItem|

/*
QGraphicsObject * parentObject () const
*/
$method=|QGraphicsObject *|parentObject|

/*
QGraphicsWidget * parentWidget () const
*/
$method=|QGraphicsWidget *|parentWidget|

/*
QPointF pos () const
*/
$method=|QPointF|pos|

/*
void removeSceneEventFilter ( QGraphicsItem * filterItem )
*/
$method=|void|removeSceneEventFilter|QGraphicsItem *

/*
void resetTransform ()
*/
$method=|void|resetTransform|

/*
qreal rotation () const
*/
$method=|qreal|rotation|

/*
qreal scale () const
*/
$method=|qreal|scale|

/*
QGraphicsScene * scene () const
*/
$method=|QGraphicsScene *|scene|

/*
QRectF sceneBoundingRect () const
*/
$method=|QRectF|sceneBoundingRect|

/*
QPointF scenePos () const
*/
$method=|QPointF|scenePos|

/*
QTransform sceneTransform () const
*/
$method=|QTransform|sceneTransform|

/*
void scroll ( qreal dx, qreal dy, const QRectF & rect = QRectF() )
*/
$method=|void|scroll|qreal,qreal,const QRectF &=QRectF()

/*
void setAcceptDrops ( bool on )
*/
$method=|void|setAcceptDrops|bool

/*
void setAcceptHoverEvents ( bool enabled )
*/
$method=|void|setAcceptHoverEvents|bool

/*
void setAcceptTouchEvents ( bool enabled )
*/
$method=|void|setAcceptTouchEvents|bool

/*
void setAcceptedMouseButtons ( Qt::MouseButtons buttons )
*/
$method=|void|setAcceptedMouseButtons|Qt::MouseButtons

/*
void setActive ( bool active )
*/
$method=|void|setActive|bool

/*
void setBoundingRegionGranularity ( qreal granularity )
*/
$method=|void|setBoundingRegionGranularity|qreal

/*
void setCacheMode ( CacheMode mode, const QSize & logicalCacheSize = QSize() )
*/
$method=|void|setCacheMode|QGraphicsItem::CacheMode,const QSize &=QSize()

/*
void setCursor ( const QCursor & cursor )
*/
$method=|void|setCursor|const QCursor &

/*
void setData ( int key, const QVariant & value )
*/
$method=|void|setData|int,const QVariant &

/*
void setEnabled ( bool enabled )
*/
$method=|void|setEnabled|bool

/*
void setFiltersChildEvents ( bool enabled )
*/
$method=|void|setFiltersChildEvents|bool

/*
void setFlag ( GraphicsItemFlag flag, bool enabled = true )
*/
$method=|void|setFlag|QGraphicsItem::GraphicsItemFlag,bool=true

/*
void setFlags ( GraphicsItemFlags flags )
*/
$method=|void|setFlags|QGraphicsItem::GraphicsItemFlags

/*
void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
$method=|void|setFocus|Qt::FocusReason=Qt::OtherFocusReason

/*
void setFocusProxy ( QGraphicsItem * item )
*/
$method=|void|setFocusProxy|QGraphicsItem *

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
$method=|void|setGraphicsEffect|QGraphicsEffect *

/*
void setGroup ( QGraphicsItemGroup * group )
*/
$method=|void|setGroup|QGraphicsItemGroup *

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
$method=|void|setInputMethodHints|Qt::InputMethodHints

/*
void setOpacity ( qreal opacity )
*/
$method=|void|setOpacity|qreal

/*
void setPanelModality ( PanelModality panelModality )
*/
$method=|void|setPanelModality|QGraphicsItem::PanelModality

/*
void setParentItem ( QGraphicsItem * newParent )
*/
$method=|void|setParentItem|QGraphicsItem *

/*
void setPos ( const QPointF & pos )
*/
$internalMethod=|void|setPos,setPos1|const QPointF &

/*
void setPos ( qreal x, qreal y )
*/
$internalMethod=|void|setPos,setPos2|qreal,qreal

//[1]void setPos ( const QPointF & pos )
//[2]void setPos ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSITEM_SETPOS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_setPos1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_setPos2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setRotation ( qreal angle )
*/
$method=|void|setRotation|qreal

/*
void setScale ( qreal factor )
*/
$method=|void|setScale|qreal

/*
void setSelected ( bool selected )
*/
$method=|void|setSelected|bool

/*
void setToolTip ( const QString & toolTip )
*/
$method=|void|setToolTip|const QString &

/*
void setTransform ( const QTransform & matrix, bool combine = false )
*/
$method=|void|setTransform|const QTransform &,bool=false

/*
void setTransformOriginPoint ( const QPointF & origin )
*/
$internalMethod=|void|setTransformOriginPoint,setTransformOriginPoint1|const QPointF &

/*
void setTransformOriginPoint ( qreal x, qreal y )
*/
$internalMethod=|void|setTransformOriginPoint,setTransformOriginPoint2|qreal,qreal

//[1]void setTransformOriginPoint ( const QPointF & origin )
//[2]void setTransformOriginPoint ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORMORIGINPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_setTransformOriginPoint1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_setTransformOriginPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
void setX ( qreal x )
*/
$method=|void|setX|qreal

/*
void setY ( qreal y )
*/
$method=|void|setY|qreal

/*
void setZValue ( qreal z )
*/
$method=|void|setZValue|qreal

/*
virtual QPainterPath shape () const
*/
$method=|QPainterPath|shape|

/*
void show ()
*/
$method=|void|show|

/*
void stackBefore ( const QGraphicsItem * sibling )
*/
$method=|void|stackBefore|const QGraphicsItem *

/*
QGraphicsObject * toGraphicsObject ()
*/
$method=|QGraphicsObject *|toGraphicsObject|

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
QGraphicsItem * topLevelItem () const
*/
$method=|QGraphicsItem *|topLevelItem|

/*
QGraphicsWidget * topLevelWidget () const
*/
$method=|QGraphicsWidget *|topLevelWidget|

/*
QTransform transform () const
*/
$method=|QTransform|transform|

/*
QPointF transformOriginPoint () const
*/
$method=|QPointF|transformOriginPoint|

/*
virtual int type () const
*/
$method=|int|type|

/*
void ungrabKeyboard ()
*/
$method=|void|ungrabKeyboard|

/*
void ungrabMouse ()
*/
$method=|void|ungrabMouse|

/*
void unsetCursor ()
*/
$method=|void|unsetCursor|

/*
void update ( const QRectF & rect = QRectF() )
*/
$internalMethod=|void|update,update1|const QRectF &=QRectF()

/*
void update ( qreal x, qreal y, qreal width, qreal height )
*/
$internalMethod=|void|update,update2|qreal,qreal,qreal,qreal

//[1]void update ( const QRectF & rect = QRectF() )
//[2]void update ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QGRAPHICSITEM_UPDATE )
{
  if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    QGraphicsItem_update1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_update2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGraphicsWidget * window () const
*/
$method=|QGraphicsWidget *|window|

/*
qreal x () const
*/
$method=|qreal|x|

/*
qreal y () const
*/
$method=|qreal|y|

/*
qreal zValue () const
*/
$method=|qreal|zValue|

$extraMethods

#pragma ENDDUMP
