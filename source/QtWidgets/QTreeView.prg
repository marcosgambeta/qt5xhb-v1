/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHEADERVIEW
REQUEST QMODELINDEX
REQUEST QRECT
#endif

CLASS QTreeView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QTreeView
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD allColumnsShowFocus
   METHOD autoExpandDelay
   METHOD columnAt
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD expandsOnDoubleClick
   METHOD header
   METHOD indentation
   METHOD indexAbove
   METHOD indexBelow
   METHOD isAnimated
   METHOD isColumnHidden
   METHOD isExpanded
   METHOD isFirstColumnSpanned
   METHOD isHeaderHidden
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD itemsExpandable
   METHOD rootIsDecorated
   METHOD setAllColumnsShowFocus
   METHOD setAnimated
   METHOD setAutoExpandDelay
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setExpanded
   METHOD setExpandsOnDoubleClick
   METHOD setFirstColumnSpanned
   METHOD setHeader
   METHOD setHeaderHidden
   METHOD setIndentation
   METHOD setItemsExpandable
   METHOD setRootIsDecorated
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setUniformRowHeights
   METHOD setWordWrap
   METHOD sortByColumn
   METHOD uniformRowHeights
   METHOD wordWrap
   METHOD dataChanged
   METHOD indexAt
   METHOD keyboardSearch
   METHOD reset
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD visualRect
   METHOD collapse
   METHOD collapseAll
   METHOD expand
   METHOD expandAll
   METHOD expandToDepth
   METHOD hideColumn
   METHOD resizeColumnToContents
   METHOD showColumn
   METHOD onCollapsed
   METHOD onExpanded
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTreeView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTreeView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTreeView>
#endif

/*
QTreeView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTREEVIEW_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QTreeView * o = new QTreeView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTREEVIEW_DELETE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool allColumnsShowFocus () const
*/
HB_FUNC_STATIC( QTREEVIEW_ALLCOLUMNSSHOWFOCUS )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->allColumnsShowFocus (  ) );
  }
}


/*
int autoExpandDelay () const
*/
HB_FUNC_STATIC( QTREEVIEW_AUTOEXPANDDELAY )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->autoExpandDelay (  ) );
  }
}


/*
int columnAt ( int x ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNAT )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnAt ( (int) hb_parni(1) ) );
  }
}


/*
int columnViewportPosition ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNVIEWPORTPOSITION )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnViewportPosition ( (int) hb_parni(1) ) );
  }
}


/*
int columnWidth ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNWIDTH )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnWidth ( (int) hb_parni(1) ) );
  }
}


/*
bool expandsOnDoubleClick () const
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDSONDOUBLECLICK )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->expandsOnDoubleClick (  ) );
  }
}


/*
QHeaderView * header () const
*/
HB_FUNC_STATIC( QTREEVIEW_HEADER )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHeaderView * ptr = obj->header (  );
    _qt5xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}


/*
int indentation () const
*/
HB_FUNC_STATIC( QTREEVIEW_INDENTATION )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indentation (  ) );
  }
}


/*
QModelIndex indexAbove ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXABOVE )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->indexAbove ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex indexBelow ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXBELOW )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->indexBelow ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool isAnimated () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISANIMATED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAnimated (  ) );
  }
}


/*
bool isColumnHidden ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISCOLUMNHIDDEN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isColumnHidden ( (int) hb_parni(1) ) );
  }
}


/*
bool isExpanded ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISEXPANDED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isExpanded ( *par1 ) );
  }
}


/*
bool isFirstColumnSpanned ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISFIRSTCOLUMNSPANNED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->isFirstColumnSpanned ( (int) hb_parni(1), *par2 ) );
  }
}


/*
bool isHeaderHidden () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISHEADERHIDDEN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isHeaderHidden (  ) );
  }
}


/*
bool isRowHidden ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISROWHIDDEN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->isRowHidden ( (int) hb_parni(1), *par2 ) );
  }
}


/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISSORTINGENABLED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSortingEnabled (  ) );
  }
}


/*
bool itemsExpandable () const
*/
HB_FUNC_STATIC( QTREEVIEW_ITEMSEXPANDABLE )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->itemsExpandable (  ) );
  }
}


