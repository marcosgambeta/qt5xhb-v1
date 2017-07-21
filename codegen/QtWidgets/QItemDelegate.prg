$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemDelegate INHERIT QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD hasClipping
   METHOD itemEditorFactory
   METHOD setClipping
   METHOD setItemEditorFactory

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QItemDelegate ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QITEMDELEGATE_NEW )
{
  QItemDelegate * o = new QItemDelegate ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool hasClipping () const
*/
HB_FUNC_STATIC( QITEMDELEGATE_HASCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasClipping () );
  }
}


/*
QItemEditorFactory * itemEditorFactory () const
*/
HB_FUNC_STATIC( QITEMDELEGATE_ITEMEDITORFACTORY )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QItemEditorFactory * ptr = obj->itemEditorFactory ();
    _qt5xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );
  }
}


/*
void setClipping ( bool clip )
*/
HB_FUNC_STATIC( QITEMDELEGATE_SETCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setClipping ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemEditorFactory ( QItemEditorFactory * factory )
*/
HB_FUNC_STATIC( QITEMDELEGATE_SETITEMEDITORFACTORY )
{
  QItemDelegate * obj = (QItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setItemEditorFactory ( PQITEMEDITORFACTORY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
