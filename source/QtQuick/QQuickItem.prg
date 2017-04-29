/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QQuickItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQuickItem>
#endif

#include <QCursor>

/*
QQuickItem(QQuickItem * parent = 0)
*/
HB_FUNC_STATIC( QQUICKITEM_NEW )
{
  QQuickItem * par1 = ISNIL(1)? 0 : (QQuickItem *) _qt5xhb_itemGetPtr(1);
  QQuickItem * o = new QQuickItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QQUICKITEM_DELETE )
{
  QQuickItem * obj = (QQuickItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool acceptHoverEvents() const
*/
HB_FUNC_STATIC( QQUICKITEM_ACCEPTHOVEREVENTS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->acceptHoverEvents (  ) );
  }
}


/*
Qt::MouseButtons acceptedMouseButtons() const
*/
HB_FUNC_STATIC( QQUICKITEM_ACCEPTEDMOUSEBUTTONS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->acceptedMouseButtons (  ) );
  }
}


/*
bool antialiasing() const
*/
HB_FUNC_STATIC( QQUICKITEM_ANTIALIASING )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->antialiasing (  ) );
  }
}


/*
qreal baselineOffset() const
*/
HB_FUNC_STATIC( QQUICKITEM_BASELINEOFFSET )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->baselineOffset (  ) );
  }
}



/*
QQuickItem * childAt(qreal x, qreal y) const
*/
HB_FUNC_STATIC( QQUICKITEM_CHILDAT )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->childAt ( PQREAL(1), PQREAL(2) );
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}



/*
QRectF childrenRect()
*/
HB_FUNC_STATIC( QQUICKITEM_CHILDRENRECT )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->childrenRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}



/*
bool clip() const
*/
HB_FUNC_STATIC( QQUICKITEM_CLIP )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->clip (  ) );
  }
}



/*
virtual bool contains(const QPointF & point) const
*/
HB_FUNC_STATIC( QQUICKITEM_CONTAINS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
QCursor cursor() const
*/
HB_FUNC_STATIC( QQUICKITEM_CURSOR )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
}


/*
bool filtersChildMouseEvents() const
*/
HB_FUNC_STATIC( QQUICKITEM_FILTERSCHILDMOUSEEVENTS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->filtersChildMouseEvents (  ) );
  }
}


/*
Flags flags() const
*/
HB_FUNC_STATIC( QQUICKITEM_FLAGS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags (  ) );
  }
}


/*
void forceActiveFocus()
*/
HB_FUNC_STATIC( QQUICKITEM_FORCEACTIVEFOCUS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forceActiveFocus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void grabMouse()
*/
HB_FUNC_STATIC( QQUICKITEM_GRABMOUSE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->grabMouse (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool hasActiveFocus() const
*/
HB_FUNC_STATIC( QQUICKITEM_HASACTIVEFOCUS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasActiveFocus (  ) );
  }
}


/*
bool hasFocus() const
*/
HB_FUNC_STATIC( QQUICKITEM_HASFOCUS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasFocus (  ) );
  }
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QQUICKITEM_HEIGHT )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->height (  ) );
  }
}


/*
qreal implicitHeight() const
*/
HB_FUNC_STATIC( QQUICKITEM_IMPLICITHEIGHT )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->implicitHeight (  ) );
  }
}


/*
qreal implicitWidth() const
*/
HB_FUNC_STATIC( QQUICKITEM_IMPLICITWIDTH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->implicitWidth (  ) );
  }
}


/*
virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
*/
HB_FUNC_STATIC( QQUICKITEM_INPUTMETHODQUERY )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QQUICKITEM_ISENABLED )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
bool isFocusScope() const
*/
HB_FUNC_STATIC( QQUICKITEM_ISFOCUSSCOPE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFocusScope (  ) );
  }
}


/*
virtual bool isTextureProvider() const
*/
HB_FUNC_STATIC( QQUICKITEM_ISTEXTUREPROVIDER )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTextureProvider (  ) );
  }
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QQUICKITEM_ISVISIBLE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
bool keepMouseGrab() const
*/
HB_FUNC_STATIC( QQUICKITEM_KEEPMOUSEGRAB )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->keepMouseGrab (  ) );
  }
}


/*
bool keepTouchGrab() const
*/
HB_FUNC_STATIC( QQUICKITEM_KEEPTOUCHGRAB )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->keepTouchGrab (  ) );
  }
}


