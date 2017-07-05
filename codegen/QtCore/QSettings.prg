$header

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

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new1 ()
{
  QSettings * o = new QSettings ( PQSTRING(1), OPQSTRING(2,QString()), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new2 ()
{
  QSettings * o = new QSettings ( (QSettings::Scope) hb_parni(1), PQSTRING(2), OPQSTRING(3,QString()), OPQOBJECT(4,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new3 ()
{
  QSettings * o = new QSettings ( (QSettings::Format) hb_parni(1), (QSettings::Scope) hb_parni(2), PQSTRING(3), OPQSTRING(4,QString()), OPQOBJECT(5,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
*/
void QSettings_new4 ()
{
  QSettings * o = new QSettings ( PQSTRING(1), (QSettings::Format) hb_parni(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSettings ( QObject * parent = 0 )
*/
void QSettings_new5 ()
{
  QSettings * o = new QSettings ( OPQOBJECT(1,0) );
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

$deleteMethod

/*
QStringList allKeys () const
*/
$method=|QStringList|allKeys|

/*
QString applicationName () const
*/
$method=|QString|applicationName|

/*
void beginGroup ( const QString & prefix )
*/
$method=|void|beginGroup|const QString &

/*
int beginReadArray ( const QString & prefix )
*/
$method=|int|beginReadArray|const QString &

/*
void beginWriteArray ( const QString & prefix, int size = -1 )
*/
$method=|void|beginWriteArray|const QString &,int=-1

/*
QStringList childGroups () const
*/
$method=|QStringList|childGroups|

/*
QStringList childKeys () const
*/
$method=|QStringList|childKeys|

/*
void clear ()
*/
$method=|void|clear|

/*
bool contains ( const QString & key ) const
*/
$method=|bool|contains|const QString &

/*
void endArray ()
*/
$method=|void|endArray|

/*
void endGroup ()
*/
$method=|void|endGroup|

/*
bool fallbacksEnabled () const
*/
$method=|bool|fallbacksEnabled|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
Format format () const
*/
$method=|QSettings::Format|format|

/*
QString group () const
*/
$method=|QString|group|

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
$method=|bool|isWritable|

/*
QString organizationName () const
*/
$method=|QString|organizationName|

/*
void remove ( const QString & key )
*/
$method=|void|remove|const QString &

/*
Scope scope () const
*/
$method=|QSettings::Scope|scope|

/*
void setArrayIndex ( int i )
*/
$method=|void|setArrayIndex|int

/*
void setFallbacksEnabled ( bool b )
*/
$method=|void|setFallbacksEnabled|bool

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
    obj->setIniCodec ( PCONSTCHAR(1) );
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
$method=|void|setValue|const QString &,const QVariant &

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
$method=|void|sync|

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
$staticMethod=|QSettings::Format|defaultFormat|

/*
static void setDefaultFormat ( Format format )
*/
$staticMethod=|void|setDefaultFormat|QSettings::Format

/*
static void setPath ( Format format, Scope scope, const QString & path )
*/
$staticMethod=|void|setPath|QSettings::Format,QSettings::Scope,const QString &

#pragma ENDDUMP
