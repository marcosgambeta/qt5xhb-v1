/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QScriptSyntaxCheckResult

   DATA pointer
   DATA class_id INIT Class_Id_QScriptSyntaxCheckResult
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QScriptSyntaxCheckResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptSyntaxCheckResult>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptSyntaxCheckResult>
#endif

/*
QScriptSyntaxCheckResult(const QScriptSyntaxCheckResult & other)
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_NEW )
{
  QScriptSyntaxCheckResult * par1 = (QScriptSyntaxCheckResult *) _qt5xhb_itemGetPtr(1);
  QScriptSyntaxCheckResult * o = new QScriptSyntaxCheckResult ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptSyntaxCheckResult *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_DELETE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int errorColumnNumber() const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_ERRORCOLUMNNUMBER )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->errorColumnNumber (  ) );
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
    hb_retni( obj->errorLineNumber (  ) );
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
    hb_retc( (const char *) obj->errorMessage (  ).toLatin1().data() );
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
    hb_retni( obj->state (  ) );
  }
}



HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTSYNTAXCHECKRESULT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTSYNTAXCHECKRESULT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
