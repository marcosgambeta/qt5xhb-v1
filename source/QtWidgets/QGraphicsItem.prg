/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QGraphicsItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsItem>
#endif

#include <QCursor>

HB_FUNC_STATIC( QGRAPHICSITEM_DELETE )
{
  QGraphicsItem * obj = (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool acceptDrops () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTDROPS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->acceptDrops (  ) );
  }
}

/*
bool acceptHoverEvents () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTHOVEREVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->acceptHoverEvents (  ) );
  }
}

/*
bool acceptTouchEvents () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTTOUCHEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->acceptTouchEvents (  ) );
  }
}

/*
Qt::MouseButtons acceptedMouseButtons () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ACCEPTEDMOUSEBUTTONS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->acceptedMouseButtons (  ) );
  }
}

/*
virtual void advance ( int phase )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ADVANCE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->advance ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const = 0
*/
HB_FUNC_STATIC( QGRAPHICSITEM_BOUNDINGRECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRegion boundingRegion ( const QTransform & itemToDeviceTransform ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_BOUNDINGREGION )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) )
    {
      QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
      QRegion * ptr = new QRegion( obj->boundingRegion ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QREGION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal boundingRegionGranularity () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_BOUNDINGREGIONGRANULARITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->boundingRegionGranularity (  ) );
  }
}

/*
CacheMode cacheMode () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CACHEMODE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->cacheMode (  ) );
  }
}

/*
QRectF childrenBoundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CHILDRENBOUNDINGRECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->childrenBoundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void clearFocus ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CLEARFOCUS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearFocus (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPainterPath clipPath () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CLIPPATH )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->clipPath (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual bool collidesWithItem ( const QGraphicsItem * other, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_COLLIDESWITHITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) && ISOPTNUM(2) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
      hb_retl( obj->collidesWithItem ( par1,  (Qt::ItemSelectionMode) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool collidesWithPath ( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_COLLIDESWITHPATH )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) && ISOPTNUM(2) )
    {
      QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
      hb_retl( obj->collidesWithPath ( *par1,  (Qt::ItemSelectionMode) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QGraphicsItem * commonAncestorItem ( const QGraphicsItem * other ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_COMMONANCESTORITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      QGraphicsItem * ptr = obj->commonAncestorItem ( par1 );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CONTAINS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINTF(1) )
    {
      QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->contains ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QCursor cursor () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_CURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
}

/*
QVariant data ( int key ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_DATA )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->data ( (int) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTransform deviceTransform ( const QTransform & viewportTransform ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_DEVICETRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) )
    {
      QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
      QTransform * ptr = new QTransform( obj->deviceTransform ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal effectiveOpacity () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_EFFECTIVEOPACITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->effectiveOpacity (  ) );
  }
}

/*
void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
*/
void QGraphicsItem_ensureVisible1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(1);
    obj->ensureVisible ( par1, (int) ISNIL(2)? 50 : hb_parni(2), (int) ISNIL(3)? 50 : hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/
void QGraphicsItem_ensureVisible2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ensureVisible ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), (int) ISNIL(5)? 50 : hb_parni(5), (int) ISNIL(6)? 50 : hb_parni(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSITEM_FILTERSCHILDEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->filtersChildEvents (  ) );
  }
}

/*
GraphicsItemFlags flags () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_FLAGS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->flags (  ) );
  }
}

/*
QGraphicsItem * focusItem () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_FOCUSITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * ptr = obj->focusItem (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsItem * focusProxy () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_FOCUSPROXY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * ptr = obj->focusProxy (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
void grabKeyboard ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GRABKEYBOARD )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->grabKeyboard (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabMouse ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GRABMOUSE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->grabMouse (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsEffect * graphicsEffect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GRAPHICSEFFECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsEffect * ptr = obj->graphicsEffect (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSEFFECT" );
  }
}

/*
QGraphicsItemGroup * group () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_GROUP )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItemGroup * ptr = obj->group (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEMGROUP" );
  }
}

/*
bool hasCursor () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_HASCURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasCursor (  ) );
  }
}

/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_HASFOCUS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasFocus (  ) );
  }
}

/*
void hide ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_HIDE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->hide (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::InputMethodHints inputMethodHints () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_INPUTMETHODHINTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->inputMethodHints (  ) );
  }
}

/*
void installSceneEventFilter ( QGraphicsItem * filterItem )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_INSTALLSCENEEVENTFILTER )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      obj->installSceneEventFilter ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISACTIVE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}

/*
bool isAncestorOf ( const QGraphicsItem * child ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISANCESTOROF )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isAncestorOf ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isBlockedByModalPanel ( QGraphicsItem ** blockingPanel = 0 ) const // TODO: corrigir codigo da funcao
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISBLOCKEDBYMODALPANEL )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isBlockedByModalPanel (  ) );
  }
}

/*
bool isClipped () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISCLIPPED )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isClipped (  ) );
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISENABLED )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}

/*
bool isObscured () const
*/
void QGraphicsItem_isObscured1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isObscured (  ) );
  }
}

