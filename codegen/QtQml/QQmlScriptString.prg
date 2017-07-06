$header

#include "hbclass.ch"

CLASS QQmlScriptString

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD booleanLiteral
   METHOD isEmpty
   METHOD isNullLiteral
   METHOD isUndefinedLiteral
   METHOD numberLiteral
   METHOD stringLiteral

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
QQmlScriptString()
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW1 )
{
  QQmlScriptString * o = new QQmlScriptString ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlScriptString(const QQmlScriptString & other)
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW2 )
{
  QQmlScriptString * o = new QQmlScriptString ( *PQQMLSCRIPTSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QQmlScriptString()
//[2]QQmlScriptString(const QQmlScriptString & other)

HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQQMLSCRIPTSTRING(1) )
  {
    HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool booleanLiteral(bool * ok) const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_BOOLEANLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    RBOOL( obj->booleanLiteral ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_ISEMPTY )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isNullLiteral() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_ISNULLLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNullLiteral () );
  }
}


/*
bool isUndefinedLiteral() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_ISUNDEFINEDLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isUndefinedLiteral () );
  }
}


/*
qreal numberLiteral(bool * ok) const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_NUMBERLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    RQREAL( obj->numberLiteral ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
QString stringLiteral() const
*/
HB_FUNC_STATIC( QQMLSCRIPTSTRING_STRINGLITERAL )
{
  QQmlScriptString * obj = (QQmlScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stringLiteral () );
  }
}



$extraMethods

#pragma ENDDUMP
