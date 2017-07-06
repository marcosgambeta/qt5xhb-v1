$header

#include "hbclass.ch"

CLASS QAccessibleTextRemoveEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextRemoveEvent(QObject *obj, int position, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTREMOVEEVENT_NEW )
{
  QAccessibleTextRemoveEvent * o = new QAccessibleTextRemoveEvent ( PQOBJECT(1), PINT(2), PQSTRING(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString textRemoved() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTREMOVEEVENT_TEXTREMOVED )
{
  QAccessibleTextRemoveEvent * obj = (QAccessibleTextRemoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->textRemoved () );
  }
}


/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTREMOVEEVENT_CHANGEPOSITION )
{
  QAccessibleTextRemoveEvent * obj = (QAccessibleTextRemoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->changePosition () );
  }
}



#pragma ENDDUMP
