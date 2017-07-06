$header

#include "hbclass.ch"

CLASS QKeyEvent INHERIT QInputEvent

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

$destructor

#pragma BEGINDUMP

$includes

/*
QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
*/
HB_FUNC_STATIC( QKEYEVENT_NEW )
{
  int par3 = hb_parni(3);
  ushort par6 = ISNIL(6)? 1 : hb_parni(6);
  QKeyEvent * o = new QKeyEvent ( (QEvent::Type) hb_parni(1), PINT(2), (Qt::KeyboardModifiers) par3, OPQSTRING(4,QString()), OPBOOL(5,false), par6 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
int count () const
*/
HB_FUNC_STATIC( QKEYEVENT_COUNT )
{
  QKeyEvent * obj = (QKeyEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
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
    RBOOL( obj->isAutoRepeat () );
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
    RINT( obj->key () );
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
    RBOOL( obj->matches ( (QKeySequence::StandardKey) hb_parni(1) ) );
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
    RQUINT32( obj->nativeModifiers () );
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
    RQUINT32( obj->nativeScanCode () );
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
    RQUINT32( obj->nativeVirtualKey () );
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
    RQSTRING( obj->text () );
  }
}



#pragma ENDDUMP
