/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QDBusSignature

   DATA pointer
   //DATA class_id INIT Class_Id_QDBusSignature
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD signature
   METHOD setSignature

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusSignature
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusSignature>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusSignature>
#endif

/*
QDBusSignature()
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW1 )
{
  QDBusSignature * o = new QDBusSignature (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusSignature(const char *signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW2 )
{
  const char * par1 = hb_parc(1);
  QDBusSignature * o = new QDBusSignature (  (const char *) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusSignature(QLatin1String signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW3 )
{
  QLatin1String * par1 = (QLatin1String *) _qt5xhb_itemGetPtr(1);
  QDBusSignature * o = new QDBusSignature ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusSignature(const QString &signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW4 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QDBusSignature * o = new QDBusSignature ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusSignature()
//[2]explicit QDBusSignature(const char *signature)
//[3]explicit QDBusSignature(QLatin1String signature)
//[4]explicit QDBusSignature(const QString &signature)

// TODO: resolver conflitos entre [2], [3] e [4]

HB_FUNC( QDBUSSIGNATURE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSSIGNATURE_DELETE )
{
  QDBusSignature * obj = (QDBusSignature *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString signature() const
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_SIGNATURE )
{
  QDBusSignature * obj = (QDBusSignature *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->signature (  ).toLatin1().data() );
  }
}

/*
void setSignature(const QString &signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_SETSIGNATURE )
{
  QDBusSignature * obj = (QDBusSignature *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSignature ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QDBUSSIGNATURE_NEWFROM )
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

HB_FUNC_STATIC( QDBUSSIGNATURE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSSIGNATURE_NEWFROM );
}

HB_FUNC_STATIC( QDBUSSIGNATURE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSSIGNATURE_NEWFROM );
}

HB_FUNC_STATIC( QDBUSSIGNATURE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSSIGNATURE_SETSELFDESTRUCTION )
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