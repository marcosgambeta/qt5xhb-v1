$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QRadioButton INHERIT QAbstractButton

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD sizeHint
   METHOD minimumSizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QRadioButton ( QWidget * parent = 0 )
*/
void QRadioButton_new1 ()
{
  QRadioButton * o = new QRadioButton ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QRadioButton ( const QString & text, QWidget * parent = 0 )
*/
void QRadioButton_new2 ()
{
  QRadioButton * o = new QRadioButton ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QRadioButton ( QWidget * parent = 0 )
//[2]explicit QRadioButton ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QRADIOBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QRadioButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QRadioButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QRADIOBUTTON_SIZEHINT )
{
  QRadioButton * obj = (QRadioButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize minimumSizeHint() const
*/
HB_FUNC_STATIC( QRADIOBUTTON_MINIMUMSIZEHINT )
{
  QRadioButton * obj = (QRadioButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
