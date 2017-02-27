/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
#endif

CLASS QMacPasteboardMime

   DATA pointer
   DATA class_id INIT Class_Id_QMacPasteboardMime
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMacPasteboardMime *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retc( (const char *) obj->convertorName (  ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->canConvert ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->mimeFor ( par1 ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->flavorFor ( par1 ).toLatin1().data() );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QList<QByteArray> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QString par3 = QLatin1String( hb_parc(3) );
    QVariant * ptr = new QVariant( obj->convertToMime ( par1, par2, par3 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    QString par3 = QLatin1String( hb_parc(3) );
    QList<QByteArray> list = obj->convertFromMime ( par1, *par2, par3 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
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
    hb_retni( obj->count ( par1 ) );
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