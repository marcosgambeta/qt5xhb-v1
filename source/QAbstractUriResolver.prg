/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL

CLASS QAbstractUriResolver INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractUriResolver
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD resolve
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractUriResolver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractUriResolver>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractUriResolver>
#endif
#endif

#include <QUrl>


HB_FUNC_STATIC( QABSTRACTURIRESOLVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractUriResolver * obj = (QAbstractUriResolver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QUrl resolve ( const QUrl & relative, const QUrl & baseURI ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTURIRESOLVER_RESOLVE )
{
  QAbstractUriResolver * obj = (QAbstractUriResolver *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
    QUrl * ptr = new QUrl( obj->resolve ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}



#pragma ENDDUMP
