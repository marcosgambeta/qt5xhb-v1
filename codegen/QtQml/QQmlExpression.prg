$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQMLERROR
REQUEST QVARIANT
REQUEST QOBJECT
#endif

CLASS QQmlExpression INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clearError
   METHOD columnNumber
   METHOD context
   METHOD engine
   METHOD error
   METHOD evaluate
   METHOD expression
   METHOD hasError
   METHOD lineNumber
   METHOD notifyOnValueChanged
   METHOD scopeObject
   METHOD setExpression
   METHOD setNotifyOnValueChanged
   METHOD setSourceLocation
   METHOD sourceFile

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QQmlExpression()
*/
$internalConstructor=|new1|

/*
QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
*/
$internalConstructor=|new2|QQmlContext *,QObject *,const QString &,QObject *=0

/*
QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)
*/
$internalConstructor=|new3|const QQmlScriptString &,QQmlContext *=0,QObject *=0,QObject *=0

//[1]QQmlExpression()
//[2]QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
//[3]QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)

HB_FUNC_STATIC( QQMLEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlExpression_new1();
  }
  else if( ISBETWEEN(3,4) && ISQQMLCONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && ISOPTQOBJECT(4) )
  {
    QQmlExpression_new2();
  }
  else if( ISBETWEEN(1,4) && ISQQMLSCRIPTSTRING(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && ISOPTQOBJECT(3) && ISOPTQOBJECT(4) )
  {
    QQmlExpression_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clearError()
*/
$method=|void|clearError|

/*
int columnNumber() const
*/
$method=|int|columnNumber|

/*
QQmlContext * context() const
*/
$method=|QQmlContext *|context|

/*
QQmlEngine * engine() const
*/
$method=|QQmlEngine *|engine|

/*
QQmlError error() const
*/
$method=|QQmlError|error|

/*
QVariant evaluate(bool * valueIsUndefined = 0)
*/
$method=|QVariant|evaluate|bool *=0

/*
QString expression() const
*/
$method=|QString|expression|

/*
bool hasError() const
*/
$method=|bool|hasError|

/*
int lineNumber() const
*/
$method=|int|lineNumber|

/*
bool notifyOnValueChanged() const
*/
$method=|bool|notifyOnValueChanged|

/*
QObject * scopeObject() const
*/
$method=|QObject *|scopeObject|

/*
void setExpression(const QString & expression)
*/
$method=|void|setExpression|const QString &

/*
void setNotifyOnValueChanged(bool notifyOnChange)
*/
$method=|void|setNotifyOnValueChanged|bool

/*
void setSourceLocation(const QString & url, int line, int column = 0)
*/
$method=|void|setSourceLocation|const QString &,int,int=0

/*
QString sourceFile() const
*/
$method=|QString|sourceFile|

#pragma ENDDUMP
