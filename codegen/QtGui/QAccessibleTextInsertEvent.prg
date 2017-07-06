$header

#include "hbclass.ch"

CLASS QAccessibleTextInsertEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextInsertEvent(QObject *obj, int position, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_NEW )
{
  QAccessibleTextInsertEvent * o = new QAccessibleTextInsertEvent ( PQOBJECT(1), PINT(2), PQSTRING(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString textInserted() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_TEXTINSERTED )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->textInserted () );
  }
}


/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_CHANGEPOSITION )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->changePosition () );
  }
}



#pragma ENDDUMP
