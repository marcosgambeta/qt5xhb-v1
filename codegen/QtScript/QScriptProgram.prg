$header

#include "hbclass.ch"

CLASS QScriptProgram

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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

/*
QScriptProgram()
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW1 )
{
  QScriptProgram * o = new QScriptProgram ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptProgram(const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1)
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW2 )
{
  int par3 = ISNIL(3)? 1 : hb_parni(3);
  QScriptProgram * o = new QScriptProgram ( PQSTRING(1), OPQSTRING(2,QString()), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptProgram(const QScriptProgram & other)
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW3 )
{
  QScriptProgram * o = new QScriptProgram ( *PQSCRIPTPROGRAM(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QScriptProgram()
//[2]QScriptProgram(const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1)
//[3]QScriptProgram(const QScriptProgram & other)

HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTPROGRAM_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QSCRIPTPROGRAM_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTPROGRAM_NEW3 );
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
HB_FUNC_STATIC( QSCRIPTPROGRAM_FILENAME )
{
  QScriptProgram * obj = (QScriptProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


/*
int firstLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_FIRSTLINENUMBER )
{
  QScriptProgram * obj = (QScriptProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->firstLineNumber () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_ISNULL )
{
  QScriptProgram * obj = (QScriptProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QString sourceCode() const
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_SOURCECODE )
{
  QScriptProgram * obj = (QScriptProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sourceCode () );
  }
}



$extraMethods

#pragma ENDDUMP
