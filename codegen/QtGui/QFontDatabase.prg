$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bold
   METHOD families
   METHOD font
   METHOD isBitmapScalable
   METHOD isFixedPitch
   METHOD isScalable
   METHOD isSmoothlyScalable
   METHOD italic
   METHOD pointSizes
   METHOD smoothSizes
   METHOD styleString
   METHOD styles
   METHOD weight
   METHOD addApplicationFont
   METHOD addApplicationFontFromData
   METHOD applicationFontFamilies
   METHOD removeAllApplicationFonts
   METHOD removeApplicationFont
   METHOD standardSizes
   METHOD supportsThreadedFontRendering
   METHOD writingSystemName
   METHOD writingSystemSample

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

#include <QStringList>

/*
QFontDatabase ()
*/
HB_FUNC_STATIC( QFONTDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFontDatabase * o = new QFontDatabase ();
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool bold ( const QString & family, const QString & style ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_BOLD )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      RBOOL( obj->bold ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList families ( WritingSystem writingSystem = Any ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_FAMILIES )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QFontDatabase::Any : hb_parni(1);
      RQSTRINGLIST( obj->families ( (QFontDatabase::WritingSystem) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QFont font ( const QString & family, const QString & style, int pointSize ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_FONT )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) && ISNUM(3) )
    {
      QFont * ptr = new QFont( obj->font ( PQSTRING(1), PQSTRING(2), PINT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isBitmapScalable ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISBITMAPSCALABLE )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      RBOOL( obj->isBitmapScalable ( PQSTRING(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFixedPitch ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISFIXEDPITCH )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      RBOOL( obj->isFixedPitch ( PQSTRING(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isScalable ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISSCALABLE )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      RBOOL( obj->isScalable ( PQSTRING(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isSmoothlyScalable ( const QString & family, const QString & style = QString() ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ISSMOOTHLYSCALABLE )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      RBOOL( obj->isSmoothlyScalable ( PQSTRING(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool italic ( const QString & family, const QString & style ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_ITALIC )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      RBOOL( obj->italic ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> pointSizes ( const QString & family, const QString & style = QString() )
*/
HB_FUNC_STATIC( QFONTDATABASE_POINTSIZES )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      QList<int> list = obj->pointSizes ( PQSTRING(1), OPQSTRING(2,QString()) );
      _qt5xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> smoothSizes ( const QString & family, const QString & style )
*/
HB_FUNC_STATIC( QFONTDATABASE_SMOOTHSIZES )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      QList<int> list = obj->smoothSizes ( PQSTRING(1), PQSTRING(2) );
      _qt5xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString styleString ( const QFont & font )
*/
void QFontDatabase_styleString1 ()
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->styleString ( *PQFONT(1) ) );
  }
}

/*
QString styleString ( const QFontInfo & fontInfo )
*/
void QFontDatabase_styleString2 ()
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->styleString ( *PQFONTINFO(1) ) );
  }
}

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

/*
QStringList styles ( const QString & family ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_STYLES )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RQSTRINGLIST( obj->styles ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int weight ( const QString & family, const QString & style ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_WEIGHT )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      RINT( obj->weight ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static int addApplicationFont ( const QString & fileName )
*/
HB_FUNC_STATIC( QFONTDATABASE_ADDAPPLICATIONFONT )
{
  if( ISCHAR(1) )
  {
    RINT( QFontDatabase::addApplicationFont ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static int addApplicationFontFromData ( const QByteArray & fontData )
*/
HB_FUNC_STATIC( QFONTDATABASE_ADDAPPLICATIONFONTFROMDATA )
{
  if( ISQBYTEARRAY(1) )
  {
    RINT( QFontDatabase::addApplicationFontFromData ( *PQBYTEARRAY(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList applicationFontFamilies ( int id )
*/
HB_FUNC_STATIC( QFONTDATABASE_APPLICATIONFONTFAMILIES )
{
  if( ISNUM(1) )
  {
    RQSTRINGLIST( QFontDatabase::applicationFontFamilies ( PINT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool removeAllApplicationFonts ()
*/
HB_FUNC_STATIC( QFONTDATABASE_REMOVEALLAPPLICATIONFONTS )
{
  RBOOL( QFontDatabase::removeAllApplicationFonts () );
}

/*
static bool removeApplicationFont ( int id )
*/
HB_FUNC_STATIC( QFONTDATABASE_REMOVEAPPLICATIONFONT )
{
  if( ISNUM(1) )
  {
    RBOOL( QFontDatabase::removeApplicationFont ( PINT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<int> standardSizes ()
*/
HB_FUNC_STATIC( QFONTDATABASE_STANDARDSIZES )
{
  QList<int> list = QFontDatabase::standardSizes ();
  _qt5xhb_convert_qlist_int_to_array ( list );
}

/*
static bool supportsThreadedFontRendering ()
*/
HB_FUNC_STATIC( QFONTDATABASE_SUPPORTSTHREADEDFONTRENDERING )
{
  RBOOL( QFontDatabase::supportsThreadedFontRendering () );
}

/*
static QString writingSystemName ( WritingSystem writingSystem )
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMNAME )
{
  if( ISNUM(1) )
  {
    RQSTRING( QFontDatabase::writingSystemName ( (QFontDatabase::WritingSystem) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString writingSystemSample ( WritingSystem writingSystem )
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMSAMPLE )
{
  if( ISNUM(1) )
  {
    RQSTRING( QFontDatabase::writingSystemSample ( (QFontDatabase::WritingSystem) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
