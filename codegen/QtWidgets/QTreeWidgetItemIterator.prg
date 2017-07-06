$header

#include "hbclass.ch"

CLASS QTreeWidgetItemIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTreeWidgetItemIterator(const QTreeWidgetItemIterator & it)
*/
void QTreeWidgetItemIterator_new1 ()
{
  QTreeWidgetItemIterator * o = new QTreeWidgetItemIterator ( *PQTREEWIDGETITEMITERATOR(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItemIterator(QTreeWidget * widget, IteratorFlags flags = All)
*/
void QTreeWidgetItemIterator_new2 ()
{
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  QTreeWidgetItemIterator * o = new QTreeWidgetItemIterator ( PQTREEWIDGET(1), (QTreeWidgetItemIterator::IteratorFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItemIterator(QTreeWidgetItem * item, IteratorFlags flags = All)
*/
void QTreeWidgetItemIterator_new3 ()
{
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  QTreeWidgetItemIterator * o = new QTreeWidgetItemIterator ( PQTREEWIDGETITEM(1), (QTreeWidgetItemIterator::IteratorFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTreeWidgetItemIterator(const QTreeWidgetItemIterator & it)
//[2]QTreeWidgetItemIterator(QTreeWidget * widget, IteratorFlags flags = All)
//[3]QTreeWidgetItemIterator(QTreeWidgetItem * item, IteratorFlags flags = All)

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEMITERATOR(1) )
  {
    QTreeWidgetItemIterator_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && ISOPTNUM(2) )
  {
    QTreeWidgetItemIterator_new2();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && ISOPTNUM(2) )
  {
    QTreeWidgetItemIterator_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
