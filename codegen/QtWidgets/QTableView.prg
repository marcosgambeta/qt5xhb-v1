%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemView

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QHeaderView>

$prototype=explicit QTableView(QWidget *parent = nullptr)
$constructor=|new|QWidget *=0

$prototype=QTableView(QTableViewPrivate &, QWidget *parent) [protected]

$prototype=~QTableView()
$deleteMethod

%%
%% Q_PROPERTY(bool showGrid READ showGrid WRITE setShowGrid)
%%

$prototype=bool showGrid() const
$method=|bool|showGrid|

$prototype=void setShowGrid(bool show) [slot]
$method=|void|setShowGrid|bool

%%
%% Q_PROPERTY(Qt::PenStyle gridStyle READ gridStyle WRITE setGridStyle)
%%

$prototype=Qt::PenStyle gridStyle() const
$method=|Qt::PenStyle|gridStyle|

$prototype=void setGridStyle(Qt::PenStyle style)
$method=|void|setGridStyle|Qt::PenStyle

%%
%% Q_PROPERTY(bool sortingEnabled READ isSortingEnabled WRITE setSortingEnabled)
%%

$prototype=bool isSortingEnabled() const
$method=|bool|isSortingEnabled|

$prototype=void setSortingEnabled(bool enable)
$method=|void|setSortingEnabled|bool

%%
%% Q_PROPERTY(bool wordWrap READ wordWrap WRITE setWordWrap)
%%

$prototype=bool wordWrap() const
$method=|bool|wordWrap|

$prototype=void setWordWrap(bool on)
$method=|void|setWordWrap|bool

%% #if QT_CONFIG(abstractbutton)
%% Q_PROPERTY(bool cornerButtonEnabled READ isCornerButtonEnabled WRITE setCornerButtonEnabled)
%% #endif

%% #if QT_CONFIG(abstractbutton)

$prototype=bool isCornerButtonEnabled() const
$method=|bool|isCornerButtonEnabled|

$prototype=void setCornerButtonEnabled(bool enable)
$method=|void|setCornerButtonEnabled|bool

%% #endif

%%
%%
%%

$prototype=void setModel(QAbstractItemModel *model) override
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=void setRootIndex(const QModelIndex &index) override
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=void setSelectionModel(QItemSelectionModel *selectionModel) override
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=void doItemsLayout() override
%% TODO: ausente na documentacao do Qt

$prototype=QHeaderView *horizontalHeader() const
$method=|QHeaderView *|horizontalHeader|

$prototype=QHeaderView *verticalHeader() const
$method=|QHeaderView *|verticalHeader|

$prototype=void setHorizontalHeader(QHeaderView *header)
$method=|void|setHorizontalHeader|QHeaderView *

$prototype=void setVerticalHeader(QHeaderView *header)
$method=|void|setVerticalHeader|QHeaderView *

$prototype=int rowViewportPosition(int row) const
$method=|int|rowViewportPosition|int

$prototype=int rowAt(int y) const
$method=|int|rowAt|int

$prototype=void setRowHeight(int row, int height)
$method=|void|setRowHeight|int,int

$prototype=int rowHeight(int row) const
$method=|int|rowHeight|int

$prototype=int columnViewportPosition(int column) const
$method=|int|columnViewportPosition|int

$prototype=int columnAt(int x) const
$method=|int|columnAt|int

$prototype=void setColumnWidth(int column, int width)
$method=|void|setColumnWidth|int,int

$prototype=int columnWidth(int column) const
$method=|int|columnWidth|int

$prototype=bool isRowHidden(int row) const
$method=|bool|isRowHidden|int

$prototype=void setRowHidden(int row, bool hide)
$method=|void|setRowHidden|int,bool

$prototype=bool isColumnHidden(int column) const
$method=|bool|isColumnHidden|int

$prototype=void setColumnHidden(int column, bool hide)
$method=|void|setColumnHidden|int,bool

$prototype=QRect visualRect(const QModelIndex &index) const override
void scrollTo(const QModelIndex &index, ScrollHint hint = EnsureVisible) override

$prototype=QModelIndex indexAt(const QPoint &p) const override
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=void setSpan(int row, int column, int rowSpan, int columnSpan)
$method=|void|setSpan|int,int,int,int

$prototype=int rowSpan(int row, int column) const
$method=|int|rowSpan|int,int

$prototype=int columnSpan(int row, int column) const
$method=|int|columnSpan|int,int

$prototype=void clearSpans()
$method=|void|clearSpans|

$prototype=void sortByColumn(int column, Qt::SortOrder order)
$method=|void|sortByColumn|int,Qt::SortOrder

$prototype=void selectRow(int row) [slot]
$method=|void|selectRow|int

$prototype=void selectColumn(int column) [slot]
$method=|void|selectColumn|int

$prototype=void hideRow(int row) [slot]
$method=|void|hideRow|int

$prototype=void hideColumn(int column) [slot]
$method=|void|hideColumn|int

$prototype=void showRow(int row) [slot]
$method=|void|showRow|int

$prototype=void showColumn(int column) [slot]
$method=|void|showColumn|int

$prototype=void resizeRowToContents(int row) [slot]
$method=|void|resizeRowToContents|int

$prototype=void resizeRowsToContents() [slot]
$method=|void|resizeRowsToContents|

$prototype=void resizeColumnToContents(int column) [slot]
$method=|void|resizeColumnToContents|int

$prototype=void resizeColumnsToContents() [slot]
$method=|void|resizeColumnsToContents|

$prototype=void sortByColumn(int column) [slot]
%% TODO: ausente na documentacao do Qt

$prototype=void rowMoved(int row, int oldIndex, int newIndex) [slot] [protected]

$prototype=void columnMoved(int column, int oldIndex, int newIndex) [slot] [protected]

$prototype=void rowResized(int row, int oldHeight, int newHeight) [slot] [protected]

$prototype=void columnResized(int column, int oldWidth, int newWidth) [slot] [protected]

$prototype=void rowCountChanged(int oldCount, int newCount) [slot] [protected]

$prototype=void columnCountChanged(int oldCount, int newCount) [slot] [protected]

$prototype=void scrollContentsBy(int dx, int dy) override [protected]

$prototype=QStyleOptionViewItem viewOptions() const override [protected]

$prototype=void paintEvent(QPaintEvent *e) override [protected]

$prototype=void timerEvent(QTimerEvent *event) override [protected]

$prototype=int horizontalOffset() const override [protected]

$prototype=int verticalOffset() const override [protected]

$prototype=QModelIndex moveCursor(CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override [protected]

$prototype=void setSelection(const QRect &rect, QItemSelectionModel::SelectionFlags command) override [protected]

$prototype=QRegion visualRegionForSelection(const QItemSelection &selection) const override [protected]

$prototype=QModelIndexList selectedIndexes() const override [protected]

$prototype=void updateGeometries() override [protected]

$prototype=QSize viewportSizeHint() const override [protected]

$prototype=int sizeHintForRow(int row) const override [protected]

$prototype=int sizeHintForColumn(int column) const override [protected]

$prototype=void verticalScrollbarAction(int action) override [protected]

$prototype=void horizontalScrollbarAction(int action) override [protected]

$prototype=bool isIndexHidden(const QModelIndex &index) const override [protected]

$prototype=void selectionChanged(const QItemSelection &selected, const QItemSelection &deselected) override [protected]

$prototype=void currentChanged(const QModelIndex &current, const QModelIndex &previous) override [protected]

$prototype=int visualIndex(const QModelIndex &index) const [private]

#pragma ENDDUMP
