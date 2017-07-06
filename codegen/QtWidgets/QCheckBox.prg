$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QCheckBox INHERIT QAbstractButton

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD checkState
   METHOD isTristate
   METHOD setCheckState
   METHOD setTristate
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QCheckBox ( QWidget * parent = 0 )
*/
void QCheckBox_new1 ()
{
  QCheckBox * o = new QCheckBox ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QCheckBox ( const QString & text, QWidget * parent = 0 )
*/
void QCheckBox_new2 ()
{
  QCheckBox * o = new QCheckBox ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QCheckBox ( QWidget * parent = 0 )
//[2]explicit QCheckBox ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCheckBox_new1 ();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCheckBox_new2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QCHECKBOX_CHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->checkState () );
  }
}

/*
bool isTristate () const
*/
$method=|bool|isTristate|

/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QCHECKBOX_SETCHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCheckState ( (Qt::CheckState) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTristate ( bool y = true )
*/
HB_FUNC_STATIC( QCHECKBOX_SETTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      obj->setTristate ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_MINIMUMSIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_SIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
