$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QAXSCRIPT
#endif

CLASS QAxScriptManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addObject
   METHOD call
   METHOD functions
   METHOD load
   METHOD script
   METHOD scriptNames
   METHOD registerEngine
   METHOD scriptFileFilter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QAxScriptManager ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addObject ( QAxBase * object )
$internalMethod=|void|addObject,addObject1|QAxBase *

$prototype=void addObject ( QObject * object )
$internalMethod=|void|addObject,addObject2|QObject *

//[1]void addObject ( QAxBase * object )
//[2]void addObject ( QObject * object )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT )
{
  if( ISNUMPAR(1) && ISQAXBASE(1) )
  {
    QAxScriptManager_addObject1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QAxScriptManager_addObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QVariant|call,call1|const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QVariant call ( const QString & function, QList<QVariant> & arguments )
$internalMethod=|QVariant|call,call2|const QString &,QList<QVariant> &

//[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant call ( const QString & function, QList<QVariant> & arguments )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxScriptManager_call1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxScriptManager_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QStringList functions ( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
$method=|QStringList|functions|QAxScript::FunctionFlags=QAxScript::FunctionNames

$prototype=QAxScript * load ( const QString & code, const QString & name, const QString & language )
$internalMethod=|QAxScript *|load,load1|const QString &,const QString &,const QString &

$prototype=QAxScript * load ( const QString & file, const QString & name )
$internalMethod=|QAxScript *|load,load2|const QString &,const QString &

//[1]QAxScript * load ( const QString & code, const QString & name, const QString & language )
//[2]QAxScript * load ( const QString & file, const QString & name )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QAxScriptManager_load1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QAxScriptManager_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAxScript * script ( const QString & name ) const
$method=|QAxScript *|script|const QString &

$prototype=QStringList scriptNames() const
$method=|QStringList|scriptNames|

$prototype=static bool registerEngine ( const QString & name, const QString & extension, const QString & code = QString() )
$staticMethod=|bool|registerEngine|const QString &,const QString &,const QString &=QString()

$prototype=static QString scriptFileFilter ()
$staticMethod=|QString|scriptFileFilter|

#pragma ENDDUMP
