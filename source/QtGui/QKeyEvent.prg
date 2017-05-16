/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QKeyEvent INHERIT QInputEvent

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isAutoRepeat
   METHOD key
   METHOD matches
   METHOD modifiers
   METHOD nativeModifiers
   METHOD nativeScanCode
   METHOD nativeVirtualKey
   METHOD text

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QKeyEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QKeyEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QKeyEvent>
#endif

/*
QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
*/
HB_FUNC_STATIC( QKEYEVENT_NEW )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  bool par5 = ISNIL(5)? false : hb_parl(5);
  ushort par6 = ISNIL(6)? 1 : hb_parni(6);
  QKeyEvent * o = new QKeyEvent (  (QEvent::Type) par1, par2,  (Qt::KeyboardModifiers) par3, par4, par5, par6 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QKEYEVENT_DELETE )
{
  QKeyEvent * obj = (QKeyEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int count () const
*/
HB_FUNC_STATIC( QKEYEVENT_COUNT )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count () );
  }
}


/*
bool isAutoRepeat () const
*/
HB_FUNC_STATIC( QKEYEVENT_ISAUTOREPEAT )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAutoRepeat () );
  }
}


/*
int key () const
*/
HB_FUNC_STATIC( QKEYEVENT_KEY )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->key () );
  }
}


/*
bool matches ( QKeySequence::StandardKey key ) const
*/
HB_FUNC_STATIC( QKEYEVENT_MATCHES )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->matches (  (QKeySequence::StandardKey) par1 ) );
  }
}


/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QKEYEVENT_MODIFIERS )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers () );
  }
}


/*
quint32 nativeModifiers () const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVEMODIFIERS )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nativeModifiers () );
  }
}


/*
quint32 nativeScanCode () const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVESCANCODE )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nativeScanCode () );
  }
}


/*
quint32 nativeVirtualKey () const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVEVIRTUALKEY )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nativeVirtualKey () );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QKEYEVENT_TEXT )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->text () ) );
  }
}



#pragma ENDDUMP
