/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintDialog INHERIT QAbstractPrintDialog

   DATA class_id INIT Class_Id_QPrintDialog
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD done
   METHOD exec
   METHOD setVisible
   METHOD onAccepted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrintDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPrintDialog>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPrintDialog>
#endif
#endif

/*
QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPRINTDIALOG_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPrinter * par1 = (QPrinter *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QPrintDialog * o = new QPrintDialog ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPrintDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QPrintDialog ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPRINTDIALOG_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QPrintDialog * o = new QPrintDialog ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPrintDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
//[2]QPrintDialog ( QWidget * parent = 0 )

HB_FUNC_STATIC( QPRINTDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPRINTDIALOG_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPRINTDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTDIALOG_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPRINTDIALOG_OPEN )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PrintDialogOptions options () const
*/
HB_FUNC_STATIC( QPRINTDIALOG_OPTIONS )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->options (  ) );
  }
}


/*
QPrinter * printer ()
*/
HB_FUNC_STATIC( QPRINTDIALOG_PRINTER )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPrinter * ptr = obj->printer (  );
    _qt4xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}


/*
void setOption ( PrintDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETOPTION )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QPrintDialog::PrintDialogOption) par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( PrintDialogOptions options )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETOPTIONS )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QPrintDialog::PrintDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( PrintDialogOption option ) const
*/
HB_FUNC_STATIC( QPRINTDIALOG_TESTOPTION )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QPrintDialog::PrintDialogOption) par1 ) );
  }
}


/*
void done ( int result )
*/
HB_FUNC_STATIC( QPRINTDIALOG_DONE )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->done ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int exec ()
*/
HB_FUNC_STATIC( QPRINTDIALOG_EXEC )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->exec (  ) );
  }
}


/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETVISIBLE )
{
  QPrintDialog * obj = (QPrintDialog *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
