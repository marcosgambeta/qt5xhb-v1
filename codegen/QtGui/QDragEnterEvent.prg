$header

#include "hbclass.ch"

CLASS QDragEnterEvent INHERIT QDragMoveEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDragEnterEvent ( const QPoint & point, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QDRAGENTEREVENT_NEW )
{
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) _qt5xhb_itemGetPtr(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  QDragEnterEvent * o = new QDragEnterEvent ( *PQPOINT(1), (Qt::DropActions) par2, par3, (Qt::MouseButtons) par4, (Qt::KeyboardModifiers) par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
