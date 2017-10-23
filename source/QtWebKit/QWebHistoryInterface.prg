/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QWebHistoryInterface INHERIT QObject

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebHistoryInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebHistoryInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebHistoryInterface>
#endif


HB_FUNC_STATIC( QWEBHISTORYINTERFACE_DELETE )
{
  QWebHistoryInterface * obj = (QWebHistoryInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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