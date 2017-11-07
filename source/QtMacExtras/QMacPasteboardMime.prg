/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
#endif

CLASS QMacPasteboardMime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD convertorName
   METHOD canConvert
   METHOD mimeFor
   METHOD flavorFor
   METHOD convertToMime
   METHOD convertFromMime
   METHOD count

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMacPasteboardMime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QMacPasteboardMime>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QMacPasteboardMime>
#endif
#endif

/*
QMacPasteboardMime(char)
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QMacPasteboardMime * o = new QMacPasteboardMime ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QMACPASTEBOARDMIME_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString convertorName() = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CONVERTORNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->convertorName () );
  }
#endif
}


/*
virtual bool canConvert(const QString &mime, QString flav) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CANCONVERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canConvert ( PQSTRING(1), PQSTRING(2) ) );
  }
#endif
}


/*
virtual QString mimeFor(QString flav) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_MIMEFOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->mimeFor ( PQSTRING(1) ) );
  }
#endif
}


/*
virtual QString flavorFor(const QString &mime) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_FLAVORFOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->flavorFor ( PQSTRING(1) ) );
  }
#endif
}


/*
virtual QVariant convertToMime(const QString &mime, QList<QByteArray> data, QString flav) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CONVERTTOMIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QVariant * ptr = new QVariant( obj->convertToMime ( PQSTRING(1), par2, PQSTRING(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
#endif
}


/*
virtual QList<QByteArray> convertFromMime(const QString &mime, QVariant data, QString flav) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CONVERTFROMMIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->convertFromMime ( PQSTRING(1), *PQVARIANT(2), PQSTRING(3) );
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
virtual int count(QMimeData *mimeData)
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QMacPasteboardMime * obj = (QMacPasteboardMime *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMimeData * par1 = (QMimeData *) _qt5xhb_itemGetPtr(1);
    RINT( obj->count ( par1 ) );
  }
#endif
}



HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEWFROM )
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

HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMACPASTEBOARDMIME_NEWFROM );
}

HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMACPASTEBOARDMIME_NEWFROM );
}

HB_FUNC_STATIC( QMACPASTEBOARDMIME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMACPASTEBOARDMIME_SETSELFDESTRUCTION )
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
