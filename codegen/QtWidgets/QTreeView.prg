%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QHeaderView>

$prototype=QTreeView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=bool allColumnsShowFocus () const
$method=|bool|allColumnsShowFocus|

$prototype=int autoExpandDelay () const
$method=|int|autoExpandDelay|

$prototype=int columnAt ( int x ) const
$method=|int|columnAt|int

$prototype=int columnViewportPosition ( int column ) const
$method=|int|columnViewportPosition|int

$prototype=int columnWidth ( int column ) const
$method=|int|columnWidth|int

$prototype=bool expandsOnDoubleClick () const
$method=|bool|expandsOnDoubleClick|

$prototype=QHeaderView * header () const
$method=|QHeaderView *|header|

$prototype=int indentation () const
$method=|int|indentation|

$prototype=QModelIndex indexAbove ( const QModelIndex & index ) const
$method=|QModelIndex|indexAbove|const QModelIndex &

$prototype=QModelIndex indexBelow ( const QModelIndex & index ) const
$method=|QModelIndex|indexBelow|const QModelIndex &

$prototype=bool isAnimated () const
$method=|bool|isAnimated|

$prototype=bool isColumnHidden ( int column ) const
$method=|bool|isColumnHidden|int

$prototype=bool isExpanded ( const QModelIndex & index ) const
$method=|bool|isExpanded|const QModelIndex &

$prototype=bool isFirstColumnSpanned ( int row, const QModelIndex & parent ) const
$method=|bool|isFirstColumnSpanned|int,const QModelIndex &

$prototype=bool isHeaderHidden () const
$method=|bool|isHeaderHidden|

$prototype=bool isRowHidden ( int row, const QModelIndex & parent ) const
$method=|bool|isRowHidden|int,const QModelIndex &

$prototype=bool isSortingEnabled () const
$method=|bool|isSortingEnabled|

$prototype=bool itemsExpandable () const
$method=|bool|itemsExpandable|

$prototype=bool rootIsDecorated () const
$method=|bool|rootIsDecorated|

$prototype=void setAllColumnsShowFocus ( bool enable )
$method=|void|setAllColumnsShowFocus|bool

$prototype=void setAnimated ( bool enable )
$method=|void|setAnimated|bool

$prototype=void setAutoExpandDelay ( int delay )
$method=|void|setAutoExpandDelay|int

$prototype=void setColumnHidden ( int column, bool hide )
$method=|void|setColumnHidden|int,bool

$prototype=void setColumnWidth ( int column, int width )
$method=|void|setColumnWidth|int,int

$prototype=void setExpanded ( const QModelIndex & index, bool expanded )
$method=|void|setExpanded|const QModelIndex &,bool

$prototype=void setExpandsOnDoubleClick ( bool enable )
$method=|void|setExpandsOnDoubleClick|bool

$prototype=void setFirstColumnSpanned ( int row, const QModelIndex & parent, bool span )
$method=|void|setFirstColumnSpanned|int,const QModelIndex &,bool

$prototype=void setHeader ( QHeaderView * header )
$method=|void|setHeader|QHeaderView *

$prototype=void setHeaderHidden ( bool hide )
$method=|void|setHeaderHidden|bool

$prototype=void setIndentation ( int i )
$method=|void|setIndentation|int

$prototype=void setItemsExpandable ( bool enable )
$method=|void|setItemsExpandable|bool

$prototype=void setRootIsDecorated ( bool show )
$method=|void|setRootIsDecorated|bool

$prototype=void setRowHidden ( int row, const QModelIndex & parent, bool hide )
$method=|void|setRowHidden|int,const QModelIndex &,bool

$prototype=void setSortingEnabled ( bool enable )
$method=|void|setSortingEnabled|bool

$prototype=void setUniformRowHeights ( bool uniform )
$method=|void|setUniformRowHeights|bool

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototype=void sortByColumn ( int column, Qt::SortOrder order )
$method=|void|sortByColumn|int,Qt::SortOrder

$prototype=bool uniformRowHeights () const
$method=|bool|uniformRowHeights|

$prototype=bool wordWrap () const
$method=|bool|wordWrap|

$prototype=virtual void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$virtualMethod=|void|dataChanged|const QModelIndex &,const QModelIndex &

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void keyboardSearch ( const QString & search )
$virtualMethod=|void|keyboardSearch|const QString &

$prototype=virtual void reset ()
$virtualMethod=|void|reset|

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QTreeView::ScrollHint=QTreeView::EnsureVisible

$prototype=virtual void selectAll ()
$virtualMethod=|void|selectAll|

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

$prototype=void collapse ( const QModelIndex & index )
$method=|void|collapse|const QModelIndex &

$prototype=void collapseAll ()
$method=|void|collapseAll|

$prototype=void expand ( const QModelIndex & index )
$method=|void|expand|const QModelIndex &

$prototype=void expandAll ()
$method=|void|expandAll|

$prototype=void expandToDepth ( int depth )
$method=|void|expandToDepth|int

$prototype=void hideColumn ( int column )
$method=|void|hideColumn|int

$prototype=void resizeColumnToContents ( int column )
$method=|void|resizeColumnToContents|int

$prototype=void showColumn ( int column )
$method=|void|showColumn|int

$beginSignals
$signal=|collapsed(QModelIndex)
$signal=|expanded(QModelIndex)
$endSignals

#pragma ENDDUMP