/*
bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_isObscured2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isObscured ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
  }
}

/*
bool isObscured ( const QRectF & rect ) const
*/
void QGraphicsItem_isObscured3 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isObscured ( *par1 ) );
  }
}

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
HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCUREDBY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isObscuredBy ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isPanel () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISPANEL )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isPanel (  ) );
  }
}

/*
bool isSelected () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISSELECTED )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isSelected (  ) );
  }
}

/*
bool isUnderMouse () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISUNDERMOUSE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isUnderMouse (  ) );
  }
}

/*
bool isVisible () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISVISIBLE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}

/*
bool isVisibleTo ( const QGraphicsItem * parent ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISVISIBLETO )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isVisibleTo ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISWIDGET )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isWidget (  ) );
  }
}

/*
bool isWindow () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ISWINDOW )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isWindow (  ) );
  }
}

/*
QTransform itemTransform ( const QGraphicsItem * other, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ITEMTRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) && ISOPTLOG(2) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      bool par2;
      QTransform * ptr = new QTransform( obj->itemTransform ( par1, &par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
*/
void QGraphicsItem_mapFromItem1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
    QPointF * ptr = new QPointF( obj->mapFromItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
void QGraphicsItem_mapFromItem2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QRectF * par2 = (QRectF *) _qt5xhb_itemGetPtr(2);
    QPolygonF * ptr = new QPolygonF( obj->mapFromItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
void QGraphicsItem_mapFromItem3 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPolygonF * par2 = (QPolygonF *) _qt5xhb_itemGetPtr(2);
    QPolygonF * ptr = new QPolygonF( obj->mapFromItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
void QGraphicsItem_mapFromItem4 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPainterPath * par2 = (QPainterPath *) _qt5xhb_itemGetPtr(2);
    QPainterPath * ptr = new QPainterPath( obj->mapFromItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapFromItem5 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapFromItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
void QGraphicsItem_mapFromItem6 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapFromItem ( par1, PQREAL(2), PQREAL(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

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
void QGraphicsItem_mapFromParent1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapFromParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapFromParent ( const QRectF & rect ) const
*/
void QGraphicsItem_mapFromParent2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapFromParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapFromParent ( const QPolygonF & polygon ) const
*/
void QGraphicsItem_mapFromParent3 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapFromParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapFromParent ( const QPainterPath & path ) const
*/
void QGraphicsItem_mapFromParent4 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->mapFromParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapFromParent5 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapFromParent ( qreal x, qreal y ) const
*/
void QGraphicsItem_mapFromParent6 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapFromParent ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

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
void QGraphicsItem_mapFromScene1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapFromScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapFromScene ( const QRectF & rect ) const
*/
void QGraphicsItem_mapFromScene2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapFromScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapFromScene ( const QPolygonF & polygon ) const
*/
void QGraphicsItem_mapFromScene3 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapFromScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapFromScene ( const QPainterPath & path ) const
*/
void QGraphicsItem_mapFromScene4 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->mapFromScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapFromScene5 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapFromScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapFromScene ( qreal x, qreal y ) const
*/
void QGraphicsItem_mapFromScene6 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapFromScene ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

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
void QGraphicsItem_mapRectFromItem1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QRectF * par2 = (QRectF *) _qt5xhb_itemGetPtr(2);
    QRectF * ptr = new QRectF( obj->mapRectFromItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapRectFromItem2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectFromItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

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
void GraphicsItem_mapRectFromParent1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectFromParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
void GraphicsItem_mapRectFromParent2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectFromParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

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
void QGraphicsItem_mapRectFromScene1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectFromScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapRectFromScene2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectFromScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

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
void QGraphicsItem_mapRectToItem1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QRectF * par2 = (QRectF *) _qt5xhb_itemGetPtr(2);
    QRectF * ptr = new QRectF( obj->mapRectToItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapRectToItem2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectToItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

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
void QGraphicsItem_mapRectToParent1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectToParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapRectToParent2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectToParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

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
void QGraphicsItem_mapRectToScene1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectToScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapRectToScene2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRectToScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

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
void QGraphicsItem_mapToItem1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
    QPointF * ptr = new QPointF( obj->mapToItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
*/
void QGraphicsItem_mapToItem2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QRectF * par2 = (QRectF *) _qt5xhb_itemGetPtr(2);
    QPolygonF * ptr = new QPolygonF( obj->mapToItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
*/
void QGraphicsItem_mapToItem3 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPolygonF * par2 = (QPolygonF *) _qt5xhb_itemGetPtr(2);
    QPolygonF * ptr = new QPolygonF( obj->mapToItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
*/
void QGraphicsItem_mapToItem4 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPainterPath * par2 = (QPainterPath *) _qt5xhb_itemGetPtr(2);
    QPainterPath * ptr = new QPainterPath( obj->mapToItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapToItem5 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapToItem ( par1, PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/
void QGraphicsItem_mapToItem6 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapToItem ( par1, PQREAL(2), PQREAL(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

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
void QGraphicsItem_mapToParent1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapToParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToParent ( const QRectF & rect ) const
*/
void QGraphicsItem_mapToParent2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapToParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToParent ( const QPolygonF & polygon ) const
*/
void QGraphicsItem_mapToParent3 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapToParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToParent ( const QPainterPath & path ) const
*/
void QGraphicsItem_mapToParent4 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->mapToParent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapToParent5 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToParent ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapToParent ( qreal x, qreal y ) const
*/
void QGraphicsItem_mapToParent6 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToParent ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

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
void QGraphicsItem_mapToScene1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapToScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPolygonF mapToScene ( const QRectF & rect ) const
*/
void QGraphicsItem_mapToScene2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF mapToScene ( const QPolygonF & polygon ) const
*/
void QGraphicsItem_mapToScene3 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPainterPath mapToScene ( const QPainterPath & path ) const
*/
void QGraphicsItem_mapToScene4 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->mapToScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/
void QGraphicsItem_mapToScene5 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->mapToScene ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPointF mapToScene ( qreal x, qreal y ) const
*/
void QGraphicsItem_mapToScene6 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->mapToScene ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

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
HB_FUNC_STATIC( QGRAPHICSITEM_MOVEBY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->moveBy ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal opacity () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_OPACITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->opacity (  ) );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_OPAQUEAREA )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 ) = 0
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PAINT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && ISOPTQWIDGET(3) )
    {
      QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
      const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
      QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
      obj->paint ( par1, par2, par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsItem * panel () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PANEL )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * ptr = obj->panel (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
PanelModality panelModality () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PANELMODALITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->panelModality (  ) );
  }
}

/*
QGraphicsItem * parentItem () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PARENTITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * ptr = obj->parentItem (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsObject * parentObject () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PARENTOBJECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsObject * ptr = obj->parentObject (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSOBJECT" );
  }
}

/*
QGraphicsWidget * parentWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_PARENTWIDGET )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsWidget * ptr = obj->parentWidget (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}

/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_POS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void removeSceneEventFilter ( QGraphicsItem * filterItem )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_REMOVESCENEEVENTFILTER )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      obj->removeSceneEventFilter ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resetTransform ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_RESETTRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resetTransform (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal rotation () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ROTATION )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->rotation (  ) );
  }
}

/*
qreal scale () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCALE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->scale (  ) );
  }
}

/*
QGraphicsScene * scene () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsScene * ptr = obj->scene (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSSCENE" );
  }
}

/*
QRectF sceneBoundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENEBOUNDINGRECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->sceneBoundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENEPOS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QTransform sceneTransform () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCENETRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->sceneTransform (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
void scroll ( qreal dx, qreal dy, const QRectF & rect = QRectF() )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SCROLL )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQRECTF(3)||ISNIL(3)) )
    {
      QRectF par3 = ISNIL(3)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(3);
      obj->scroll ( PQREAL(1), PQREAL(2), par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptDrops ( bool on )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTDROPS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAcceptDrops ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptHoverEvents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTHOVEREVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAcceptHoverEvents ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptTouchEvents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTTOUCHEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAcceptTouchEvents ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptedMouseButtons ( Qt::MouseButtons buttons )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACCEPTEDMOUSEBUTTONS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setAcceptedMouseButtons (  (Qt::MouseButtons) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setActive ( bool active )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETACTIVE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setActive ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBoundingRegionGranularity ( qreal granularity )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETBOUNDINGREGIONGRANULARITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setBoundingRegionGranularity ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCacheMode ( CacheMode mode, const QSize & logicalCacheSize = QSize() )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETCACHEMODE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQSIZE(2)||ISNIL(2)) )
    {
      int par1 = hb_parni(1);
      QSize par2 = ISNIL(2)? QSize() : *(QSize *) _qt5xhb_itemGetPtr(2);
      obj->setCacheMode (  (QGraphicsItem::CacheMode) par1, par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursor ( const QCursor & cursor )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETCURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCURSOR(1) )
    {
      QCursor * par1 = (QCursor *) _qt5xhb_itemGetPtr(1);
      obj->setCursor ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setData ( int key, const QVariant & value )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETDATA )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
      obj->setData ( (int) hb_parni(1), *par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETENABLED )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setEnabled ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFiltersChildEvents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFILTERSCHILDEVENTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFiltersChildEvents ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlag ( GraphicsItemFlag flag, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFLAG )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      int par1 = hb_parni(1);
      obj->setFlag (  (QGraphicsItem::GraphicsItemFlag) par1, (bool) ISNIL(2)? true : hb_parl(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags ( GraphicsItemFlags flags )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFLAGS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFlags (  (QGraphicsItem::GraphicsItemFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFOCUS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) Qt::OtherFocusReason : hb_parni(1);
      obj->setFocus (  (Qt::FocusReason) par1 );
    }  
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocusProxy ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETFOCUSPROXY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      obj->setFocusProxy ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETGRAPHICSEFFECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSEFFECT(1) )
    {
      QGraphicsEffect * par1 = (QGraphicsEffect *) _qt5xhb_itemGetPtr(1);
      obj->setGraphicsEffect ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGroup ( QGraphicsItemGroup * group )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETGROUP )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEMGROUP(1) )
    {
      QGraphicsItemGroup * par1 = (QGraphicsItemGroup *) _qt5xhb_itemGetPtr(1);
      obj->setGroup ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETINPUTMETHODHINTS )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setInputMethodHints (  (Qt::InputMethodHints) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETOPACITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setOpacity ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPanelModality ( PanelModality panelModality )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETPANELMODALITY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setPanelModality (  (QGraphicsItem::PanelModality) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setParentItem ( QGraphicsItem * newParent )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETPARENTITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      obj->setParentItem ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPos ( const QPointF & pos )
*/
void QGraphicsItem_setPos1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setPos ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPos ( qreal x, qreal y )
*/
void QGraphicsItem_setPos2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPos ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSITEM_SETROTATION )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setRotation ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScale ( qreal factor )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETSCALE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setScale ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelected ( bool selected )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETSELECTED )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSelected ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( const QString & toolTip )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETTOOLTIP )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setToolTip ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransform ( const QTransform & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) && ISOPTLOG(2) )
    {
      QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
      obj->setTransform ( *par1, (bool) ISNIL(2)? false : hb_parl(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformOriginPoint ( const QPointF & origin )
*/
void QGraphicsItem_setTransformOriginPoint1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setTransformOriginPoint ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformOriginPoint ( qreal x, qreal y )
*/
void QGraphicsItem_setTransformOriginPoint2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setTransformOriginPoint ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSITEM_SETVISIBLE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setX ( qreal x )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETX )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setX ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setY ( qreal y )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETY )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setY ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZValue ( qreal z )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SETZVALUE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setZValue ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SHAPE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
void show ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_SHOW )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->show (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stackBefore ( const QGraphicsItem * sibling )
*/
HB_FUNC_STATIC( QGRAPHICSITEM_STACKBEFORE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      obj->stackBefore ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QGraphicsObject * toGraphicsObject ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOGRAPHICSOBJECT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsObject * ptr = obj->toGraphicsObject (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSOBJECT" );
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOOLTIP )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toolTip (  ).toLatin1().data() );
  }
}

/*
QGraphicsItem * topLevelItem () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOPLEVELITEM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsItem * ptr = obj->topLevelItem (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}

/*
QGraphicsWidget * topLevelWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TOPLEVELWIDGET )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsWidget * ptr = obj->topLevelWidget (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}

/*
QTransform transform () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TRANSFORM )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transform (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
QPointF transformOriginPoint () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TRANSFORMORIGINPOINT )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->transformOriginPoint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_TYPE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}

/*
void ungrabKeyboard ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UNGRABKEYBOARD )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ungrabKeyboard (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ungrabMouse ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UNGRABMOUSE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ungrabMouse (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetCursor ()
*/
HB_FUNC_STATIC( QGRAPHICSITEM_UNSETCURSOR )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetCursor (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRectF & rect = QRectF() )
*/
void QGraphicsItem_update1 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF par1 = ISNIL(1)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(1);
    obj->update ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( qreal x, qreal y, qreal width, qreal height )
*/
void QGraphicsItem_update2 ()
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->update ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QGRAPHICSITEM_WINDOW )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsWidget * ptr = obj->window (  );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}

/*
qreal x () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_X )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
}

/*
qreal y () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_Y )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
}

/*
qreal zValue () const
*/
HB_FUNC_STATIC( QGRAPHICSITEM_ZVALUE )
{
  QGraphicsItem * obj = (QGraphicsItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->zValue (  ) );
  }
}

HB_FUNC_STATIC( QGRAPHICSITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGRAPHICSITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGRAPHICSITEM_NEWFROM );
}

HB_FUNC_STATIC( QGRAPHICSITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGRAPHICSITEM_NEWFROM );
}

HB_FUNC_STATIC( QGRAPHICSITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGRAPHICSITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
