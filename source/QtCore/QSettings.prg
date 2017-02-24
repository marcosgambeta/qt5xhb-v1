/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTCODEC
REQUEST QVARIANT

CLASS QSettings INHERIT QObject

   DATA class_id INIT Class_Id_QSettings
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
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
   METHOD setIniCodec1
   METHOD setIniCodec2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSettings>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSettings>
#endif
#endif

#include <QStringList>

/*
QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QSettings * o = new QSettings ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qtxhb_itemGetPtr(4);
  QSettings * o = new QSettings (  (QSettings::Scope) par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QString par3 = QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QObject * par5 = ISNIL(5)? 0 : (QObject *) _qtxhb_itemGetPtr(5);
  QSettings * o = new QSettings (  (QSettings::Format) par1,  (QSettings::Scope) par2, par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QSettings * o = new QSettings ( par1,  (QSettings::Format) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSettings ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSETTINGS_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QSettings * o = new QSettings ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[2]QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[3]QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[4]QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
//[5]QSettings ( QObject * parent = 0 )

HB_FUNC_STATIC( QSETTINGS_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW2 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISCHAR(4)||ISNIL(4)) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW4 );
  }
  else if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSETTINGS_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSETTINGS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QStringList allKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_ALLKEYS )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->allKeys (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QString applicationName () const
*/
HB_FUNC_STATIC( QSETTINGS_APPLICATIONNAME )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->applicationName (  ).toLatin1().data() );
  }
}


/*
void beginGroup ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINGROUP )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->beginGroup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int beginReadArray ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINREADARRAY )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->beginReadArray ( par1 ) );
  }
}


/*
void beginWriteArray ( const QString & prefix, int size = -1 )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINWRITEARRAY )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->beginWriteArray ( par1, (int) ISNIL(2)? -1 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList childGroups () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDGROUPS )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->childGroups (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList childKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDKEYS )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->childKeys (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSETTINGS_CLEAR )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QString & key ) const
*/
HB_FUNC_STATIC( QSETTINGS_CONTAINS )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
void endArray ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDARRAY )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endArray (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endGroup ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDGROUP )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endGroup (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fallbacksEnabled () const
*/
HB_FUNC_STATIC( QSETTINGS_FALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fallbacksEnabled (  ) );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QSETTINGS_FILENAME )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
Format format () const
*/
HB_FUNC_STATIC( QSETTINGS_FORMAT )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->format (  ) );
  }
}


/*
QString group () const
*/
HB_FUNC_STATIC( QSETTINGS_GROUP )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->group (  ).toLatin1().data() );
  }
}


/*
QTextCodec * iniCodec () const
*/
HB_FUNC_STATIC( QSETTINGS_INICODEC )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCodec * ptr = obj->iniCodec (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QSETTINGS_ISWRITABLE )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
QString organizationName () const
*/
HB_FUNC_STATIC( QSETTINGS_ORGANIZATIONNAME )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->organizationName (  ).toLatin1().data() );
  }
}


/*
void remove ( const QString & key )
*/
HB_FUNC_STATIC( QSETTINGS_REMOVE )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->remove ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Scope scope () const
*/
HB_FUNC_STATIC( QSETTINGS_SCOPE )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->scope (  ) );
  }
}


/*
void setArrayIndex ( int i )
*/
HB_FUNC_STATIC( QSETTINGS_SETARRAYINDEX )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setArrayIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFallbacksEnabled ( bool b )
*/
HB_FUNC_STATIC( QSETTINGS_SETFALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFallbacksEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIniCodec ( QTextCodec * codec )
*/
HB_FUNC_STATIC( QSETTINGS_SETINICODEC1 )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCodec * par1 = (QTextCodec *) _qtxhb_itemGetPtr(1);
    obj->setIniCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIniCodec ( const char * codecName )
*/
HB_FUNC_STATIC( QSETTINGS_SETINICODEC2 )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
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
    HB_FUNC_EXEC( QSETTINGS_SETINICODEC1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSETTINGS_SETINICODEC2 );
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
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Status status () const
*/
HB_FUNC_STATIC( QSETTINGS_STATUS )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}


/*
void sync ()
*/
HB_FUNC_STATIC( QSETTINGS_SYNC )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sync (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QSETTINGS_VALUE )
{
  QSettings * obj = (QSettings *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->value ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
static Format defaultFormat ()
*/
HB_FUNC_STATIC( QSETTINGS_DEFAULTFORMAT )
{
  hb_retni( QSettings::defaultFormat (  ) );
}



/*
static void setDefaultFormat ( Format format )
*/
HB_FUNC_STATIC( QSETTINGS_SETDEFAULTFORMAT )
{
  int par1 = hb_parni(1);
  QSettings::setDefaultFormat (  (QSettings::Format) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setPath ( Format format, Scope scope, const QString & path )
*/
HB_FUNC_STATIC( QSETTINGS_SETPATH )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QString par3 = QLatin1String( hb_parc(3) );
  QSettings::setPath (  (QSettings::Format) par1,  (QSettings::Scope) par2, par3 );
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
