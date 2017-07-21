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
void QComboBox_addItem1 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    obj->addItem ( PQSTRING(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_addItem2 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    obj->addItem ( par1, PQSTRING(2), par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QCOMBOBOX_FINDDATA )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) Qt::MatchExactly | Qt::MatchCaseSensitive : hb_parni(3);
      RINT( obj->findData ( *PQVARIANT(1), OPINT(2,Qt::UserRole), (Qt::MatchFlags) par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int findText ( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_FINDTEXT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::MatchExactly | Qt::MatchCaseSensitive : hb_parni(2);
      RINT( obj->findText ( PQSTRING(1), (Qt::MatchFlags) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasFrame () const
*/
$method=|bool|hasFrame|

/*
virtual void hidePopup ()
*/
HB_FUNC_STATIC( QCOMBOBOX_HIDEPOPUP )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->hidePopup ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ICONSIZE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_insertItem1 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    obj->insertItem ( PINT(1), PQSTRING(2), par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_insertItem2 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    obj->insertItem ( PINT(1), par2, PQSTRING(3), par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QCOMBOBOX_INSERTITEMS )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISARRAY(2) )
    {
      obj->insertItems ( PINT(1), PQSTRINGLIST(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
InsertPolicy insertPolicy () const
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTPOLICY )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->insertPolicy () );
  }
}

/*
void insertSeparator ( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTSEPARATOR )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->insertSeparator ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEditable () const
*/
$method=|bool|isEditable|

/*
QVariant itemData ( int index, int role = Qt::UserRole ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDATA )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->itemData ( PINT(1), OPINT(2,Qt::UserRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDELEGATE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
QIcon itemIcon ( int index ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMICON )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QIcon * ptr = new QIcon( obj->itemIcon ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString itemText ( int index ) const
*/
$method=|QString|itemText|int

/*
QLineEdit * lineEdit () const
*/
HB_FUNC_STATIC( QCOMBOBOX_LINEEDIT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineEdit * ptr = obj->lineEdit ();
    _qt5xhb_createReturnClass ( ptr, "QLINEEDIT" );
  }
}

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
HB_FUNC_STATIC( QCOMBOBOX_SETITEMICON )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQICON(2)||ISCHAR(2)||ISNIL(2)) )
    {
      QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
      obj->setItemIcon ( PINT(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
