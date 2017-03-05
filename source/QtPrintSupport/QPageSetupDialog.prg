/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QPageSetupDialog
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
#include <QPageSetupDialog>
#endif

/*
QPageSetupDialog ( QPrinter * printer, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_NEW1 )
{
  QPrinter * par1 = (QPrinter *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QPageSetupDialog * o = new QPageSetupDialog ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPageSetupDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QPageSetupDialog ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_NEW2 )
{
  QPrinter * par1 = (QPrinter *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QPageSetupDialog * o = new QPageSetupDialog ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPageSetupDialog *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QPageSetupDialog(QPrinter *printer, QWidget *parent = 0)
//[2]QPageSetupDialog(QWidget *parent = 0)

HB_FUNC_STATIC( QPAGESETUPDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAGESETUPDIALOG_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPAGESETUPDIALOG_NEW2 );
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
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
     const char * par2 = ( const char *) _qt5xhb_itemGetPtr(2);
    obj->open ( par1, par2 );
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
    QPrinter * ptr = obj->printer (  );
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
    obj->setVisible ( (bool) hb_parl(1) );
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
    hb_retni( obj->exec (  ) );
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
    obj->done ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
