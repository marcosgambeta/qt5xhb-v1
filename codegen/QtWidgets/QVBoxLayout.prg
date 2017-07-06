$header

#include "hbclass.ch"

CLASS QVBoxLayout INHERIT QBoxLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QVBoxLayout ()
*/
void QVBoxLayout_new1 ()
{
  QVBoxLayout * o = new QVBoxLayout ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVBoxLayout ( QWidget * parent )
*/
void QVBoxLayout_new2 ()
{
  QVBoxLayout * o = new QVBoxLayout ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QVBoxLayout ()
//[2]QVBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QVBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVBoxLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QVBoxLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
