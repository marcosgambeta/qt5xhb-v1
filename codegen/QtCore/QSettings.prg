%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
$internalConstructor=|new1|const QString &,const QString &=QString(),QObject *=0

$prototype=QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
$internalConstructor=|new2|QSettings::Scope,const QString &,const QString &=QString(),QObject *=0

$prototype=QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
$internalConstructor=|new3|QSettings::Format,QSettings::Scope,const QString &,const QString &=QString(),QObject *=0

$prototype=QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
$internalConstructor=|new4|const QString &,QSettings::Format,QObject *=0

$prototype=QSettings ( QObject * parent = 0 )
$internalConstructor=|new5|QObject *=0

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

$deleteMethod

$prototype=QStringList allKeys () const
$method=|QStringList|allKeys|

$prototype=QString applicationName () const
$method=|QString|applicationName|

$prototype=void beginGroup ( const QString & prefix )
$method=|void|beginGroup|const QString &

$prototype=int beginReadArray ( const QString & prefix )
$method=|int|beginReadArray|const QString &

$prototype=void beginWriteArray ( const QString & prefix, int size = -1 )
$method=|void|beginWriteArray|const QString &,int=-1

$prototype=QStringList childGroups () const
$method=|QStringList|childGroups|

$prototype=QStringList childKeys () const
$method=|QStringList|childKeys|

$prototype=void clear ()
$method=|void|clear|

$prototype=bool contains ( const QString & key ) const
$method=|bool|contains|const QString &

$prototype=void endArray ()
$method=|void|endArray|

$prototype=void endGroup ()
$method=|void|endGroup|

$prototype=bool fallbacksEnabled () const
$method=|bool|fallbacksEnabled|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=Format format () const
$method=|QSettings::Format|format|

$prototype=QString group () const
$method=|QString|group|

$prototype=QTextCodec * iniCodec () const
$method=|QTextCodec *|iniCodec|

$prototype=bool isWritable () const
$method=|bool|isWritable|

$prototype=QString organizationName () const
$method=|QString|organizationName|

$prototype=void remove ( const QString & key )
$method=|void|remove|const QString &

$prototype=Scope scope () const
$method=|QSettings::Scope|scope|

$prototype=void setArrayIndex ( int i )
$method=|void|setArrayIndex|int

$prototype=void setFallbacksEnabled ( bool b )
$method=|void|setFallbacksEnabled|bool

$prototype=void setIniCodec ( QTextCodec * codec )
$internalMethod=|void|setIniCodec,setIniCodec1|QTextCodec *

$prototype=void setIniCodec ( const char * codecName )
$internalMethod=|void|setIniCodec,setIniCodec2|const char *

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

$prototype=void setValue ( const QString & key, const QVariant & value )
$method=|void|setValue|const QString &,const QVariant &

$prototype=Status status () const
$method=|QSettings::Status|status|

$prototype=void sync ()
$method=|void|sync|

$prototype=QVariant value ( const QString & key, const QVariant & defaultValue = QVariant() ) const
$method=|QVariant|value|const QString &,const QVariant &=QVariant()

$prototype=static Format defaultFormat ()
$staticMethod=|QSettings::Format|defaultFormat|

$prototype=static void setDefaultFormat ( Format format )
$staticMethod=|void|setDefaultFormat|QSettings::Format

$prototype=static void setPath ( Format format, Scope scope, const QString & path )
$staticMethod=|void|setPath|QSettings::Format,QSettings::Scope,const QString &

#pragma ENDDUMP
