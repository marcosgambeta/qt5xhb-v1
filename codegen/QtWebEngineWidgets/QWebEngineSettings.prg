$header

#include "hbclass.ch"

CLASS QWebEngineSettings

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
static QWebEngineSettings *globalSettings()
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_GLOBALSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * ptr = QWebEngineSettings::globalSettings ();
  _qt5xhb_createReturnClass ( ptr, "QWEBENGINESETTINGS" );
#endif
}


/*
QString fontFamily(FontFamily which) const
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_FONTFAMILY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->fontFamily ( (QWebEngineSettings::FontFamily) hb_parni(1) ) );
  }
#endif
}

/*
void setFontFamily(FontFamily which, const QString &family)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_SETFONTFAMILY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontFamily ( (QWebEngineSettings::FontFamily) hb_parni(1), PQSTRING(2) );
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
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetFontFamily ( (QWebEngineSettings::FontFamily) hb_parni(1) );
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
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->fontSize ( (QWebEngineSettings::FontSize) hb_parni(1) ) );
  }
#endif
}

/*
void setFontSize(FontSize type, int size)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_SETFONTSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontSize ( (QWebEngineSettings::FontSize) hb_parni(1), PINT(2) );
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
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetFontSize ( (QWebEngineSettings::FontSize) hb_parni(1) );
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
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribute ( (QWebEngineSettings::WebAttribute) hb_parni(1), PBOOL(2) );
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
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->testAttribute ( (QWebEngineSettings::WebAttribute) hb_parni(1) ) );
  }
#endif
}

/*
void resetAttribute(WebAttribute attr)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_RESETATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetAttribute ( (QWebEngineSettings::WebAttribute) hb_parni(1) );
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
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->defaultTextEncoding () );
  }
#endif
}

/*
void setDefaultTextEncoding(const QString &encoding)
*/
HB_FUNC_STATIC( QWEBENGINESETTINGS_SETDEFAULTTEXTENCODING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineSettings * obj = (QWebEngineSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultTextEncoding ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