/*
QPointF mapFromItem(const QQuickItem * item, const QPointF & point) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPFROMITEM )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QQuickItem * par1 = (const QQuickItem *) _qt5xhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
    QPointF * ptr = new QPointF( obj->mapFromItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF mapFromScene(const QPointF & point) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPFROMSCENE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapFromScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QRectF mapRectFromItem(const QQuickItem * item, const QRectF & rect) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPRECTFROMITEM )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QQuickItem * par1 = (const QQuickItem *) _qt5xhb_itemGetPtr(1);
    QRectF * par2 = (QRectF *) _qt5xhb_itemGetPtr(2);
    QRectF * ptr = new QRectF( obj->mapRectFromItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QRectF mapRectFromScene(const QRectF & rect) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPRECTFROMSCENE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectFromScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QRectF mapRectToItem(const QQuickItem * item, const QRectF & rect) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPRECTTOITEM )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QQuickItem * par1 = (const QQuickItem *) _qt5xhb_itemGetPtr(1);
    QRectF * par2 = (QRectF *) _qt5xhb_itemGetPtr(2);
    QRectF * ptr = new QRectF( obj->mapRectToItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QRectF mapRectToScene(const QRectF & rect) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPRECTTOSCENE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->mapRectToScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QPointF mapToItem(const QQuickItem * item, const QPointF & point) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPTOITEM )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QQuickItem * par1 = (const QQuickItem *) _qt5xhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
    QPointF * ptr = new QPointF( obj->mapToItem ( par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF mapToScene(const QPointF & point) const
*/
HB_FUNC_STATIC( QQUICKITEM_MAPTOSCENE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * ptr = new QPointF( obj->mapToScene ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
qreal opacity() const
*/
HB_FUNC_STATIC( QQUICKITEM_OPACITY )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->opacity (  ) );
  }
}


/*
QQuickItem * parentItem() const
*/
HB_FUNC_STATIC( QQUICKITEM_PARENTITEM )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->parentItem (  );
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}


/*
void polish()
*/
HB_FUNC_STATIC( QQUICKITEM_POLISH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->polish (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetHeight()
*/
HB_FUNC_STATIC( QQUICKITEM_RESETHEIGHT )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetHeight (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetWidth()
*/
HB_FUNC_STATIC( QQUICKITEM_RESETWIDTH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetWidth (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal rotation() const
*/
HB_FUNC_STATIC( QQUICKITEM_ROTATION )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rotation (  ) );
  }
}


/*
qreal scale() const
*/
HB_FUNC_STATIC( QQUICKITEM_SCALE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->scale (  ) );
  }
}


/*
QQuickItem * scopedFocusItem() const
*/
HB_FUNC_STATIC( QQUICKITEM_SCOPEDFOCUSITEM )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->scopedFocusItem (  );
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}


