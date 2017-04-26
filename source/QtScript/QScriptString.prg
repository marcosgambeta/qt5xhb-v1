/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QScriptString

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptString
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptString>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptString>
#endif

/*
QScriptString()
*/
HB_FUNC_STATIC( QSCRIPTSTRING_NEW1 )
{
  QScriptString * o = new QScriptString (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptString(const QScriptString & other)
*/
HB_FUNC_STATIC( QSCRIPTSTRING_NEW2 )
{
  QScriptString * par1 = (QScriptString *) _qt5xhb_itemGetPtr(1);
  QScriptString * o = new QScriptString ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QScriptString()
//[2]QScriptString(const QScriptString & other)

HB_FUNC_STATIC( QSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTSTRING_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTSTRING(1) )
  {
    HB_FUNC_EXEC( QSCRIPTSTRING_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTSTRING_DELETE )
{
  QScriptString * obj = (QScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSCRIPTSTRING_ISVALID )
{
  QScriptString * obj = (QScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}



/*
QString toString() const
*/
HB_FUNC_STATIC( QSCRIPTSTRING_TOSTRING )
{
  QScriptString * obj = (QScriptString *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QSCRIPTSTRING_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTSTRING_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTSTRING_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTSTRING_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTSTRING_SETSELFDESTRUCTION )
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