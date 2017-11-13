/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStandardPaths

   DATA pointer
   DATA self_destruction INIT .F.

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
#include <QStandardPaths>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStandardPaths>
#endif

/*
static QString writableLocation(StandardLocation type)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_WRITABLELOCATION )
{
  if( ISNUM(1) )
  {
    RQSTRING( QStandardPaths::writableLocation ( (QStandardPaths::StandardLocation) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList standardLocations(StandardLocation type)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_STANDARDLOCATIONS )
{
  if( ISNUM(1) )
  {
    RQSTRINGLIST( QStandardPaths::standardLocations ( (QStandardPaths::StandardLocation) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString locate(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATE )
{
  if( ISNUM(1) && ISCHAR(2) && ISOPTNUM(3) )
  {
    int par3 = ISNIL(3)? (int) QStandardPaths::LocateFile : hb_parni(3);
    RQSTRING( QStandardPaths::locate ( (QStandardPaths::StandardLocation) hb_parni(1), PQSTRING(2), (QStandardPaths::LocateOptions) par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList locateAll(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATEALL )
{
  if( ISNUM(1) && ISCHAR(2) && ISOPTNUM(3) )
  {
    int par3 = ISNIL(3)? (int) QStandardPaths::LocateFile : hb_parni(3);
    RQSTRINGLIST( QStandardPaths::locateAll ( (QStandardPaths::StandardLocation) hb_parni(1), PQSTRING(2), (QStandardPaths::LocateOptions) par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString displayName(StandardLocation type)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_DISPLAYNAME )
{
  if( ISNUM(1) )
  {
    RQSTRING( QStandardPaths::displayName ( (QStandardPaths::StandardLocation) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString findExecutable(const QString &executableName, const QStringList &paths = QStringList())
*/
HB_FUNC_STATIC( QSTANDARDPATHS_FINDEXECUTABLE )
{
  if( ISCHAR(1) && ISOPTARRAY(2) )
  {
    RQSTRING( QStandardPaths::findExecutable ( PQSTRING(1), OPQSTRINGLIST(2,QStringList()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setTestModeEnabled(bool testMode)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_SETTESTMODEENABLED )
{
  if( ISLOG(1) )
  {
    QStandardPaths::setTestModeEnabled ( PBOOL(1) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isTestModeEnabled()
*/
HB_FUNC_STATIC( QSTANDARDPATHS_ISTESTMODEENABLED )
{
  RBOOL( QStandardPaths::isTestModeEnabled () );
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
