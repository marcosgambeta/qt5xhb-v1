$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDial INHERIT QAbstractSlider

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD notchSize
   METHOD notchTarget
   METHOD notchesVisible
   METHOD setNotchTarget
   METHOD wrapping
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setNotchesVisible
   METHOD setWrapping

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDial ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDIAL_NEW )
{
  QDial * o = new QDial ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
int notchSize () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHSIZE )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->notchSize () );
  }
}

/*
qreal notchTarget () const
*/
HB_FUNC_STATIC( QDIAL_NOTCHTARGET )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->notchTarget () );
  }
}

/*
bool notchesVisible () const
*/
$method=|bool|notchesVisible|

/*
void setNotchTarget ( double target )
*/
HB_FUNC_STATIC( QDIAL_SETNOTCHTARGET )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setNotchTarget ( PDOUBLE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool wrapping () const
*/
$method=|bool|wrapping|

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QDIAL_MINIMUMSIZEHINT )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDIAL_SIZEHINT )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setNotchesVisible ( bool visible )
*/
HB_FUNC_STATIC( QDIAL_SETNOTCHESVISIBLE )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setNotchesVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWrapping ( bool on )
*/
HB_FUNC_STATIC( QDIAL_SETWRAPPING )
{
  QDial * obj = (QDial *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setWrapping ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
