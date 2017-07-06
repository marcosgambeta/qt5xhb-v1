$header

#include "hbclass.ch"

CLASS QAccessibleTextUpdateEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextUpdateEvent(QObject *obj, int position, const QString &oldText, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_NEW )
{
  QAccessibleTextUpdateEvent * o = new QAccessibleTextUpdateEvent ( PQOBJECT(1), PINT(2), PQSTRING(3), PQSTRING(4) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString textRemoved() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTREMOVED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->textRemoved () );
  }
}


/*
QString textInserted() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_TEXTINSERTED )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->textInserted () );
  }
}


/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTUPDATEEVENT_CHANGEPOSITION )
{
  QAccessibleTextUpdateEvent * obj = (QAccessibleTextUpdateEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->changePosition () );
  }
}



#pragma ENDDUMP
