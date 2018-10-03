%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QFontDatabase ()
$constructor=|new|

$deleteMethod

$prototype=bool bold ( const QString & family, const QString & style ) const
$method=|bool|bold|const QString &,const QString &

$prototype=QStringList families ( WritingSystem writingSystem = Any ) const
$method=|QStringList|families|QFontDatabase::WritingSystem=QFontDatabase::Any

$prototype=QFont font ( const QString & family, const QString & style, int pointSize ) const
$method=|QFont|font|const QString &,const QString &,int

$prototype=bool isBitmapScalable ( const QString & family, const QString & style = QString() ) const
$method=|bool|isBitmapScalable|const QString &,const QString &=QString()

$prototype=bool isFixedPitch ( const QString & family, const QString & style = QString() ) const
$method=|bool|isFixedPitch|const QString &,const QString &=QString()

$prototype=bool isScalable ( const QString & family, const QString & style = QString() ) const
$method=|bool|isScalable|const QString &,const QString &=QString()

$prototype=bool isSmoothlyScalable ( const QString & family, const QString & style = QString() ) const
$method=|bool|isSmoothlyScalable|const QString &,const QString &=QString()

$prototype=bool italic ( const QString & family, const QString & style ) const
$method=|bool|italic|const QString &,const QString &

$prototype=QList<int> pointSizes ( const QString & family, const QString & style = QString() )
$method=|QList<int>|pointSizes|const QString &,const QString &=QString()

$prototype=QList<int> smoothSizes ( const QString & family, const QString & style )
$method=|QList<int>|smoothSizes|const QString &,const QString &

$prototype=QString styleString ( const QFont & font )
$internalMethod=|QString|styleString,styleString1|const QFont &

$prototype=QString styleString ( const QFontInfo & fontInfo )
$internalMethod=|QString|styleString,styleString2|const QFontInfo &

//[1]QString styleString ( const QFont & font )
//[2]QString styleString ( const QFontInfo & fontInfo )

HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontDatabase_styleString1();
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    QFontDatabase_styleString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=styleString

$prototype=QStringList styles ( const QString & family ) const
$method=|QStringList|styles|const QString &

$prototype=int weight ( const QString & family, const QString & style ) const
$method=|int|weight|const QString &,const QString &

$prototype=static int addApplicationFont ( const QString & fileName )
$staticMethod=|int|addApplicationFont|const QString &

$prototype=static int addApplicationFontFromData ( const QByteArray & fontData )
$staticMethod=|int|addApplicationFontFromData|const QByteArray &

$prototype=static QStringList applicationFontFamilies ( int id )
$staticMethod=|QStringList|applicationFontFamilies|int

$prototype=static bool removeAllApplicationFonts ()
$staticMethod=|bool|removeAllApplicationFonts|

$prototype=static bool removeApplicationFont ( int id )
$staticMethod=|bool|removeApplicationFont|int

$prototype=static QList<int> standardSizes ()
$staticMethod=|QList<int>|standardSizes|

$prototype=static bool supportsThreadedFontRendering ()
$staticMethod=|bool|supportsThreadedFontRendering|

$prototype=static QString writingSystemName ( WritingSystem writingSystem )
$staticMethod=|QString|writingSystemName|QFontDatabase::WritingSystem

$prototype=static QString writingSystemSample ( WritingSystem writingSystem )
$staticMethod=|QString|writingSystemSample|QFontDatabase::WritingSystem

$extraMethods

#pragma ENDDUMP