/*
void setAcceptHoverEvents(bool enabled)
*/
HB_FUNC_STATIC( QQUICKITEM_SETACCEPTHOVEREVENTS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAcceptHoverEvents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAcceptedMouseButtons(Qt::MouseButtons buttons)
*/
HB_FUNC_STATIC( QQUICKITEM_SETACCEPTEDMOUSEBUTTONS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAcceptedMouseButtons (  (Qt::MouseButtons) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAntialiasing(bool)
*/
HB_FUNC_STATIC( QQUICKITEM_SETANTIALIASING )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAntialiasing ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBaselineOffset(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETBASELINEOFFSET )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBaselineOffset ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClip(bool)
*/
HB_FUNC_STATIC( QQUICKITEM_SETCLIP )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClip ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursor(const QCursor & cursor)
*/
HB_FUNC_STATIC( QQUICKITEM_SETCURSOR )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCursor * par1 = (QCursor *) _qt5xhb_itemGetPtr(1);
    obj->setCursor ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEnabled(bool)
*/
HB_FUNC_STATIC( QQUICKITEM_SETENABLED )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFiltersChildMouseEvents(bool filter)
*/
HB_FUNC_STATIC( QQUICKITEM_SETFILTERSCHILDMOUSEEVENTS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFiltersChildMouseEvents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlag(Flag flag, bool enabled = true)
*/
HB_FUNC_STATIC( QQUICKITEM_SETFLAG )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlag (  (QQuickItem::Flag) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlags(Flags flags)
*/
HB_FUNC_STATIC( QQUICKITEM_SETFLAGS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags (  (QQuickItem::Flags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocus(bool)
*/
HB_FUNC_STATIC( QQUICKITEM_SETFOCUS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFocus ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETHEIGHT )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setImplicitHeight(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETIMPLICITHEIGHT )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setImplicitHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setImplicitWidth(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETIMPLICITWIDTH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setImplicitWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeepMouseGrab(bool keep)
*/
HB_FUNC_STATIC( QQUICKITEM_SETKEEPMOUSEGRAB )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKeepMouseGrab ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeepTouchGrab(bool keep)
*/
HB_FUNC_STATIC( QQUICKITEM_SETKEEPTOUCHGRAB )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKeepTouchGrab ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpacity(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETOPACITY )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpacity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParentItem(QQuickItem * parent)
*/
HB_FUNC_STATIC( QQUICKITEM_SETPARENTITEM )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * par1 = (QQuickItem *) _qt5xhb_itemGetPtr(1);
    obj->setParentItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRotation(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETROTATION )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRotation ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScale(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETSCALE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setScale ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSmooth(bool)
*/
HB_FUNC_STATIC( QQUICKITEM_SETSMOOTH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSmooth ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setState(const QString &)
*/
HB_FUNC_STATIC( QQUICKITEM_SETSTATE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setState ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransformOrigin(TransformOrigin)
*/
HB_FUNC_STATIC( QQUICKITEM_SETTRANSFORMORIGIN )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTransformOrigin (  (QQuickItem::TransformOrigin) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool)
*/
HB_FUNC_STATIC( QQUICKITEM_SETVISIBLE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETWIDTH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setX(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETX )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETY )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZ(qreal)
*/
HB_FUNC_STATIC( QQUICKITEM_SETZ )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZ ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool smooth() const
*/
HB_FUNC_STATIC( QQUICKITEM_SMOOTH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->smooth (  ) );
  }
}


/*
void stackAfter(const QQuickItem * sibling)
*/
HB_FUNC_STATIC( QQUICKITEM_STACKAFTER )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QQuickItem * par1 = (const QQuickItem *) _qt5xhb_itemGetPtr(1);
    obj->stackAfter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stackBefore(const QQuickItem * sibling)
*/
HB_FUNC_STATIC( QQUICKITEM_STACKBEFORE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QQuickItem * par1 = (const QQuickItem *) _qt5xhb_itemGetPtr(1);
    obj->stackBefore ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString state() const
*/
HB_FUNC_STATIC( QQUICKITEM_STATE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->state (  ).toLatin1().data() );
  }
}


/*
virtual QSGTextureProvider * textureProvider() const
*/
HB_FUNC_STATIC( QQUICKITEM_TEXTUREPROVIDER )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGTextureProvider * ptr = obj->textureProvider (  );
    _qt5xhb_createReturnClass ( ptr, "QSGTEXTUREPROVIDER" );
  }
}



/*
TransformOrigin transformOrigin() const
*/
HB_FUNC_STATIC( QQUICKITEM_TRANSFORMORIGIN )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->transformOrigin (  ) );
  }
}


/*
void ungrabMouse()
*/
HB_FUNC_STATIC( QQUICKITEM_UNGRABMOUSE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ungrabMouse (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ungrabTouchPoints()
*/
HB_FUNC_STATIC( QQUICKITEM_UNGRABTOUCHPOINTS )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ungrabTouchPoints (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unsetCursor()
*/
HB_FUNC_STATIC( QQUICKITEM_UNSETCURSOR )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetCursor (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QQUICKITEM_WIDTH )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->width (  ) );
  }
}


/*
QQuickWindow * window() const
*/
HB_FUNC_STATIC( QQUICKITEM_WINDOW )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickWindow * ptr = obj->window (  );
    _qt5xhb_createReturnClass ( ptr, "QQUICKWINDOW" );
  }
}


/*
qreal x() const
*/
HB_FUNC_STATIC( QQUICKITEM_X )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QQUICKITEM_Y )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
}


/*
qreal z() const
*/
HB_FUNC_STATIC( QQUICKITEM_Z )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->z (  ) );
  }
}


/*
void update()
*/
HB_FUNC_STATIC( QQUICKITEM_UPDATE )
{
  QQuickItem * obj = (QQuickItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->update (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
