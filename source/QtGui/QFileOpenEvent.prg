/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileOpenEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QFileOpenEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD file
   METHOD openFile
   METHOD url
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileOpenEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFileOpenEvent>
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFileOpenEvent>
#endif
#endif

#include <QUrl>

HB_FUNC_STATIC( QFILEOPENEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFileOpenEvent * obj = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
QString file () const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_FILE )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->file (  ).toLatin1().data() );
  }
}


/*
bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_OPENFILE )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFile  * par1 = (QFile  *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retl( obj->openFile ( *par1,  (QIODevice::OpenMode) par2 ) );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_URL )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}



#pragma ENDDUMP
