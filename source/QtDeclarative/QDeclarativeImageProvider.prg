/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QDeclarativeImageProvider

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeImageProvider
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeImageProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeImageProvider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeImageProvider>
#endif

/*
QDeclarativeImageProvider ( ImageType type )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    int par1 = hb_parni(1);
    QDeclarativeImageProvider * o = new QDeclarativeImageProvider (  (QDeclarativeImageProvider::ImageType) par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_DELETE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
ImageType imageType () const
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_IMAGETYPE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->imageType (  ) );
  }
}

/*
virtual QImage requestImage ( const QString & id, QSize * size, const QSize & requestedSize )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_REQUESTIMAGE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
      QSize * par3 = (QSize *) _qt5xhb_itemGetPtr(3);
      QImage * ptr = new QImage( obj->requestImage ( par1, par2, *par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPixmap requestPixmap ( const QString & id, QSize * size, const QSize & requestedSize )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_REQUESTPIXMAP )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
      QSize * par3 = (QSize *) _qt5xhb_itemGetPtr(3);
      QPixmap * ptr = new QPixmap( obj->requestPixmap ( par1, par2, *par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEIMAGEPROVIDER_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEIMAGEPROVIDER_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
