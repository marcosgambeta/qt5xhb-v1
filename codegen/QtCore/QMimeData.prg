$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QMimeData INHERIT QObject

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QUrl>

/*
QMimeData ()
*/
$constructor=|new|

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
QVariant colorData () const
*/
$method=|QVariant|colorData|

/*
QByteArray data ( const QString & mimeType ) const
*/
$method=|QByteArray|data|const QString &

/*
virtual QStringList formats () const
*/
$method=|QStringList|formats|

/*
bool hasColor () const
*/
$method=|bool|hasColor|

/*
virtual bool hasFormat ( const QString & mimeType ) const
*/
$method=|bool|hasFormat|const QString &

/*
bool hasHtml () const
*/
$method=|bool|hasHtml|

/*
bool hasImage () const
*/
$method=|bool|hasImage|

/*
bool hasText () const
*/
$method=|bool|hasText|

/*
bool hasUrls () const
*/
$method=|bool|hasUrls|

/*
QString html () const
*/
$method=|QString|html|

/*
QVariant imageData () const
*/
$method=|QVariant|imageData|

/*
void removeFormat ( const QString & mimeType )
*/
$method=|void|removeFormat|const QString &

/*
void setColorData ( const QVariant & color )
*/
$method=|void|setColorData|const QVariant &

/*
void setData ( const QString & mimeType, const QByteArray & data )
*/
$method=|void|setData|const QString &,const QByteArray &

/*
void setHtml ( const QString & html )
*/
$method=|void|setHtml|const QString &

/*
void setImageData ( const QVariant & image )
*/
$method=|void|setImageData|const QVariant &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setUrls ( const QList<QUrl> & urls )
*/
HB_FUNC_STATIC( QMIMEDATA_SETURLS )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text () const
*/
$method=|QString|text|

/*
QList<QUrl> urls () const
*/
HB_FUNC_STATIC( QMIMEDATA_URLS )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QUrl> list = obj->urls ();
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
