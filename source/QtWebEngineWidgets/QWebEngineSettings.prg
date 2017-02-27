/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QWebEngineSettings

   DATA pointer
   DATA class_id INIT Class_Id_QWebEngineSettings
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD globalSettings
   METHOD fontFamily
   METHOD setFontFamily
   METHOD resetFontFamily
   METHOD fontSize
   METHOD setFontSize
   METHOD resetFontSize
   METHOD setAttribute
   METHOD testAttribute
   METHOD resetAttribute
   METHOD defaultTextEncoding
   METHOD setDefaultTextEncoding
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEngineSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineSettings>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineSettings>
#endif
#endif



/*
static QWebEngineSettings *globalSettings()
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_GLOBALSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * ptr = QWebEngineSettings::globalSettings (  );
  _qt5xhb_createReturnClass ( ptr, "QWEBENGINESETTINGS" );
#endif
}


/*
QString fontFamily(FontFamily which) const
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_FONTFAMILY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->fontFamily (  (QWebEngineSettings::FontFamily) par1 ).toLatin1().data() );
  }
#endif
}

/*
void setFontFamily(FontFamily which, const QString &family)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_SETFONTFAMILY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setFontFamily (  (QWebEngineSettings::FontFamily) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void resetFontFamily(FontFamily which)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_RESETFONTFAMILY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resetFontFamily (  (QWebEngineSettings::FontFamily) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int fontSize(FontSize type) const
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_FONTSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->fontSize (  (QWebEngineSettings::FontSize) par1 ) );
  }
#endif
}

/*
void setFontSize(FontSize type, int size)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_SETFONTSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontSize (  (QWebEngineSettings::FontSize) par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void resetFontSize(FontSize type)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_RESETFONTSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resetFontSize (  (QWebEngineSettings::FontSize) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setAttribute(WebAttribute attr, bool on)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_SETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAttribute (  (QWebEngineSettings::WebAttribute) par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool testAttribute(WebAttribute attr) const
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_TESTATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testAttribute (  (QWebEngineSettings::WebAttribute) par1 ) );
  }
#endif
}

/*
void resetAttribute(WebAttribute attr)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_RESETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resetAttribute (  (QWebEngineSettings::WebAttribute) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString defaultTextEncoding() const
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_DEFAULTTEXTENCODING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->defaultTextEncoding (  ).toLatin1().data() );
  }
#endif
}

/*
void setDefaultTextEncoding(const QString &encoding)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_SETDEFAULTTEXTENCODING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDefaultTextEncoding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QWEBENGINESETTINGS_NEWFROM )
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

HB_FUNC_STATIC( QWEBENGINESETTINGS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBENGINESETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINESETTINGS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBENGINESETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINESETTINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBENGINESETTINGS_SETSELFDESTRUCTION )
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