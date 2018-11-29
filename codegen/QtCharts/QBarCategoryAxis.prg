%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QBarCategoryAxis(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=QBarCategoryAxis(QBarCategoryAxisPrivate &d, QObject *parent = Q_NULLPTR) [protected]

$prototype=~QBarCategoryAxis()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QStringList categories READ categories WRITE setCategories NOTIFY categoriesChanged)
%%

$prototype=QStringList categories()
$method=5,7,0|QStringList|categories|

$prototype=void setCategories(const QStringList &categories)
$method=5,7,0|void|setCategories|const QStringList &

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=5,7,0|int|count|

%%
%% Q_PROPERTY(QString min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=QString min() const
$method=5,7,0|QString|min|

$prototype=void setMin(const QString &minCategory)
$method=5,7,0|void|setMin|const QString &

%%
%% Q_PROPERTY(QString max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=QString max() const
$method=5,7,0|QString|max|

$prototype=void setMax(const QString &maxCategory)
$method=5,7,0|void|setMax|const QString &

%%
%%
%%

$prototype=AxisType type() const
$method=5,7,0|QAbstractAxis::AxisType|type|

$prototype=void append(const QStringList &categories)
$internalMethod=5,7,0|void|append,append1|const QStringList &

$prototype=void append(const QString &category)
$internalMethod=5,7,0|void|append,append2|const QString &

//[1]void append(const QStringList &categories)
//[2]void append(const QString &category)

HB_FUNC_STATIC( QBARCATEGORYAXIS_APPEND )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBarCategoryAxis_append1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBarCategoryAxis_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=void remove(const QString &category)
$method=5,7,0|void|remove|const QString &

$prototype=void insert(int index, const QString &category)
$method=5,7,0|void|insert|int,const QString &

$prototype=void replace(const QString &oldCategory, const QString &newCategory)
$method=5,7,0|void|replace|const QString &,const QString &

$prototype=Q_INVOKABLE void clear()
$method=5,7,0|void|clear|

$prototype=QString at(int index) const
$method=5,7,0|QString|at|int

$prototype=void setRange(const QString &minCategory, const QString &maxCategory)
$method=5,7,0|void|setRange|const QString &,const QString &

$beginSignals
$signal=5,7,0|categoriesChanged()
$signal=5,7,0|countChanged()
$signal=5,7,0|maxChanged(QString)
$signal=5,7,0|minChanged(QString)
$signal=5,7,0|rangeChanged(QString,QString)
$endSignals

#pragma ENDDUMP
