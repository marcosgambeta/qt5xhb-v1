$header

#include "hbclass.ch"

CLASS QScriptSyntaxCheckResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD errorColumnNumber
   METHOD errorLineNumber
   METHOD errorMessage
   METHOD state

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
QScriptSyntaxCheckResult(const QScriptSyntaxCheckResult & other)
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_NEW )
{
  QScriptSyntaxCheckResult * o = new QScriptSyntaxCheckResult ( *PQSCRIPTSYNTAXCHECKRESULT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
int errorColumnNumber() const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_ERRORCOLUMNNUMBER )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->errorColumnNumber () );
  }
}


/*
int errorLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_ERRORLINENUMBER )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->errorLineNumber () );
  }
}


/*
QString errorMessage() const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_ERRORMESSAGE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorMessage () );
  }
}


/*
State state() const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_STATE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}



$extraMethods

#pragma ENDDUMP
