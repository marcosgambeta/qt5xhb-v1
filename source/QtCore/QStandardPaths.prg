/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QStandardPaths

   DATA pointer
   DATA class_id INIT Class_Id_QStandardPaths
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD writableLocation
   METHOD standardLocations
   METHOD locate
   METHOD locateAll
   METHOD displayName
   METHOD findExecutable
   METHOD setTestModeEnabled
   METHOD isTestModeEnabled
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStandardPaths
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStandardPaths>
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
#include <QStandardPaths>
#endif
#endif



/*
static QString writableLocation(StandardLocation type)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_WRITABLELOCATION )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QStandardPaths::writableLocation (  (QStandardPaths::StandardLocation) par1 ).toLatin1().data() );
}


/*
static QStringList standardLocations(StandardLocation type)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_STANDARDLOCATIONS )
{
  int par1 = hb_parni(1);
  QStringList strl = QStandardPaths::standardLocations (  (QStandardPaths::StandardLocation) par1 );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}


/*
static QString locate(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATE )
{
  int par1 = hb_parni(1);
  QString par2 = QLatin1String( hb_parc(2) );
  int par3 = ISNIL(3)? (int) QStandardPaths::LocateFile : hb_parni(3);
  hb_retc( (const char *) QStandardPaths::locate (  (QStandardPaths::StandardLocation) par1, par2,  (QStandardPaths::LocateOptions) par3 ).toLatin1().data() );
}


/*
static QStringList locateAll(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATEALL )
{
  int par1 = hb_parni(1);
  QString par2 = QLatin1String( hb_parc(2) );
  int par3 = ISNIL(3)? (int) QStandardPaths::LocateFile : hb_parni(3);
  QStringList strl = QStandardPaths::locateAll (  (QStandardPaths::StandardLocation) par1, par2,  (QStandardPaths::LocateOptions) par3 );
  _qt5xhb_convert_qstringlist_to_array ( strl );
}


/*
static QString displayName(StandardLocation type)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_DISPLAYNAME )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QStandardPaths::displayName (  (QStandardPaths::StandardLocation) par1 ).toLatin1().data() );
}


/*
static QString findExecutable(const QString &executableName, const QStringList &paths = QStringList())
*/
HB_FUNC_STATIC( QSTANDARDPATHS_FINDEXECUTABLE )
{
  QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
  hb_retc( (const char *) QStandardPaths::findExecutable ( par1, par2 ).toLatin1().data() );
}



/*
static void setTestModeEnabled(bool testMode)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_SETTESTMODEENABLED )
{
  QStandardPaths::setTestModeEnabled ( (bool) hb_parl(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool isTestModeEnabled()
*/
HB_FUNC_STATIC( QSTANDARDPATHS_ISTESTMODEENABLED )
{
  hb_retl( QStandardPaths::isTestModeEnabled (  ) );
}



HB_FUNC_STATIC( QSTANDARDPATHS_NEWFROM )
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

HB_FUNC_STATIC( QSTANDARDPATHS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTANDARDPATHS_NEWFROM );
}

HB_FUNC_STATIC( QSTANDARDPATHS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTANDARDPATHS_NEWFROM );
}

HB_FUNC_STATIC( QSTANDARDPATHS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTANDARDPATHS_SETSELFDESTRUCTION )
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