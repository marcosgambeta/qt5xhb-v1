/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
#endif

CLASS QIcon

   DATA pointer
   DATA class_id INIT Class_Id_QIcon
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD cacheKey
   METHOD isNull
   METHOD name
   METHOD paint1
   METHOD paint2
   METHOD paint
   METHOD pixmap1
   METHOD pixmap2
   METHOD pixmap3
   METHOD pixmap
   METHOD fromTheme
   METHOD hasThemeIcon
   METHOD setThemeName
   METHOD setThemeSearchPaths
   METHOD themeName
   METHOD themeSearchPaths

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QIcon>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QIcon>
#endif

/*
QIcon ()
*/
HB_FUNC_STATIC( QICON_NEW1 )
{
  QIcon * o = new QIcon (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QIcon ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QICON_NEW2 )
{
  QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
  QIcon * o = new QIcon ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QIcon ( const QIcon & other )
*/
HB_FUNC_STATIC( QICON_NEW3 )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QIcon * o = new QIcon ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QIcon ( const QString & fileName )
*/
HB_FUNC_STATIC( QICON_NEW4 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QIcon * o = new QIcon ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QIcon ()
//[2]QIcon ( const QPixmap & pixmap )
//[3]QIcon ( const QIcon & other )
//[4]QIcon ( const QString & fileName )
//[5]QIcon ( QIconEngine * engine )
//[6]QIcon ( QIconEngineV2 * engine )

HB_FUNC_STATIC( QICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QICON_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QICON_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    HB_FUNC_EXEC( QICON_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QICON_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QICON_DELETE )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSize actualSize ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_ACTUALSIZE )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    QSize * ptr = new QSize( obj->actualSize ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void addFile ( const QString & fileName, const QSize & size = QSize(), Mode mode = Normal, State state = Off )
*/
HB_FUNC_STATIC( QICON_ADDFILE )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSize par2 = ISNIL(2)? QSize() : *(QSize *) _qt5xhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) QIcon::Normal : hb_parni(3);
    int par4 = ISNIL(4)? (int) QIcon::Off : hb_parni(4);
    obj->addFile ( par1, par2,  (QIcon::Mode) par3,  (QIcon::State) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addPixmap ( const QPixmap & pixmap, Mode mode = Normal, State state = Off )
*/
HB_FUNC_STATIC( QICON_ADDPIXMAP )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    obj->addPixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QSize> availableSizes ( Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_AVAILABLESIZES )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
    int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
    QList<QSize> list = obj->availableSizes (  (QIcon::Mode) par1,  (QIcon::State) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
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
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
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


/*
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QICON_CACHEKEY )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cacheKey (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QICON_ISNULL )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QICON_NAME )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_PAINT1 )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    QRect * par2 = (QRect *) _qt5xhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) Qt::AlignCenter : hb_parni(3);
    int par4 = ISNIL(4)? (int) QIcon::Normal : hb_parni(4);
    int par5 = ISNIL(5)? (int) QIcon::Off : hb_parni(5);
    obj->paint ( par1, *par2,  (Qt::Alignment) par3,  (QIcon::Mode) par4,  (QIcon::State) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_PAINT2 )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    int par6 = ISNIL(6)? (int) Qt::AlignCenter : hb_parni(6);
    int par7 = ISNIL(7)? (int) QIcon::Normal : hb_parni(7);
    int par8 = ISNIL(8)? (int) QIcon::Off : hb_parni(8);
    obj->paint ( par1, (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5),  (Qt::Alignment) par6,  (QIcon::Mode) par7,  (QIcon::State) par8 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
//[2]void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PAINT )
{
  if( ISBETWEEN(2,5) && ISQPAINTER(1) && ISQRECT(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QICON_PAINT1 );
  }
  else if( ISBETWEEN(5,8) && ISQPAINTER(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) && ISOPTNUM(7) && ISOPTNUM(8) )
  {
    HB_FUNC_EXEC( QICON_PAINT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_PIXMAP1 )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->pixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_PIXMAP2 )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QIcon::Normal : hb_parni(3);
    int par4 = ISNIL(4)? (int) QIcon::Off : hb_parni(4);
    QPixmap * ptr = new QPixmap( obj->pixmap ( (int) hb_parni(1), (int) hb_parni(2),  (QIcon::Mode) par3,  (QIcon::State) par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_PIXMAP3 )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->pixmap ( (int) hb_parni(1),  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


//[1]QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
//[2]QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
//[3]QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PIXMAP )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QICON_PIXMAP1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QICON_PIXMAP2 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QICON_PIXMAP3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QIcon fromTheme ( const QString & name, const QIcon & fallback = QIcon() )
*/
HB_FUNC_STATIC( QICON_FROMTHEME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QIcon par2 = ISNIL(2)? QIcon() : ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
  QIcon * ptr = new QIcon( QIcon::fromTheme ( par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QICON", true );
}


/*
static bool hasThemeIcon ( const QString & name )
*/
HB_FUNC_STATIC( QICON_HASTHEMEICON )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QIcon::hasThemeIcon ( par1 ) );
}


/*
static void setThemeName ( const QString & name )
*/
HB_FUNC_STATIC( QICON_SETTHEMENAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QIcon::setThemeName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setThemeSearchPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QICON_SETTHEMESEARCHPATHS )
{
  QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
  //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
  //int i1;
  //int nLen1 = hb_arrayLen(aStrings1);
  //for (i1=0;i1<nLen1;i1++)
  //{
  //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
  //  par1 << temp;
  //}
  QIcon::setThemeSearchPaths ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QString themeName ()
*/
HB_FUNC_STATIC( QICON_THEMENAME )
{
  hb_retc( (const char *) QIcon::themeName (  ).toLatin1().data() );
}


/*
static QStringList themeSearchPaths ()
*/
HB_FUNC_STATIC( QICON_THEMESEARCHPATHS )
{
  QStringList strl = QIcon::themeSearchPaths (  );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}



HB_FUNC_STATIC( QICON_NEWFROM )
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

HB_FUNC_STATIC( QICON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QICON_NEWFROM );
}

HB_FUNC_STATIC( QICON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QICON_NEWFROM );
}

HB_FUNC_STATIC( QICON_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QICON_SETSELFDESTRUCTION )
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