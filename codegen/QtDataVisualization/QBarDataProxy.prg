%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractDataProxy

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QBar3DSeries>

using namespace QtDataVisualization;

$prototype=explicit QBarDataProxy(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=explicit QBarDataProxy(QBarDataProxyPrivate *d, QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QBarDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(int rowCount READ rowCount NOTIFY rowCountChanged)
%%

$prototype=int rowCount() const
$method=|int|rowCount|

%%
%% Q_PROPERTY(QStringList rowLabels READ rowLabels WRITE setRowLabels NOTIFY rowLabelsChanged)
%%

$prototype=QStringList rowLabels() const
$method=|QStringList|rowLabels|

$prototype=void setRowLabels(const QStringList &labels)
$method=|void|setRowLabels|const QStringList &

%%
%% Q_PROPERTY(QStringList columnLabels READ columnLabels WRITE setColumnLabels NOTIFY columnLabelsChanged)
%%

$prototype=QStringList columnLabels() const
$method=|QStringList|columnLabels|

$prototype=void setColumnLabels(const QStringList &labels)
$method=|void|setColumnLabels|const QStringList &

%%
%% Q_PROPERTY(QBar3DSeries *series READ series NOTIFY seriesChanged)
%%

$prototype=QBar3DSeries *series() const
$method=|QBar3DSeries *|series|

%%
%%
%%

%% TODO: implementar
%% namespace QtDataVisualization {
%% typedef QVector<QBarDataItem> QBarDataRow;
%% typedef QList<QBarDataRow *> QBarDataArray;
%% }

$prototype=const QBarDataArray *array() const
%% $method=|const QBarDataArray *|array|

$prototype=const QBarDataRow *rowAt(int rowIndex) const
%% $method=|const QBarDataRow *|rowAt|int

$prototype=const QBarDataItem *itemAt(int rowIndex, int columnIndex) const
$internalMethod=|const QBarDataItem *|itemAt,itemAt1|int,int

$prototype=const QBarDataItem *itemAt(const QPoint &position) const
$internalMethod=|const QBarDataItem *|itemAt,itemAt2|const QPoint &

//[1]const QBarDataItem *itemAt(int rowIndex, int columnIndex) const
//[2]const QBarDataItem *itemAt(const QPoint &position) const

HB_FUNC_STATIC( QBARDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBarDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QBarDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototype=void resetArray()
%% $method=|void|resetArray,resetArray1|

$prototype=void resetArray(QBarDataArray *newArray)
%% $method=|void|resetArray,resetArray2|QBarDataArray *

$prototype=void resetArray(QBarDataArray *newArray, const QStringList &rowLabels, const QStringList &columnLabels)
%% $method=|void|resetArray,resetArray3|QBarDataArray *,const QStringList &,const QStringList &

//[1]void resetArray()
//[2]void resetArray(QBarDataArray *newArray)
//[3]void resetArray(QBarDataArray *newArray, const QStringList &rowLabels, const QStringList &columnLabels)

HB_FUNC_STATIC( QBARDATAPROXY_RESETARRAY )
{
%%  if( ISNUMPAR(0) )
%%  {
%%    QBarDataProxy_resetArray1();
%%  }
%%  else if( ISNUMPAR(1) && ISQBARDATAARRAY(1) )
%%  {
%%    QBarDataProxy_resetArray2();
%%  }
%%  else if( ISNUMPAR(3) && ISQBARDATAARRAY(1) && ISARRAY(2) && ISARRAY(3) )
%%  {
%%    QBarDataProxy_resetArray3();
%%  }
%%  else
%%  {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=resetArray

$prototype=void setRow(int rowIndex, QBarDataRow *row)
%% $method=|void|setRow,setRow1|int,QBarDataRow *

$prototype=void setRow(int rowIndex, QBarDataRow *row, const QString &label)
%% $method=|void|setRow,setRow2|int,QBarDataRow *,const QString &

//[1]void setRow(int rowIndex, QBarDataRow *row)
//[2]void setRow(int rowIndex, QBarDataRow *row, const QString &label)

HB_FUNC_STATIC( QBARDATAPROXY_SETROW )
{
%%  if( ISNUMPAR(2) && ISNUM(1) && ISQBARDATAROW(2) )
%%  {
%%    QBarDataProxy_setRow1();
%%  }
%%  else if( ISNUMPAR(3) && ISNUM(1) && ISQBARDATAROW(2) && ISCHAR(3) )
%%  {
%%    QBarDataProxy_setRow2();
%%  }
%%  else
%%  {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=setRow

$prototype=void setRows(int rowIndex, const QBarDataArray &rows)
%% $method=|void|setRows,setRows1|int,const QBarDataArray &

$prototype=void setRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
%% $method=|void|setRows,setRows2|int,const QBarDataArray &,const QStringList &

//[1]void setRows(int rowIndex, const QBarDataArray &rows)
//[2]void setRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)

HB_FUNC_STATIC( QBARDATAPROXY_SETROWS )
{
%%  if( ISNUMPAR(2) && ISNUM(1) && ISQBARDATAARRAY(2) )
%%  {
%%    QBarDataProxy_setRows1();
%%  }
%%  else if( ISNUMPAR(3) && ISNUM(1) && ISQBARDATAARRAY(2) && ISARRAY(3) )
%%  {
%%    QBarDataProxy_setRows2();
%%  }
%%  else
%%  {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=setRows

$prototype=void setItem(int rowIndex, int columnIndex, const QBarDataItem &item)
$internalMethod=|void|setItem,setItem1|int,int,const QBarDataItem &

$prototype=void setItem(const QPoint &position, const QBarDataItem &item)
$internalMethod=|void|setItem,setItem2|const QPoint &,const QBarDataItem &

//[1]void setItem(int rowIndex, int columnIndex, const QBarDataItem &item)
//[2]void setItem(const QPoint &position, const QBarDataItem &item)

HB_FUNC_STATIC( QBARDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBARDATAITEM(3) )
  {
    QBarDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQBARDATAITEM(2) )
  {
    QBarDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setItem

$prototype=int addRow(QBarDataRow *row)
%% $method=|int|addRow,addRow1|QBarDataRow *

$prototype=int addRow(QBarDataRow *row, const QString &label)
%% $method=|int|addRow,addRow2|QBarDataRow *,const QString &

//[1]int addRow(QBarDataRow *row)
//[2]int addRow(QBarDataRow *row, const QString &label)

HB_FUNC_STATIC( QBARDATAPROXY_ADDROW )
{
%%  if( ISNUMPAR(1) && ISQBARDATAROW(1) )
%%  {
%%    QBarDataProxy_addRow1();
%%  }
%%  else if( ISNUMPAR(2) && ISQBARDATAROW(1) && ISCHAR(2) )
%%  {
%%    QBarDataProxy_addRow2();
%%  }
%%  else
%%  {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=addRow

$prototype=int addRows(const QBarDataArray &rows)
%% $method=|int|addRows,addRows1|const QBarDataArray &

$prototype=int addRows(const QBarDataArray &rows, const QStringList &labels)
%% $method=|int|addRows,addRows2|const QBarDataArray &,const QStringList &

//[1]int addRows(const QBarDataArray &rows)
//[2]int addRows(const QBarDataArray &rows, const QStringList &labels)

HB_FUNC_STATIC( QBARDATAPROXY_ADDROWS )
{
%%  if( ISNUMPAR(1) && ISQBARDATAARRAY(1) )
%%  {
%%    QBarDataProxy_addRows1();
%%  }
%%  else if( ISNUMPAR(2) && ISQBARDATAARRAY(1) && ISARRAY(2) )
%%  {
%%    QBarDataProxy_addRows2();
%%  }
%%  else
%%  {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=addRows

$prototype=void insertRow(int rowIndex, QBarDataRow *row)
%% $method=|void|insertRow,insertRow1|int,QBarDataRow *

$prototype=void insertRow(int rowIndex, QBarDataRow *row, const QString &label)
%% $method=|void|insertRow,insertRow2|int,QBarDataRow *,const QString &

//[1]void insertRow(int rowIndex, QBarDataRow *row)
//[2]void insertRow(int rowIndex, QBarDataRow *row, const QString &label)

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROW )
{
%%  if( ISNUMPAR(2) && ISNUM(1) && ISQBARDATAROW(2) )
%%  {
%%    QBarDataProxy_insertRow1();
%%  }
%%  else if( ISNUMPAR(3) && ISNUM(1) && ISQBARDATAROW(2) && ISCHAR(3) )
%%  {
%%    QBarDataProxy_insertRow2();
%%  }
%%  else
%%  {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=insertRow

$prototype=void insertRows(int rowIndex, const QBarDataArray &rows)
%% $method=|void|insertRows,insertRows1|int,const QBarDataArray &

$prototype=void insertRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
%% $method=|void|insertRows,insertRows2|int,const QBarDataArray &,const QStringList &

//[1]void insertRows(int rowIndex, const QBarDataArray &rows)
//[2]void insertRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROWS )
{
%%  if( ISNUMPAR(1) && ISNUM(1) && ISQBARDATAARRAY(2) )
%%  {
%%    QBarDataProxy_insertRows1();
%%  }
%%  else if( ISNUMPAR(3) && ISNUM(1) && ISQBARDATAARRAY(2) && ISCHAR(3) )
%%  {
%%    QBarDataProxy_insertRows2();
%%  }
%%  else
%%  {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=insertRows

$prototype=void removeRows(int rowIndex, int removeCount, bool removeLabels = true)
$method=|void|removeRows|int,int,bool=true

$beginSignals
$signal=|arrayReset()
$signal=|columnLabelsChanged()
$signal=|itemChanged(int,int)
$signal=|rowCountChanged(int)
$signal=|rowLabelsChanged()
$signal=|rowsAdded(int,int)
$signal=|rowsChanged(int,int)
$signal=|rowsInserted(int,int)
$signal=|rowsRemoved(int,int)
$signal=|seriesChanged(QBar3DSeries*)
$endSignals

#pragma ENDDUMP
