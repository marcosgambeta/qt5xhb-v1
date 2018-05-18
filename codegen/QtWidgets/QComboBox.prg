%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMPLETER
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QABSTRACTITEMDELEGATE
REQUEST QICON
REQUEST QLINEEDIT
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
REQUEST QVALIDATOR
REQUEST QABSTRACTITEMVIEW
#endif

$beginClassFrom=QWidget

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addItems
   METHOD completer
   METHOD count
   METHOD currentIndex
   METHOD currentText
   METHOD duplicatesEnabled
   METHOD findData
   METHOD findText
   METHOD hasFrame
   METHOD hidePopup
   METHOD iconSize
   METHOD insertItem
   METHOD insertItems
   METHOD insertPolicy
   METHOD insertSeparator
   METHOD isEditable
   METHOD itemData
   METHOD itemDelegate
   METHOD itemIcon
   METHOD itemText
   METHOD lineEdit
   METHOD maxCount
   METHOD maxVisibleItems
   METHOD minimumContentsLength
   METHOD model
   METHOD modelColumn
   METHOD removeItem
   METHOD rootModelIndex
   METHOD setCompleter
   METHOD setDuplicatesEnabled
   METHOD setEditable
   METHOD setFrame
   METHOD setIconSize
   METHOD setInsertPolicy
   METHOD setItemData
   METHOD setItemDelegate
   METHOD setItemIcon
   METHOD setItemText
   METHOD setLineEdit
   METHOD setMaxCount
   METHOD setMaxVisibleItems
   METHOD setMinimumContentsLength
   METHOD setModel
   METHOD setModelColumn
   METHOD setRootModelIndex
   METHOD setSizeAdjustPolicy
   METHOD setValidator
   METHOD setView
   METHOD showPopup
   METHOD sizeAdjustPolicy
   METHOD validator
   METHOD view
   METHOD event
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD clearEditText
   METHOD setCurrentIndex
   METHOD setEditText

   METHOD onActivated1
   METHOD onActivated2
   METHOD onCurrentIndexChanged1
   METHOD onCurrentIndexChanged2
   METHOD onEditTextChanged
   METHOD onHighlighted1
   METHOD onHighlighted2

   // for compatibility
   METHOD onActivated            // = onActivated1
   METHOD onActivatedC           // = onActivated2
   METHOD onCurrentIndexChanged  // = onCurrentIndexChanged1
   METHOD onCurrentIndexChangedC // = onCurrentIndexChanged2
   METHOD onHighlighted          // = onHighlighted1
   METHOD onHighlightedC         // = onHighlighted2

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QCompleter>
#include <QLineEdit>
#include <QAbstractItemView>

