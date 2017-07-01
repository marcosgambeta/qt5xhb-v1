/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QStyleOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD init
   METHOD initFrom

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOption
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOption>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOption>
#endif

/*
QStyleOption(int version = QStyleOption::Version, int type = SO_Default)
*/
void QStyleOption_new1 ()
{
  QStyleOption * o = new QStyleOption ( OPINT(1,QStyleOption::Version), OPINT(2,QStyleOption::SO_Default) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStyleOption(const QStyleOption &other)
*/
void QStyleOption_new2 ()
{
  QStyleOption * o = new QStyleOption ( *PQSTYLEOPTION(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QStyleOption(int version = QStyleOption::Version, int type = SO_Default)
//[2]QStyleOption(const QStyleOption &other)

HB_FUNC_STATIC( QSTYLEOPTION_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
  {
    QStyleOption_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTION(1) )
  {
    QStyleOption_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTYLEOPTION_DELETE )
{
  QStyleOption * obj = (QStyleOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void init(const QWidget *w)
*/
HB_FUNC_STATIC( QSTYLEOPTION_INIT )
{
  QStyleOption * obj = (QStyleOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
      obj->init ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void initFrom(const QWidget *w)
*/
HB_FUNC_STATIC( QSTYLEOPTION_INITFROM )
{
  QStyleOption * obj = (QStyleOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
      obj->initFrom ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QSTYLEOPTION_NEWFROM )
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

HB_FUNC_STATIC( QSTYLEOPTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTYLEOPTION_NEWFROM );
}

HB_FUNC_STATIC( QSTYLEOPTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTYLEOPTION_NEWFROM );
}

HB_FUNC_STATIC( QSTYLEOPTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTYLEOPTION_SETSELFDESTRUCTION )
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
