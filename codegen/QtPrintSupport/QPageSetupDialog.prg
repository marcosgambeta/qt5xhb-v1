$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD setVisible
   METHOD exec
   METHOD done

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPageSetupDialog ( QPrinter * printer, QWidget * parent = 0 )
*/
void QPageSetupDialog_new1 ()
{
  QPageSetupDialog * o = new QPageSetupDialog ( PQPRINTER(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPageSetupDialog ( QWidget * parent = 0 )
*/
void QPageSetupDialog_new2 ()
{
  QPageSetupDialog * o = new QPageSetupDialog ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
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

$deleteMethod

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
