$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSizeGrip INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setVisible
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSizeGrip ( QWidget * parent )
*/
HB_FUNC_STATIC( QSIZEGRIP_NEW )
{
  QSizeGrip * o = new QSizeGrip ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QSIZEGRIP_SETVISIBLE )
{
  QSizeGrip * obj = (QSizeGrip *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSIZEGRIP_SIZEHINT )
{
  QSizeGrip * obj = (QSizeGrip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