/*
bool rootIsDecorated () const
*/
HB_FUNC_STATIC( QTREEVIEW_ROOTISDECORATED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->rootIsDecorated (  ) );
  }
}


/*
void setAllColumnsShowFocus ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETALLCOLUMNSSHOWFOCUS )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAllColumnsShowFocus ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAnimated ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETANIMATED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAnimated ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoExpandDelay ( int delay )
*/
HB_FUNC_STATIC( QTREEVIEW_SETAUTOEXPANDDELAY )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoExpandDelay ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnHidden ( int column, bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETCOLUMNHIDDEN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnHidden ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnWidth ( int column, int width )
*/
HB_FUNC_STATIC( QTREEVIEW_SETCOLUMNWIDTH )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnWidth ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExpanded ( const QModelIndex & index, bool expanded )
*/
HB_FUNC_STATIC( QTREEVIEW_SETEXPANDED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->setExpanded ( *par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExpandsOnDoubleClick ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETEXPANDSONDOUBLECLICK )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExpandsOnDoubleClick ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFirstColumnSpanned ( int row, const QModelIndex & parent, bool span )
*/
HB_FUNC_STATIC( QTREEVIEW_SETFIRSTCOLUMNSPANNED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    obj->setFirstColumnSpanned ( (int) hb_parni(1), *par2, (bool) hb_parl(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTREEVIEW_SETHEADER )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHeaderView * par1 = (QHeaderView *) _qt5xhb_itemGetPtr(1);
    obj->setHeader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeaderHidden ( bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETHEADERHIDDEN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeaderHidden ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndentation ( int i )
*/
HB_FUNC_STATIC( QTREEVIEW_SETINDENTATION )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndentation ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemsExpandable ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETITEMSEXPANDABLE )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setItemsExpandable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRootIsDecorated ( bool show )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROOTISDECORATED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRootIsDecorated ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowHidden ( int row, const QModelIndex & parent, bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROWHIDDEN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    obj->setRowHidden ( (int) hb_parni(1), *par2, (bool) hb_parl(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETSORTINGENABLED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSortingEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformRowHeights ( bool uniform )
*/
HB_FUNC_STATIC( QTREEVIEW_SETUNIFORMROWHEIGHTS )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUniformRowHeights ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QTREEVIEW_SETWORDWRAP )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWordWrap ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTREEVIEW_SORTBYCOLUMN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->sortByColumn ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool uniformRowHeights () const
*/
HB_FUNC_STATIC( QTREEVIEW_UNIFORMROWHEIGHTS )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->uniformRowHeights (  ) );
  }
}


/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QTREEVIEW_WORDWRAP )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->wordWrap (  ) );
  }
}


/*
virtual void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
*/
HB_FUNC_STATIC( QTREEVIEW_DATACHANGED )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * par2 = (QModelIndex *) _qt5xhb_itemGetPtr(2);
    obj->dataChanged ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXAT )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void keyboardSearch ( const QString & search )
*/
HB_FUNC_STATIC( QTREEVIEW_KEYBOARDSEARCH )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->keyboardSearch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset ()
*/
HB_FUNC_STATIC( QTREEVIEW_RESET )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QTREEVIEW_SCROLLTO )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QTreeView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *par1,  (QTreeView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_SELECTALL )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QTREEVIEW_SETMODEL )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROOTINDEX )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTREEVIEW_SETSELECTIONMODEL )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) _qt5xhb_itemGetPtr(1);
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_VISUALRECT )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->visualRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void collapse ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_COLLAPSE )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->collapse ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void collapseAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_COLLAPSEALL )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->collapseAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void expand ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_EXPAND )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->expand ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void expandAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDALL )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->expandAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void expandToDepth ( int depth )
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDTODEPTH )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->expandToDepth ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hideColumn ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_HIDECOLUMN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hideColumn ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeColumnToContents ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_RESIZECOLUMNTOCONTENTS )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resizeColumnToContents ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showColumn ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_SHOWCOLUMN )
{
  QTreeView * obj = (QTreeView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showColumn ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
