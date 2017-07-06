$header

#include "hbclass.ch"

CLASS QWebHistoryInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void addHistoryEntry ( const QString & url ) = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_ADDHISTORYENTRY )
{
  QWebHistoryInterface * obj = (QWebHistoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addHistoryEntry ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool historyContains ( const QString & url ) const = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_HISTORYCONTAINS )
{
  QWebHistoryInterface * obj = (QWebHistoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->historyContains ( PQSTRING(1) ) );
  }
}


/*
static QWebHistoryInterface * defaultInterface ()
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_DEFAULTINTERFACE )
{
  QWebHistoryInterface * ptr = QWebHistoryInterface::defaultInterface ();
  _qt5xhb_createReturnClass ( ptr, "QWEBHISTORYINTERFACE" );
}


/*
static void setDefaultInterface ( QWebHistoryInterface * defaultInterface )
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_SETDEFAULTINTERFACE )
{
  QWebHistoryInterface * par1 = (QWebHistoryInterface *) _qt5xhb_itemGetPtr(1);
  QWebHistoryInterface::setDefaultInterface ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
