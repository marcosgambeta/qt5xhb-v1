/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QVARIANT
#endif

CLASS QSettings INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD allKeys
   METHOD applicationName
   METHOD beginGroup
   METHOD beginReadArray
   METHOD beginWriteArray
   METHOD childGroups
   METHOD childKeys
   METHOD clear
   METHOD contains
   METHOD endArray
   METHOD endGroup
   METHOD fallbacksEnabled
   METHOD fileName
   METHOD format
   METHOD group
   METHOD iniCodec
   METHOD isWritable
   METHOD organizationName
   METHOD remove
   METHOD scope
   METHOD setArrayIndex
   METHOD setFallbacksEnabled
   METHOD setIniCodec
   METHOD setValue
   METHOD status
   METHOD sync
   METHOD value
   METHOD defaultFormat
   METHOD setDefaultFormat
   METHOD setPath

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSettings>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSettings>
#endif

#include <QStringList>

/*
QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new1 ()
{
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qt5xhb_itemGetPtr(3);
  QSettings * o = new QSettings ( PQSTRING(1), par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new2 ()
{
  int par1 = hb_parni(1);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qt5xhb_itemGetPtr(4);
  QSettings * o = new QSettings (  (QSettings::Scope) par1, PQSTRING(2), par3, par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new3 ()
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QObject * par5 = ISNIL(5)? 0 : (QObject *) _qt5xhb_itemGetPtr(5);
  QSettings * o = new QSettings (  (QSettings::Format) par1,  (QSettings::Scope) par2, PQSTRING(3), par4, par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
*/
void QSettings_new4 ()
{
  int par2 = hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qt5xhb_itemGetPtr(3);
  QSettings * o = new QSettings ( PQSTRING(1),  (QSettings::Format) par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( QObject * parent = 0 )
*/
void QSettings_new5 ()
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSettings * o = new QSettings ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[2]QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[3]QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[4]QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
//[5]QSettings ( QObject * parent = 0 )

HB_FUNC_STATIC( QSETTINGS_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTQOBJECT(3) )
  {
    QSettings_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTQOBJECT(4) )
  {
    QSettings_new2();
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && ISOPTCHAR(4) && ISOPTQOBJECT(5) )
  {
    QSettings_new3();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QSettings_new4();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSettings_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSETTINGS_DELETE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QStringList allKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_ALLKEYS )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->allKeys ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
QString applicationName () const
*/
HB_FUNC_STATIC( QSETTINGS_APPLICATIONNAME )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->applicationName () ) );
  }
}

/*
void beginGroup ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINGROUP )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->beginGroup ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int beginReadArray ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINREADARRAY )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      hb_retni( obj->beginReadArray ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void beginWriteArray ( const QString & prefix, int size = -1 )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINWRITEARRAY )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      obj->beginWriteArray ( PQSTRING(1), (int) ISNIL(2)? -1 : hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList childGroups () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDGROUPS )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->childGroups ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
QStringList childKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDKEYS )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->childKeys ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QSETTINGS_CLEAR )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool contains ( const QString & key ) const
*/
HB_FUNC_STATIC( QSETTINGS_CONTAINS )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      hb_retl( obj->contains ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void endArray ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDARRAY )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->endArray ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void endGroup ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDGROUP )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->endGroup ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool fallbacksEnabled () const
*/
HB_FUNC_STATIC( QSETTINGS_FALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->fallbacksEnabled () );
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QSETTINGS_FILENAME )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->fileName () ) );
  }
}

/*
Format format () const
*/
HB_FUNC_STATIC( QSETTINGS_FORMAT )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->format () );
  }
}

/*
QString group () const
*/
HB_FUNC_STATIC( QSETTINGS_GROUP )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->group () ) );
  }
}

/*
QTextCodec * iniCodec () const
*/
HB_FUNC_STATIC( QSETTINGS_INICODEC )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * ptr = obj->iniCodec ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}

/*
bool isWritable () const
*/
HB_FUNC_STATIC( QSETTINGS_ISWRITABLE )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isWritable () );
  }
}

/*
QString organizationName () const
*/
HB_FUNC_STATIC( QSETTINGS_ORGANIZATIONNAME )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->organizationName () ) );
  }
}

/*
void remove ( const QString & key )
*/
HB_FUNC_STATIC( QSETTINGS_REMOVE )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->remove ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Scope scope () const
*/
HB_FUNC_STATIC( QSETTINGS_SCOPE )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->scope () );
  }
}

/*
void setArrayIndex ( int i )
*/
HB_FUNC_STATIC( QSETTINGS_SETARRAYINDEX )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setArrayIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFallbacksEnabled ( bool b )
*/
HB_FUNC_STATIC( QSETTINGS_SETFALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFallbacksEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIniCodec ( QTextCodec * codec )
*/
void QSettings_setIniCodec1 ()
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCodec * par1 = (QTextCodec *) _qt5xhb_itemGetPtr(1);
    obj->setIniCodec ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIniCodec ( const char * codecName )
*/
void QSettings_setIniCodec2 ()
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->setIniCodec (  (const char *) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QSETTINGS_SETINICODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QSettings_setIniCodec1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSettings_setIniCodec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValue ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QSETTINGS_SETVALUE )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQVARIANT(2) )
    {
      QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
      obj->setValue ( PQSTRING(1), *par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Status status () const
*/
HB_FUNC_STATIC( QSETTINGS_STATUS )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->status () );
  }
}

/*
void sync ()
*/
HB_FUNC_STATIC( QSETTINGS_SYNC )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->sync ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant value ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QSETTINGS_VALUE )
{
  QSettings * obj = (QSettings *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
    {
      QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
      QVariant * ptr = new QVariant( obj->value ( PQSTRING(1), par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static Format defaultFormat ()
*/
HB_FUNC_STATIC( QSETTINGS_DEFAULTFORMAT )
{
  hb_retni( QSettings::defaultFormat () );
}

/*
static void setDefaultFormat ( Format format )
*/
HB_FUNC_STATIC( QSETTINGS_SETDEFAULTFORMAT )
{
  if( ISNUM(1) )
  {
    int par1 = hb_parni(1);
    QSettings::setDefaultFormat (  (QSettings::Format) par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setPath ( Format format, Scope scope, const QString & path )
*/
HB_FUNC_STATIC( QSETTINGS_SETPATH )
{
  if( ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QSettings::setPath (  (QSettings::Format) par1,  (QSettings::Scope) par2, PQSTRING(3) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
