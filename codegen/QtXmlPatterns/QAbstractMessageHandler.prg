$header

#include "hbclass.ch"

CLASS QAbstractMessageHandler INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void message ( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
*/
HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_MESSAGE )
{
  QAbstractMessageHandler * obj = (QAbstractMessageHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    QSourceLocation par4 = ISNIL(4)? QSourceLocation() : *(QSourceLocation *) _qt5xhb_itemGetPtr(4);
    obj->message ( (QtMsgType) hb_parni(1), PQSTRING(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
