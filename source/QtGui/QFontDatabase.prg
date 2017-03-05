/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDatabase

   DATA pointer
   DATA class_id INIT Class_Id_QFontDatabase
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
   METHOD styleString1
   METHOD styleString2
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

PROCEDURE destroyObject () CLASS QFontDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFontDatabase>
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
#include <QFontDatabase>
#endif

#include <QStringList>

/*
QFontDatabase ()
*/
HB_FUNC_STATIC( QFONTDATABASE_NEW )
{
  QFontDatabase * o = new QFontDatabase (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontDatabase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QFONTDATABASE_DELETE )
{
  QFontDatabase * obj = (QFontDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool bold ( const QString & family, const QString & style ) const
*/
HB_FUNC_STATIC( QFONTDATABASE_BOLD )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->bold ( par1, par2 ) );
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
    int par1 = ISNIL(1)? (int) QFontDatabase::Any : hb_parni(1);
    QStringList strl = obj->families (  (QFontDatabase::WritingSystem) par1 );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QFont * ptr = new QFont( obj->font ( par1, par2, (int) hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retl( obj->isBitmapScalable ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retl( obj->isFixedPitch ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retl( obj->isScalable ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retl( obj->isSmoothlyScalable ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->italic ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QList<int> list = obj->pointSizes ( par1, par2 );
    _qt5xhb_convert_qlist_int_to_array ( list );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QList<int> list = obj->smoothSizes ( par1, par2 );
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
QString styleString ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING1 )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->styleString ( *par1 ).toLatin1().data() );
  }
}


/*
QString styleString ( const QFontInfo & fontInfo )
*/
HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING2 )
{
  QFontDatabase * obj = (QFontDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFontInfo * par1 = (QFontInfo *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->styleString ( *par1 ).toLatin1().data() );
  }
}


//[1]QString styleString ( const QFont & font )
//[2]QString styleString ( const QFontInfo & fontInfo )

HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTDATABASE_STYLESTRING1 );
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    HB_FUNC_EXEC( QFONTDATABASE_STYLESTRING2 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList strl = obj->styles ( par1 );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retni( obj->weight ( par1, par2 ) );
  }
}




/*
static int addApplicationFont ( const QString & fileName )
*/
HB_FUNC_STATIC( QFONTDATABASE_ADDAPPLICATIONFONT )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retni( QFontDatabase::addApplicationFont ( par1 ) );
}


/*
static int addApplicationFontFromData ( const QByteArray & fontData )
*/
HB_FUNC_STATIC( QFONTDATABASE_ADDAPPLICATIONFONTFROMDATA )
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  hb_retni( QFontDatabase::addApplicationFontFromData ( *par1 ) );
}


/*
static QStringList applicationFontFamilies ( int id )
*/
HB_FUNC_STATIC( QFONTDATABASE_APPLICATIONFONTFAMILIES )
{
  QStringList strl = QFontDatabase::applicationFontFamilies ( (int) hb_parni(1) );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}


/*
static bool removeAllApplicationFonts ()
*/
HB_FUNC_STATIC( QFONTDATABASE_REMOVEALLAPPLICATIONFONTS )
{
  hb_retl( QFontDatabase::removeAllApplicationFonts (  ) );
}


/*
static bool removeApplicationFont ( int id )
*/
HB_FUNC_STATIC( QFONTDATABASE_REMOVEAPPLICATIONFONT )
{
  hb_retl( QFontDatabase::removeApplicationFont ( (int) hb_parni(1) ) );
}


/*
static QList<int> standardSizes ()
*/
HB_FUNC_STATIC( QFONTDATABASE_STANDARDSIZES )
{
  QList<int> list = QFontDatabase::standardSizes (  );
  _qt5xhb_convert_qlist_int_to_array ( list );
}


/*
static bool supportsThreadedFontRendering ()
*/
HB_FUNC_STATIC( QFONTDATABASE_SUPPORTSTHREADEDFONTRENDERING )
{
  hb_retl( QFontDatabase::supportsThreadedFontRendering (  ) );
}


/*
static QString writingSystemName ( WritingSystem writingSystem )
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMNAME )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QFontDatabase::writingSystemName (  (QFontDatabase::WritingSystem) par1 ).toLatin1().data() );
}


/*
static QString writingSystemSample ( WritingSystem writingSystem )
*/
HB_FUNC_STATIC( QFONTDATABASE_WRITINGSYSTEMSAMPLE )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QFontDatabase::writingSystemSample (  (QFontDatabase::WritingSystem) par1 ).toLatin1().data() );
}



HB_FUNC_STATIC( QFONTDATABASE_NEWFROM )
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

HB_FUNC_STATIC( QFONTDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONTDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QFONTDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONTDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QFONTDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONTDATABASE_SETSELFDESTRUCTION )
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