$prototype=QComboBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addItem ( const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|addItem,addItem1|const QString &,const QVariant &=QVariant()

$prototype=void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|addItem,addItem2|const QIcon &,const QString &,const QVariant &=QVariant()

//[1]void addItem ( const QString & text, const QVariant & userData = QVariant() )
//[2]void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )

HB_FUNC_STATIC( QCOMBOBOX_ADDITEM )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
  {
    QComboBox_addItem1();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addItems ( const QStringList & texts )
$method=|void|addItems|const QStringList &

$prototype=QCompleter * completer () const
$method=|QCompleter *|completer|

$prototype=int count () const
$method=|int|count|

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=QString currentText () const
$method=|QString|currentText|

$prototype=bool duplicatesEnabled () const
$method=|bool|duplicatesEnabled|

$prototype=int findData ( const QVariant & data, int role = Qt::UserRole, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
$method=|int|findData|const QVariant &,int=Qt::UserRole,Qt::MatchFlags=Qt::MatchExactly OR Qt::MatchCaseSensitive

$prototype=int findText ( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
$method=|int|findText|const QString &,Qt::MatchFlags=Qt::MatchExactly OR Qt::MatchCaseSensitive

$prototype=bool hasFrame () const
$method=|bool|hasFrame|

$prototype=virtual void hidePopup ()
$virtualMethod=|void|hidePopup|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|insertItem,insertItem1|int,const QString &,const QVariant &=QVariant()

$prototype=void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|insertItem,insertItem2|int,const QIcon &,const QString &,const QVariant &=QVariant()

//[1]void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
//[2]void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )

HB_FUNC_STATIC( QCOMBOBOX_INSERTITEM )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_insertItem1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) && (ISQVARIANT(4)||ISNIL(4)) )
  {
    QComboBox_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void insertItems ( int index, const QStringList & list )
$method=|void|insertItems|int,const QStringList &

$prototype=InsertPolicy insertPolicy () const
$method=|QComboBox::InsertPolicy|insertPolicy|

$prototype=void insertSeparator ( int index )
$method=|void|insertSeparator|int

$prototype=bool isEditable () const
$method=|bool|isEditable|

$prototype=QVariant itemData ( int index, int role = Qt::UserRole ) const
$method=|QVariant|itemData|int,int=Qt::UserRole

$prototype=QAbstractItemDelegate * itemDelegate () const
$method=|QAbstractItemDelegate *|itemDelegate|

$prototype=QIcon itemIcon ( int index ) const
$method=|QIcon|itemIcon|int

$prototype=QString itemText ( int index ) const
$method=|QString|itemText|int

$prototype=QLineEdit * lineEdit () const
$method=|QLineEdit *|lineEdit|

$prototype=int maxCount () const
$method=|int|maxCount|

$prototype=int maxVisibleItems () const
$method=|int|maxVisibleItems|

$prototype=int minimumContentsLength () const
$method=|int|minimumContentsLength|

$prototype=QAbstractItemModel * model () const
$method=|QAbstractItemModel *|model|

$prototype=int modelColumn () const
$method=|int|modelColumn|

$prototype=void removeItem ( int index )
$method=|void|removeItem|int

$prototype=QModelIndex rootModelIndex () const
$method=|QModelIndex|rootModelIndex|

$prototype=void setCompleter ( QCompleter * completer )
$method=|void|setCompleter|QCompleter *

$prototype=void setDuplicatesEnabled ( bool enable )
$method=|void|setDuplicatesEnabled|bool

$prototype=void setEditable ( bool editable )
$method=|void|setEditable|bool

$prototype=void setFrame ( bool )
$method=|void|setFrame|bool

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=void setInsertPolicy ( InsertPolicy policy )
$method=|void|setInsertPolicy|QComboBox::InsertPolicy

$prototype=void setItemData ( int index, const QVariant & value, int role = Qt::UserRole )
$method=|void|setItemData|int,const QVariant &,int=Qt::UserRole

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=void setItemIcon ( int index, const QIcon & icon )
$method=|void|setItemIcon|int,const QIcon &

$prototype=void setItemText ( int index, const QString & text )
$method=|void|setItemText|int,const QString &

$prototype=void setLineEdit ( QLineEdit * edit )
$method=|void|setLineEdit|QLineEdit *

$prototype=void setMaxCount ( int max )
$method=|void|setMaxCount|int

$prototype=void setMaxVisibleItems ( int maxItems )
$method=|void|setMaxVisibleItems|int

$prototype=void setMinimumContentsLength ( int characters )
$method=|void|setMinimumContentsLength|int

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=void setModelColumn ( int visibleColumn )
$method=|void|setModelColumn|int

$prototype=void setRootModelIndex ( const QModelIndex & index )
$method=|void|setRootModelIndex|const QModelIndex &

$prototype=void setSizeAdjustPolicy ( SizeAdjustPolicy policy )
$method=|void|setSizeAdjustPolicy|QComboBox::SizeAdjustPolicy

$prototype=void setValidator ( const QValidator * validator )
$method=|void|setValidator|const QValidator *

$prototype=void setView ( QAbstractItemView * itemView )
$method=|void|setView|QAbstractItemView *

$prototype=virtual void showPopup ()
$virtualMethod=|void|showPopup|

$prototype=SizeAdjustPolicy sizeAdjustPolicy () const
$method=|QComboBox::SizeAdjustPolicy|sizeAdjustPolicy|

$prototype=const QValidator * validator () const
$method=|const QValidator *|validator|

$prototype=QAbstractItemView * view () const
$method=|QAbstractItemView *|view|

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void clear ()
$method=|void|clear|

$prototype=void clearEditText ()
$method=|void|clearEditText|

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=void setEditText ( const QString & text )
$method=|void|setEditText|const QString &

$beginSignals
$beginGroup
$signal=|activated(int)
$signal=|activated(QString)
$endGroup
$beginGroup
$signal=|currentIndexChanged(int)
$signal=|currentIndexChanged(QString)
$endGroup
$signal=|editTextChanged(QString)
$beginGroup
$signal=|highlighted(int)
$signal=|highlighted(QString)
$endGroup
$endSignals

// for compatibility

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED2 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED2 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED2 );
}

#pragma ENDDUMP
