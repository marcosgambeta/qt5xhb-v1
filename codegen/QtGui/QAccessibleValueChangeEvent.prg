$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAccessibleValueChangeEvent INHERIT QAccessibleEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleValueChangeEvent(QObject *obj, const QVariant &val)
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_NEW )
{
  QAccessibleValueChangeEvent * o = new QAccessibleValueChangeEvent ( PQOBJECT(1), *PQVARIANT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void setValue(const QVariant & val)
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_SETVALUE )
{
  QAccessibleValueChangeEvent * obj = (QAccessibleValueChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value() const
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_VALUE )
{
  QAccessibleValueChangeEvent * obj = (QAccessibleValueChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
