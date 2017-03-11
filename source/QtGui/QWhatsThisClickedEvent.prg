/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QWhatsThisClickedEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QWhatsThisClickedEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD href
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWhatsThisClickedEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWhatsThisClickedEvent>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWhatsThisClickedEvent>
#endif

/*
QWhatsThisClickedEvent(const QString &href)
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_NEW )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QWhatsThisClickedEvent * o = new QWhatsThisClickedEvent ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWhatsThisClickedEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_DELETE )
{
  QWhatsThisClickedEvent * obj = (QWhatsThisClickedEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString href() const
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_HREF )
{
  QWhatsThisClickedEvent * obj = (QWhatsThisClickedEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->href (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
