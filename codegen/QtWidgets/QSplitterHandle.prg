$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSPLITTER
REQUEST QSIZE
#endif

CLASS QSplitterHandle INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD opaqueResize
   METHOD orientation
   METHOD setOrientation
   METHOD splitter
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_NEW )
{
  QSplitterHandle * o = new QSplitterHandle ( (Qt::Orientation) hb_parni(1), PQSPLITTER(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool opaqueResize () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_OPAQUERESIZE )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->opaqueResize () );
  }
}

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void setOrientation ( Qt::Orientation orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
QSplitter * splitter () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SPLITTER )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSplitter * ptr = obj->splitter ();
    _qt5xhb_createReturnClass ( ptr, "QSPLITTER" );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SIZEHINT )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
