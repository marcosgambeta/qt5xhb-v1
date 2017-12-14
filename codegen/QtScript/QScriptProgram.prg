$header

#include "hbclass.ch"

CLASS QScriptProgram

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD firstLineNumber
   METHOD isNull
   METHOD sourceCode

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

$prototype=QScriptProgram()
$internalConstructor=|new1|

$prototype=QScriptProgram(const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1)
$internalConstructor=|new2|const QString &,const QString=QString(),int=1

$prototype=QScriptProgram(const QScriptProgram & other)
$internalConstructor=|new3|const QScriptProgram &

//[1]QScriptProgram()
//[2]QScriptProgram(const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1)
//[3]QScriptProgram(const QScriptProgram & other)

HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScriptProgram_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QScriptProgram_new2();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    QScriptProgram_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString fileName() const
$method=|QString|fileName|

$prototype=int firstLineNumber() const
$method=|int|firstLineNumber|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QString sourceCode() const
$method=|QString|sourceCode|

$extraMethods

#pragma ENDDUMP
