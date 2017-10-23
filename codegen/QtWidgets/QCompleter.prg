$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMVIEW
REQUEST QWIDGET
#endif

CLASS QCompleter INHERIT QObject

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QCompleter ( QObject * parent = 0 )
*/
$internalConstructor=|new1|QObject *=0

/*
QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
*/
$internalConstructor=|new2|QAbstractItemModel *,QObject *=0

/*
QCompleter ( const QStringList & list, QObject * parent = 0 )
*/
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

/*
~QCompleter()
*/
$deleteMethod

/*
Qt::CaseSensitivity caseSensitivity () const
*/
$method=|Qt::CaseSensitivity|caseSensitivity|

/*
int completionColumn () const
*/
$method=|int|completionColumn|

/*
int completionCount () const
*/
$method=|int|completionCount|

/*
CompletionMode completionMode () const
*/
$method=|QCompleter::CompletionMode|completionMode|

/*
QAbstractItemModel * completionModel () const
*/
$method=|QAbstractItemModel *|completionModel|

/*
QString completionPrefix () const
*/
$method=|QString|completionPrefix|

/*
int completionRole () const
*/
$method=|int|completionRole|

/*
QString currentCompletion () const
*/
$method=|QString|currentCompletion|

/*
QModelIndex currentIndex () const
*/
$method=|QModelIndex|currentIndex|

/*
int currentRow () const
*/
$method=|int|currentRow|

/*
int maxVisibleItems () const
*/
$method=|int|maxVisibleItems|

/*
QAbstractItemModel * model () const
*/
$method=|QAbstractItemModel *|model|

/*
ModelSorting modelSorting () const
*/
$method=|QCompleter::ModelSorting|modelSorting|

/*
virtual QString pathFromIndex ( const QModelIndex & index ) const
*/
$method=|QString|pathFromIndex|const QModelIndex &

/*
QAbstractItemView * popup () const
*/
$method=|QAbstractItemView *|popup|

/*
void setCaseSensitivity ( Qt::CaseSensitivity caseSensitivity )
*/
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

/*
void setCompletionColumn ( int column )
*/
$method=|void|setCompletionColumn|int

/*
void setCompletionMode ( CompletionMode mode )
*/
$method=|void|setCompletionMode|QCompleter::CompletionMode

/*
void setCompletionRole ( int role )
*/
$method=|void|setCompletionRole|int

/*
bool setCurrentRow ( int row )
*/
$method=|bool|setCurrentRow|int

/*
void setMaxVisibleItems ( int maxItems )
*/
$method=|void|setMaxVisibleItems|int

/*
void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
void setModelSorting ( ModelSorting sorting )
*/
$method=|void|setModelSorting|QCompleter::ModelSorting

/*
void setPopup ( QAbstractItemView * popup )
*/
$method=|void|setPopup|QAbstractItemView *

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
virtual QStringList splitPath ( const QString & path ) const
*/
$method=|QStringList|splitPath|const QString &

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

/*
bool wrapAround () const
*/
$method=|bool|wrapAround|

/*
void complete ( const QRect & rect = QRect() )
*/
$method=|void|complete|const QRect &=QRect()

/*
void setCompletionPrefix ( const QString & prefix )
*/
$method=|void|setCompletionPrefix|const QString &

/*
void setWrapAround ( bool wrap )
*/
$method=|void|setWrapAround|bool

/*
void setFilterMode(Qt::MatchFlags filterMode)
*/
$method=5,2,0|void|setFilterMode|Qt::MatchFlags

/*
Qt::MatchFlags filterMode() const
*/
$method=5,2,0|Qt::MatchFlags|filterMode|

#pragma ENDDUMP
