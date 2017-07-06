$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD key
   METHOD shortcutId
   METHOD isAmbiguous

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_NEW )
{
  QShortcutEvent * o = new QShortcutEvent ( *PQKEYSEQUENCE(1), PINT(2), OPBOOL(3,false) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const QKeySequence &key() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_KEY )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QKeySequence * ptr = &obj->key ();
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE" );
  }
}


/*
int shortcutId() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_SHORTCUTID )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->shortcutId () );
  }
}


/*
bool isAmbiguous() const
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_ISAMBIGUOUS )
{
  QShortcutEvent * obj = (QShortcutEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAmbiguous () );
  }
}



#pragma ENDDUMP
