$header

#include "hbclass.ch"

CLASS QScriptContextInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD functionEndLineNumber
   METHOD functionMetaIndex
   METHOD functionName
   METHOD functionParameterNames
   METHOD functionStartLineNumber
   METHOD functionType
   METHOD isNull
   METHOD lineNumber
   METHOD scriptId

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScriptContextInfo(const QScriptContext * context)
*/
$internalConstructor=|new1|const QScriptContext *

/*
QScriptContextInfo(const QScriptContextInfo & other)
*/
$internalConstructor=|new2|const QScriptContextInfo &

/*
QScriptContextInfo()
*/
$internalConstructor=|new3|

//[1]QScriptContextInfo(const QScriptContext * context)
//[2]QScriptContextInfo(const QScriptContextInfo & other)
//[3]QScriptContextInfo()

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    QScriptContextInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    QScriptContextInfo_new2();
  }
  else if( ISNUMPAR(0) )
  {
    QScriptContextInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString fileName() const
*/
$method=|QString|fileName|

/*
int functionEndLineNumber() const
*/
$method=|int|functionEndLineNumber|

/*
int functionMetaIndex() const
*/
$method=|int|functionMetaIndex|

/*
QString functionName() const
*/
$method=|QString|functionName|

/*
QStringList functionParameterNames() const
*/
$method=|QStringList|functionParameterNames|

/*
int functionStartLineNumber() const
*/
$method=|int|functionStartLineNumber|

/*
FunctionType functionType() const
*/
$method=|QScriptContextInfo::FunctionType|functionType|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
int lineNumber() const
*/
$method=|int|lineNumber|

/*
qint64 scriptId() const
*/
$method=|qint64|scriptId|

$extraMethods

#pragma ENDDUMP
