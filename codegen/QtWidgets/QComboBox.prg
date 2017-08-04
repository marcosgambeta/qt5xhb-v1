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

CLASS QComboBox INHERIT QWidget

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

   METHOD onActivated
   METHOD onActivatedC
   METHOD onCurrentIndexChanged
   METHOD onCurrentIndexChangedC
   METHOD onEditTextChanged
   METHOD onHighlighted
   METHOD onHighlightedC

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QComboBox ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
void addItem ( const QString & text, const QVariant & userData = QVariant() )
*/
$internalMethod=|void|addItem,addItem1|const QString &,const QVariant &=QVariant()

/*
void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
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

/*
void addItems ( const QStringList & texts )
*/
$method=|void|addItems|const QStringList &

/*
QCompleter * completer () const
*/
$method=|QCompleter *|completer|

/*
int count () const
*/
$method=|int|count|

/*
int currentIndex () const
*/
$method=|int|currentIndex|

/*
QString currentText () const
*/
$method=|QString|currentText|

/*
bool duplicatesEnabled () const
*/
$method=|bool|duplicatesEnabled|

/*
int findData ( const QVariant & data, int role = Qt::UserRole, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
$method=|int|findData|const QVariant &,int=Qt::UserRole,Qt::MatchFlags=Qt::MatchExactly OR Qt::MatchCaseSensitive

/*
int findText ( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
$method=|int|findText|const QString &,Qt::MatchFlags=Qt::MatchExactly OR Qt::MatchCaseSensitive

/*
bool hasFrame () const
*/
$method=|bool|hasFrame|

/*
virtual void hidePopup ()
*/
$method=|void|hidePopup|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
*/
$internalMethod=|void|insertItem,insertItem1|int,const QString &,const QVariant &=QVariant()

/*
void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
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

/*
void insertItems ( int index, const QStringList & list )
*/
$method=|void|insertItems|int,const QStringList &

/*
InsertPolicy insertPolicy () const
*/
$method=|QComboBox::InsertPolicy|insertPolicy|

/*
void insertSeparator ( int index )
*/
$method=|void|insertSeparator|int

/*
bool isEditable () const
*/
$method=|bool|isEditable|

/*
QVariant itemData ( int index, int role = Qt::UserRole ) const
*/
$method=|QVariant|itemData|int,int=Qt::UserRole

/*
QAbstractItemDelegate * itemDelegate () const
*/
$method=|QAbstractItemDelegate *|itemDelegate|

/*
QIcon itemIcon ( int index ) const
*/
$method=|QIcon|itemIcon|int

/*
QString itemText ( int index ) const
*/
$method=|QString|itemText|int

/*
QLineEdit * lineEdit () const
*/
$method=|QLineEdit *|lineEdit|

/*
int maxCount () const
*/
$method=|int|maxCount|

/*
int maxVisibleItems () const
*/
$method=|int|maxVisibleItems|

/*
int minimumContentsLength () const
*/
$method=|int|minimumContentsLength|

/*
QAbstractItemModel * model () const
*/
$method=|QAbstractItemModel *|model|

/*
int modelColumn () const
*/
$method=|int|modelColumn|

/*
void removeItem ( int index )
*/
$method=|void|removeItem|int

/*
QModelIndex rootModelIndex () const
*/
$method=|QModelIndex|rootModelIndex|

/*
void setCompleter ( QCompleter * completer )
*/
$method=|void|setCompleter|QCompleter *

/*
void setDuplicatesEnabled ( bool enable )
*/
$method=|void|setDuplicatesEnabled|bool

/*
void setEditable ( bool editable )
*/
$method=|void|setEditable|bool

/*
void setFrame ( bool )
*/
$method=|void|setFrame|bool

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
void setInsertPolicy ( InsertPolicy policy )
*/
$method=|void|setInsertPolicy|QComboBox::InsertPolicy

/*
void setItemData ( int index, const QVariant & value, int role = Qt::UserRole )
*/
$method=|void|setItemData|int,const QVariant &,int=Qt::UserRole

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
void setItemIcon ( int index, const QIcon & icon )
*/
$method=|void|setItemIcon|int,const QIcon &

/*
void setItemText ( int index, const QString & text )
*/
$method=|void|setItemText|int,const QString &

/*
void setLineEdit ( QLineEdit * edit )
*/
$method=|void|setLineEdit|QLineEdit *

/*
void setMaxCount ( int max )
*/
$method=|void|setMaxCount|int

/*
void setMaxVisibleItems ( int maxItems )
*/
$method=|void|setMaxVisibleItems|int

/*
void setMinimumContentsLength ( int characters )
*/
$method=|void|setMinimumContentsLength|int

/*
void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
void setModelColumn ( int visibleColumn )
*/
$method=|void|setModelColumn|int

/*
void setRootModelIndex ( const QModelIndex & index )
*/
$method=|void|setRootModelIndex|const QModelIndex &

/*
void setSizeAdjustPolicy ( SizeAdjustPolicy policy )
*/
$method=|void|setSizeAdjustPolicy|QComboBox::SizeAdjustPolicy

/*
void setValidator ( const QValidator * validator )
*/
$method=|void|setValidator|const QValidator *

/*
void setView ( QAbstractItemView * itemView )
*/
$method=|void|setView|QAbstractItemView *

/*
virtual void showPopup ()
*/
$method=|void|showPopup|

/*
SizeAdjustPolicy sizeAdjustPolicy () const
*/
$method=|QComboBox::SizeAdjustPolicy|sizeAdjustPolicy|

/*
const QValidator * validator () const
*/
$method=|const QValidator *|validator|

/*
QAbstractItemView * view () const
*/
$method=|QAbstractItemView *|view|

/*
virtual bool event ( QEvent * event )
*/
$method=|bool|event|QEvent *

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void clear ()
*/
$method=|void|clear|

/*
void clearEditText ()
*/
$method=|void|clearEditText|

/*
void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
void setEditText ( const QString & text )
*/
$method=|void|setEditText|const QString &

#pragma ENDDUMP
