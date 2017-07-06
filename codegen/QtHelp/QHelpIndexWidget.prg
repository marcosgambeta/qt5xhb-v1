$header

#include "hbclass.ch"

CLASS QHelpIndexWidget INHERIT QListView

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activateCurrentItem
   METHOD filterIndices

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void activateCurrentItem ()
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_ACTIVATECURRENTITEM )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->activateCurrentItem ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void filterIndices ( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_FILTERINDICES )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->filterIndices ( PQSTRING(1), OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
