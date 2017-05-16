/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QCommandLinkButton INHERIT QPushButton

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD description
   METHOD setDescription
   METHOD isFlat
   METHOD setFlat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCommandLinkButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCommandLinkButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCommandLinkButton>
#endif

/*
QCommandLinkButton ( QWidget * parent = 0 )
*/
void QCommandLinkButton_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QCommandLinkButton * o = new QCommandLinkButton ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCommandLinkButton ( const QString & text, QWidget * parent = 0 )
*/
void QCommandLinkButton_new2 ()
{
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QCommandLinkButton * o = new QCommandLinkButton ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = 0 )
*/
void QCommandLinkButton_new3 ()
{
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
  QCommandLinkButton * o = new QCommandLinkButton ( PQSTRING(1), PQSTRING(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QCommandLinkButton ( QWidget * parent = 0 )
//[2]QCommandLinkButton ( const QString & text, QWidget * parent = 0 )
//[3]QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOMMANDLINKBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCommandLinkButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCommandLinkButton_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QCommandLinkButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMMANDLINKBUTTON_DELETE )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString description () const
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_DESCRIPTION )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->description () ) );
  }
}

/*
void setDescription ( const QString & description )
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_SETDESCRIPTION )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDescription ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isFlat () const
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_ISFLAT )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isFlat () );
  }
}

/*
void setFlat ( bool )
*/
HB_FUNC_STATIC( QCOMMANDLINKBUTTON_SETFLAT )
{
  QCommandLinkButton * obj = (QCommandLinkButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFlat ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
