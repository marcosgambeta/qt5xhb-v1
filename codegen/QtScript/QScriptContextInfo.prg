$header

#include "hbclass.ch"

CLASS QScriptContextInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW1 )
{
  const QScriptContext * par1 = (const QScriptContext *) _qt5xhb_itemGetPtr(1);
  QScriptContextInfo * o = new QScriptContextInfo ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptContextInfo(const QScriptContextInfo & other)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW2 )
{
  QScriptContextInfo * o = new QScriptContextInfo ( *PQSCRIPTCONTEXTINFO(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptContextInfo()
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW3 )
{
  QScriptContextInfo * o = new QScriptContextInfo ();
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QScriptContextInfo(const QScriptContext * context)
//[2]QScriptContextInfo(const QScriptContextInfo & other)
//[3]QScriptContextInfo()

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW2 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW3 );
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
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FILENAME )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


/*
int functionEndLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONENDLINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->functionEndLineNumber () );
  }
}


/*
int functionMetaIndex() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONMETAINDEX )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->functionMetaIndex () );
  }
}


/*
QString functionName() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONNAME )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->functionName () );
  }
}


/*
QStringList functionParameterNames() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONPARAMETERNAMES )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->functionParameterNames () );
  }
}


/*
int functionStartLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONSTARTLINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->functionStartLineNumber () );
  }
}


/*
FunctionType functionType() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONTYPE )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->functionType () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_ISNULL )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
int lineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_LINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}


/*
qint64 scriptId() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SCRIPTID )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->scriptId () );
  }
}



$extraMethods

#pragma ENDDUMP
