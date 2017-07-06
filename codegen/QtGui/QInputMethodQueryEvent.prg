$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QInputMethodQueryEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD queries
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QInputMethodQueryEvent(Qt::InputMethodQueries queries)
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_NEW )
{
  int par1 = hb_parni(1);
  QInputMethodQueryEvent * o = new QInputMethodQueryEvent ( (Qt::InputMethodQueries) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
Qt::InputMethodQueries queries() const
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_QUERIES )
{
  QInputMethodQueryEvent * obj = (QInputMethodQueryEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->queries () );
  }
}


/*
void setValue(Qt::InputMethodQuery query, const QVariant & value)
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_SETVALUE )
{
  QInputMethodQueryEvent * obj = (QInputMethodQueryEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( (Qt::InputMethodQuery) hb_parni(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value(Qt::InputMethodQuery query) const
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_VALUE )
{
  QInputMethodQueryEvent * obj = (QInputMethodQueryEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( (Qt::InputMethodQuery) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
