%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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
   METHOD toVariant
   METHOD fromVariant

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$prototype=QIcon ()
$internalConstructor=|new1|

$prototype=QIcon ( const QPixmap & pixmap )
$internalConstructor=|new2|const QPixmap &

$prototype=QIcon ( const QIcon & other )
$internalConstructor=|new3|const QIcon &

$prototype=QIcon ( const QString & fileName )
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

$prototype=QSize actualSize ( const QSize & size, Mode mode = Normal, State state = Off ) const
$method=|QSize|actualSize|const QSize &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=void addFile ( const QString & fileName, const QSize & size = QSize(), Mode mode = Normal, State state = Off )
$method=|void|addFile|const QString &,const QSize &=QSize(),QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=void addPixmap ( const QPixmap & pixmap, Mode mode = Normal, State state = Off )
$method=|void|addPixmap|const QPixmap &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=QList<QSize> availableSizes ( Mode mode = Normal, State state = Off ) const
$method=|QList<QSize>|availableSizes|QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=qint64 cacheKey () const
$method=|qint64|cacheKey|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QString name () const
$method=|QString|name|

$prototype=void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
$internalMethod=|void|paint,paint1|QPainter *,const QRect &,Qt::Alignment=Qt::AlignCenter,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
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

$prototype=QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
$internalMethod=|QPixmap|pixmap,pixmap1|const QSize &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
$internalMethod=|QPixmap|pixmap,pixmap2|int,int,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const
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

$prototype=static QIcon fromTheme ( const QString & name, const QIcon & fallback = QIcon() )
$staticMethod=|QIcon|fromTheme|const QString &,const QIcon &=QIcon()

$prototype=static bool hasThemeIcon ( const QString & name )
$staticMethod=|bool|hasThemeIcon|const QString &

$prototype=static void setThemeName ( const QString & name )
$staticMethod=|void|setThemeName|const QString &

$prototype=static void setThemeSearchPaths ( const QStringList & paths )
$staticMethod=|void|setThemeSearchPaths|const QStringList &

$prototype=static QString themeName ()
$staticMethod=|QString|themeName|

$prototype=static QStringList themeSearchPaths ()
$staticMethod=|QStringList|themeSearchPaths|

$variantMethods

$extraMethods

#pragma ENDDUMP
