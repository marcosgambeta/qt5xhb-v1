/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QAccessibleTextInterface

   DATA pointer
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QAccessibleTextInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextInterface>
#endif


HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_DELETE )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void selection(int selectionIndex, int *startOffset, int *endOffset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2;
    int par3;
    obj->selection ( PINT(1), &par2, &par3 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int selectionCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SELECTIONCOUNT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectionCount (  ) );
  }
}


/*
virtual void addSelection(int startOffset, int endOffset) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_ADDSELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addSelection ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void removeSelection(int selectionIndex) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_REMOVESELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeSelection ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelection(int selectionIndex, int startOffset, int endOffset) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SETSELECTION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelection ( PINT(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int cursorPosition() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_CURSORPOSITION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cursorPosition (  ) );
  }
}


/*
virtual void setCursorPosition(int position) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SETCURSORPOSITION )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCursorPosition ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString text(int startOffset, int endOffset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_TEXT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text ( PINT(1), PINT(2) ).toLatin1().data() );
  }
}





/*
virtual int characterCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_CHARACTERCOUNT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->characterCount (  ) );
  }
}


/*
virtual QRect characterRect(int offset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_CHARACTERRECT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->characterRect ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual int offsetAtPoint(const QPoint &point) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_OFFSETATPOINT )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->offsetAtPoint ( *par1 ) );
  }
}


/*
virtual void scrollToSubstring(int startIndex, int endIndex) = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SCROLLTOSUBSTRING )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->scrollToSubstring ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString attributes(int offset, int *startOffset, int *endOffset) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_ATTRIBUTES )
{
  QAccessibleTextInterface * obj = (QAccessibleTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2;
    int par3;
    hb_retc( (const char *) obj->attributes ( PINT(1), &par2, &par3 ).toLatin1().data() );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
}



HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QACCESSIBLETEXTINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QACCESSIBLETEXTINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QACCESSIBLETEXTINTERFACE_SETSELFDESTRUCTION )
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
