/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QMimeData INHERIT QObject

   DATA class_id INIT Class_Id_QMimeData
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD colorData
   METHOD data
   METHOD formats
   METHOD hasColor
   METHOD hasFormat
   METHOD hasHtml
   METHOD hasImage
   METHOD hasText
   METHOD hasUrls
   METHOD html
   METHOD imageData
   METHOD removeFormat
   METHOD setColorData
   METHOD setData
   METHOD setHtml
   METHOD setImageData
   METHOD setText
   METHOD setUrls
   METHOD text
   METHOD urls
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMimeData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMimeData>
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
#include <QMimeData>
#endif
#endif

#include <QStringList>
#include <QUrl>

/*
QMimeData ()
*/
HB_FUNC_STATIC( QMIMEDATA_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMimeData * o = new QMimeData (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMimeData *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMIMEDATA_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMimeData * obj = (QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QMIMEDATA_CLEAR )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant colorData () const
*/
HB_FUNC_STATIC( QMIMEDATA_COLORDATA )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->colorData (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QByteArray data ( const QString & mimeType ) const
*/
HB_FUNC_STATIC( QMIMEDATA_DATA )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QByteArray * ptr = new QByteArray( obj->data ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
virtual QStringList formats () const
*/
HB_FUNC_STATIC( QMIMEDATA_FORMATS )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->formats (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
bool hasColor () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASCOLOR )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasColor (  ) );
  }
}


/*
virtual bool hasFormat ( const QString & mimeType ) const
*/
HB_FUNC_STATIC( QMIMEDATA_HASFORMAT )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasFormat ( par1 ) );
  }
}


/*
bool hasHtml () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASHTML )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasHtml (  ) );
  }
}


/*
bool hasImage () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASIMAGE )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasImage (  ) );
  }
}


/*
bool hasText () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASTEXT )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasText (  ) );
  }
}


/*
bool hasUrls () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASURLS )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasUrls (  ) );
  }
}


/*
QString html () const
*/
HB_FUNC_STATIC( QMIMEDATA_HTML )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->html (  ).toLatin1().data() );
  }
}


/*
QVariant imageData () const
*/
HB_FUNC_STATIC( QMIMEDATA_IMAGEDATA )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->imageData (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void removeFormat ( const QString & mimeType )
*/
HB_FUNC_STATIC( QMIMEDATA_REMOVEFORMAT )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeFormat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColorData ( const QVariant & color )
*/
HB_FUNC_STATIC( QMIMEDATA_SETCOLORDATA )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setColorData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setData ( const QString & mimeType, const QByteArray & data )
*/
HB_FUNC_STATIC( QMIMEDATA_SETDATA )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
    obj->setData ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & html )
*/
HB_FUNC_STATIC( QMIMEDATA_SETHTML )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setHtml ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setImageData ( const QVariant & image )
*/
HB_FUNC_STATIC( QMIMEDATA_SETIMAGEDATA )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setImageData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QMIMEDATA_SETTEXT )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrls ( const QList<QUrl> & urls )
*/
HB_FUNC_STATIC( QMIMEDATA_SETURLS )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QUrl> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setUrls ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QMIMEDATA_TEXT )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
QList<QUrl> urls () const
*/
HB_FUNC_STATIC( QMIMEDATA_URLS )
{
  QMimeData * obj = (QMimeData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QUrl> list = obj->urls (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QURL" );
    #else
    pDynSym = hb_dynsymFindName( "QURL" );
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
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



#pragma ENDDUMP
