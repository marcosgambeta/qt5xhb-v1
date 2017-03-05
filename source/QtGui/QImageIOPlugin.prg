/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QIMAGEIOHANDLER
#endif

CLASS QImageIOPlugin INHERIT QObject

   DATA class_id INIT Class_Id_QImageIOPlugin
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD capabilities
   METHOD create
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImageIOPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QImageIOPlugin>
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
#include <QImageIOPlugin>
#endif


HB_FUNC_STATIC( QIMAGEIOPLUGIN_DELETE )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual Capabilities capabilities ( QIODevice * device, const QByteArray & format ) const = 0
*/
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CAPABILITIES )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
    hb_retni( obj->capabilities ( par1, *par2 ) );
  }
}


/*
virtual QImageIOHandler * create ( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
*/
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CREATE )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
    QImageIOHandler * ptr = obj->create ( par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QIMAGEIOHANDLER" );
  }
}




#pragma ENDDUMP
