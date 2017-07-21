$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
#endif

CLASS QIcon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD cacheKey
   METHOD isNull
   METHOD name
   METHOD paint
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

$destructor

#pragma BEGINDUMP

$includes

/*
QIcon ()
*/
$internalConstructor=|new1|

/*
QIcon ( const QPixmap & pixmap )
*/
$internalConstructor=|new2|const QPixmap &

/*
QIcon ( const QIcon & other )
*/
void QIcon_new3 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QIcon * o = new QIcon ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QIcon ( const QString & fileName )
*/
$internalConstructor=|new4|const QString &

//[1]QIcon ()
//[2]QIcon ( const QPixmap & pixmap )
//[3]QIcon ( const QIcon & other )
//[4]QIcon ( const QString & fileName )
//[5]QIcon ( QIconEngine * engine ) // TODO: implementar
//[6]QIcon ( QIconEngineV2 * engine ) // TODO: implementar

HB_FUNC_STATIC( QICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QIcon_new1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QIcon_new2();
  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    QIcon_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QIcon_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSize actualSize ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
$method=|QSize|actualSize|const QSize &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
void addFile ( const QString & fileName, const QSize & size = QSize(), Mode mode = Normal, State state = Off )
*/
HB_FUNC_STATIC( QICON_ADDFILE )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && (ISQSIZE(2)||ISNIL(2)) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      QSize par2 = ISNIL(2)? QSize() : *(QSize *) _qt5xhb_itemGetPtr(2);
      int par3 = ISNIL(3)? (int) QIcon::Normal : hb_parni(3);
      int par4 = ISNIL(4)? (int) QIcon::Off : hb_parni(4);
      obj->addFile ( PQSTRING(1), par2, (QIcon::Mode) par3, (QIcon::State) par4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPixmap ( const QPixmap & pixmap, Mode mode = Normal, State state = Off )
*/
$method=|void|addPixmap|const QPixmap &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
QList<QSize> availableSizes ( Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_AVAILABLESIZES )
{
  QIcon * obj = (QIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) && ISOPTNUM(2) )
    {
      int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
      int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
      QList<QSize> list = obj->availableSizes ( (QIcon::Mode) par1, (QIcon::State) par2 );
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 cacheKey () const
*/
$method=|qint64|cacheKey|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QString name () const
*/
$method=|QString|name|

/*
void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
$internalMethod=|void|paint,paint1|QPainter *,const QRect &,Qt::Alignment=Qt::AlignCenter,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
$internalMethod=|void|paint,paint2|QPainter *,int,int,int,int,Qt::Alignment=Qt::AlignCenter,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

//[1]void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
//[2]void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PAINT )
{
  if( ISBETWEEN(2,5) && ISQPAINTER(1) && ISQRECT(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QIcon_paint1();
  }
  else if( ISBETWEEN(5,8) && ISQPAINTER(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) && ISOPTNUM(7) && ISOPTNUM(8) )
  {
    QIcon_paint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
$internalMethod=|QPixmap|pixmap,pixmap1|const QSize &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
*/
$internalMethod=|QPixmap|pixmap,pixmap2|int,int,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const
*/
$internalMethod=|QPixmap|pixmap,pixmap3|int,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

//[1]QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
//[2]QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
//[3]QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PIXMAP )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QIcon_pixmap1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QIcon_pixmap2();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QIcon_pixmap3();
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
  if( ISCHAR(1) && (ISQICON(2)||ISCHAR(2)||ISNIL(2)) )
  {
    QIcon par2 = ISNIL(2)? QIcon() : ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QIcon * ptr = new QIcon( QIcon::fromTheme ( PQSTRING(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool hasThemeIcon ( const QString & name )
*/
$staticMethod=|bool|hasThemeIcon|const QString &

/*
static void setThemeName ( const QString & name )
*/
$staticMethod=|void|setThemeName|const QString &

/*
static void setThemeSearchPaths ( const QStringList & paths )
*/
$staticMethod=|void|setThemeSearchPaths|const QStringList &

/*
static QString themeName ()
*/
$staticMethod=|QString|themeName|

/*
static QStringList themeSearchPaths ()
*/
$staticMethod=|QStringList|themeSearchPaths|

$extraMethods

#pragma ENDDUMP
