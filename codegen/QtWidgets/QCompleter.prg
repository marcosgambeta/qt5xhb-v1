%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD caseSensitivity
   METHOD completionColumn
   METHOD completionCount
   METHOD completionMode
   METHOD completionModel
   METHOD completionPrefix
   METHOD completionRole
   METHOD currentCompletion
   METHOD currentIndex
   METHOD currentRow
   METHOD maxVisibleItems
   METHOD model
   METHOD modelSorting
   METHOD pathFromIndex
   METHOD popup
   METHOD setCaseSensitivity
   METHOD setCompletionColumn
   METHOD setCompletionMode
   METHOD setCompletionRole
   METHOD setCurrentRow
   METHOD setMaxVisibleItems
   METHOD setModel
   METHOD setModelSorting
   METHOD setPopup
   METHOD setWidget
   METHOD splitPath
   METHOD widget
   METHOD wrapAround
   METHOD complete
   METHOD setCompletionPrefix
   METHOD setWrapAround
   METHOD setFilterMode
   METHOD filterMode

   METHOD onActivated1
   METHOD onActivated2
   METHOD onHighlighted1
   METHOD onHighlighted2

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QAbstractItemView>

$prototype=QCompleter ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
$internalConstructor=|new2|QAbstractItemModel *,QObject *=0

$prototype=QCompleter ( const QStringList & list, QObject * parent = 0 )
$internalConstructor=|new3|const QStringList &,QObject *=0|#ifndef QT_NO_STRINGLISTMODEL

//[1]QCompleter ( QObject * parent = 0 )
//[2]QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
//[3]QCompleter ( const QStringList & list, QObject * parent = 0 )

HB_FUNC_STATIC( QCOMPLETER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QCompleter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new2();
  }
#ifndef QT_NO_STRINGLISTMODEL
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new3();
  }
#endif
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCompleter()
$deleteMethod

$prototype=Qt::CaseSensitivity caseSensitivity () const
$method=|Qt::CaseSensitivity|caseSensitivity|

$prototype=int completionColumn () const
$method=|int|completionColumn|

$prototype=int completionCount () const
$method=|int|completionCount|

$prototype=CompletionMode completionMode () const
$method=|QCompleter::CompletionMode|completionMode|

$prototype=QAbstractItemModel * completionModel () const
$method=|QAbstractItemModel *|completionModel|

$prototype=QString completionPrefix () const
$method=|QString|completionPrefix|

$prototype=int completionRole () const
$method=|int|completionRole|

$prototype=QString currentCompletion () const
$method=|QString|currentCompletion|

$prototype=QModelIndex currentIndex () const
$method=|QModelIndex|currentIndex|

$prototype=int currentRow () const
$method=|int|currentRow|

$prototype=int maxVisibleItems () const
$method=|int|maxVisibleItems|

$prototype=QAbstractItemModel * model () const
$method=|QAbstractItemModel *|model|

$prototype=ModelSorting modelSorting () const
$method=|QCompleter::ModelSorting|modelSorting|

$prototype=virtual QString pathFromIndex ( const QModelIndex & index ) const
$virtualMethod=|QString|pathFromIndex|const QModelIndex &

$prototype=QAbstractItemView * popup () const
$method=|QAbstractItemView *|popup|

$prototype=void setCaseSensitivity ( Qt::CaseSensitivity caseSensitivity )
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

$prototype=void setCompletionColumn ( int column )
$method=|void|setCompletionColumn|int

$prototype=void setCompletionMode ( CompletionMode mode )
$method=|void|setCompletionMode|QCompleter::CompletionMode

$prototype=void setCompletionRole ( int role )
$method=|void|setCompletionRole|int

$prototype=bool setCurrentRow ( int row )
$method=|bool|setCurrentRow|int

$prototype=void setMaxVisibleItems ( int maxItems )
$method=|void|setMaxVisibleItems|int

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=void setModelSorting ( ModelSorting sorting )
$method=|void|setModelSorting|QCompleter::ModelSorting

$prototype=void setPopup ( QAbstractItemView * popup )
$method=|void|setPopup|QAbstractItemView *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=virtual QStringList splitPath ( const QString & path ) const
$virtualMethod=|QStringList|splitPath|const QString &

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

$prototype=bool wrapAround () const
$method=|bool|wrapAround|

$prototype=void complete ( const QRect & rect = QRect() )
$method=|void|complete|const QRect &=QRect()

$prototype=void setCompletionPrefix ( const QString & prefix )
$method=|void|setCompletionPrefix|const QString &

$prototype=void setWrapAround ( bool wrap )
$method=|void|setWrapAround|bool

$prototype=void setFilterMode(Qt::MatchFlags filterMode)
$method=5,2,0|void|setFilterMode|Qt::MatchFlags

$prototype=Qt::MatchFlags filterMode() const
$method=5,2,0|Qt::MatchFlags|filterMode|

$beginSignals
$beginGroup
$signal=|activated(QString)
$signal=|activated(QModelIndex)
$endGroup
$beginGroup
$signal=|highlighted(QString)
$signal=|highlighted(QModelIndex)
$endGroup
$endSignals

#pragma ENDDUMP
