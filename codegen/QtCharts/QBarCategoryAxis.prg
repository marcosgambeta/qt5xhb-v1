%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBarCategoryAxis INHERIT QAbstractAxis

   METHOD new
   METHOD delete

   METHOD append
   METHOD at
   METHOD categories
   METHOD clear
   METHOD count
   METHOD insert
   METHOD max
   METHOD min
   METHOD remove
   METHOD replace
   METHOD setCategories
   METHOD setMax
   METHOD setMin
   METHOD setRange
   METHOD type

   METHOD onCategoriesChanged
   METHOD onCountChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onRangeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QBarCategoryAxis(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=QBarCategoryAxis(QBarCategoryAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QBarCategoryAxis()
$deleteMethod

%%
%% Q_PROPERTY(QStringList categories READ categories WRITE setCategories NOTIFY categoriesChanged)
%%

$prototype=QStringList categories()
$method=|QStringList|categories|

$prototype=void setCategories(const QStringList &categories)
$method=|void|setCategories|const QStringList &

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(QString min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=QString min() const
$method=|QString|min|

$prototype=void setMin(const QString &minCategory)
$method=|void|setMin|const QString &

%%
%% Q_PROPERTY(QString max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=QString max() const
$method=|QString|max|

$prototype=void setMax(const QString &maxCategory)
$method=|void|setMax|const QString &

%%
%%
%%

$prototype=AxisType type() const
$method=|QAbstractAxis::AxisType|type|

$prototype=void append(const QStringList &categories)
$internalMethod=|void|append,append1|const QStringList &

$prototype=void append(const QString &category)
$internalMethod=|void|append,append2|const QString &

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

$prototype=void remove(const QString &category)
$method=|void|remove|const QString &

$prototype=void insert(int index, const QString &category)
$method=|void|insert|int,const QString &

$prototype=void replace(const QString &oldCategory, const QString &newCategory)
$method=|void|replace|const QString &,const QString &

$prototype=Q_INVOKABLE void clear()
$method=|void|clear|

$prototype=QString at(int index) const
$method=|QString|at|int

$prototype=void setRange(const QString &minCategory, const QString &maxCategory)
$method=|void|setRange|const QString &,const QString &

#pragma ENDDUMP
