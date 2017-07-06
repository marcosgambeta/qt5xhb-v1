$header

#include "hbclass.ch"

CLASS QHBoxLayout INHERIT QBoxLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHBoxLayout ()
*/
void QHBoxLayout_new1 ()
{
  QHBoxLayout * o = new QHBoxLayout ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QHBoxLayout ( QWidget * parent )
*/
void QHBoxLayout_new2 ()
{
  QHBoxLayout * o = new QHBoxLayout ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QHBoxLayout ()
//[2]QHBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QHBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHBoxLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QHBoxLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
