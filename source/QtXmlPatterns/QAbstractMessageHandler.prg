/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAbstractMessageHandler INHERIT QObject

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractMessageHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractMessageHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractMessageHandler>
#endif


HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_DELETE )
{
  QAbstractMessageHandler * obj = (QAbstractMessageHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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