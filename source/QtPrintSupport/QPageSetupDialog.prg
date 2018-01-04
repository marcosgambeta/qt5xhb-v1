/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD setVisible
   METHOD exec
   METHOD done

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPageSetupDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPageSetupDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPageSetupDialog>
#endif

/*
QPageSetupDialog ( QPrinter * printer, QWidget * parent = 0 )
*/
void QPageSetupDialog_new1 ()
{
  QPageSetupDialog * o = new QPageSetupDialog ( PQPRINTER(1), OPQWIDGET(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QPageSetupDialog ( QWidget * parent = 0 )
*/
void QPageSetupDialog_new2 ()
{
  QPageSetupDialog * o = new QPageSetupDialog ( OPQWIDGET(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QPageSetupDialog(QPrinter *printer, QWidget *parent = 0)
//[2]QPageSetupDialog(QWidget *parent = 0)

HB_FUNC_STATIC( QPAGESETUPDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && ISOPTQWIDGET(2) )
  {
    QPageSetupDialog_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPageSetupDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAGESETUPDIALOG_DELETE )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_OPEN )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      obj->open ( PQOBJECT(1), PCONSTCHAR(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPrinter * printer ()
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_PRINTER )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPrinter * ptr = obj->printer ();
    _qt5xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_SETVISIBLE )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int exec()
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_EXEC )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->exec () );
  }
}

/*
void done(int result)
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_DONE )
{
  QPageSetupDialog * obj = (QPageSetupDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->done ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
