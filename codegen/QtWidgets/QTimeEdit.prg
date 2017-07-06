$header

#include "hbclass.ch"

CLASS QTimeEdit INHERIT QDateTimeEdit

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTimeEdit ( QWidget * parent = 0 )
*/
void QTimeEdit_new1 ()
{
  QTimeEdit * o = new QTimeEdit ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/
void QTimeEdit_new2 ()
{
  QTimeEdit * o = new QTimeEdit ( *PQTIME(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTimeEdit ( QWidget * parent = 0 )
//[2]QTimeEdit ( const QTime & time, QWidget * parent = 0 )

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTQWIDGET(2) )
  {
    QTimeEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
